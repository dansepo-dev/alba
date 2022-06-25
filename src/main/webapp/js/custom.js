/**
 * by kim 2022-04-27 
 */
$(function() {

  $("#copy-alert").hide();
  showFilter();

  function showFilter() {
	var source_value = $('#sourceFilterSearchOption').val();
	if (source_value == "FILESERVER") {
	    $('#filter-fileserver').show();
	    $('#filter-teams').hide();
	    $('#filter-terra').hide();
	}
	else if (source_value == "TEAMS") {
	    $('#filter-fileserver').hide();
	    $('#filter-teams').show();
	    $('#filter-terra').hide();
	}
	else if (source_value == "TERRA") {
	    $('#filter-fileserver').hide();
	    $('#filter-teams').hide();
	    $('#filter-terra').show();
	}
	else {
	    $('#filter-fileserver').hide();
	    $('#filter-teams').hide();
	    $('#filter-terra').hide();		
	}
  };

  //右クリックでリンクコピー
  $(document).on("contextmenu", function(e) {
	if (e.target.nodeName != "CITE") {
	  return true;
	}
	var src = $(e.target).text();
    try {
      navigator.clipboard.writeText(src);
      $("#copy-alert").fadeTo(2000, 500).slideUp(500, function() {
        $("#copy-alert").slideUp(500);
      });
    }
    catch (error) {
      alert((error && error.message) || 'コピーに失敗しました');
    }

    return false;
  });

  //グループ表示
  $('#groupshow').change(function() {
    $('.body').toggle();
    $('.info').toggle();
    if ($('#groupshow').prop('checked')) {
      $('.site').addClass("text-truncate");
    }
    else {
      $('.site').removeClass("text-truncate");
    }
  });

  //オプションの情報ソース選択
  $('#sourceFilterSearchOption').change(function() {
    $("#fileserverFilterSearchOption").prop("selectedIndex", 0);
    $("#teamsFilterSearchOption").prop("selectedIndex", 0);
    $("#terraFilterSearchOption").prop("selectedIndex", 0);
    
    var v1 = $("#filter1").val();
    var v2 = $('#sourceFilterSearchOption').val();
    if ($('#sourceFilterSearchOption').val().length != 0) {
		$("#filter1").val(v1 + v2);
	}
	else {
		$("#filter1").val("");
	}
    
	showFilter();
 
  });

  //オプションのファイルサーバフィルタ選択
  $('#fileserverFilterSearchOption').change(function() {
    $("#sourceFilterSearchOption").prop("selectedIndex", 1);
    $("#teamsFilterSearchOption").prop("selectedIndex", 0);
    $("#terraFilterSearchOption").prop("selectedIndex", 0);
    
    var sv = $("#fileserverFilterSearchOption").val();
    if (sv != "") {
		$("#filter2").val(sv);
	}
	else {
		$("#filter2").val("");
	}
   
  });

  //オプションのTEAMSフィルタ選択
  $('#teamsFilterSearchOption').change(function() {
    $("#sourceFilterSearchOption").prop("selectedIndex", 2);
    $("#fileserverFilterSearchOption").prop("selectedIndex", 0);
    $("#terraFilterSearchOption").prop("selectedIndex", 0);
    
    //$("#filter2").val("label:" + $('#teamsFilterSearchOption').val());
    
    var sv = $("#teamsFilterSearchOption").val();
    if (sv != "") {
		$("#filter2").val(sv);
	}
	else {
		$("#filter2").val("");
	}
  });

  //オプションのTERRAフィルタ選択
  $('#terraFilterSearchOption').change(function() {
    $("#sourceFilterSearchOption").prop("selectedIndex", 3);
    $("#fileserverFilterSearchOption").prop("selectedIndex", 0);
    $("#teamsFilterSearchOption").prop("selectedIndex", 0);
 
    //$("#filter2").val("label:" + $('#terraFilterSearchOption').val());
 
    var sv = $("#terraFilterSearchOption").val();
    if (sv != "") {
		$("#filter2").val(sv);
	}
	else {
		$("#filter2").val("");
	}
  });

});

function doSearch1(x, v) {
  document.side_filter.common_filter.value = v;
  if (document.side_filter.ex_q.value.length != 0)
    document.side_filter.ex_q.value = "virtual_host:" + document.side_filter.ex_q.value;
  doSearch(x);
}

function doSearch2(x, v) {
  document.side_filter.source_filter.value = v;
  document.side_filter.ex_q.value = "virtual_host:" + v;
  doSearch(x);
}

function doSearch3(x, v) {
  document.side_filter.fileserver_filter.value = v;
  document.side_filter.ex_q.value = "virtual_host:FILESERVER";
  doSearch(x);
}

function doSearch4(x, v) {
  document.side_filter.teams_filter.value = v;
  document.side_filter.ex_q.value = "virtual_host:TEAMS";
  doSearch(x);
}

function doSearch5(x, v) {
  document.side_filter.terra_filter.value = v;
  document.side_filter.ex_q.value = "virtual_host:TERRA";
  doSearch(x);
}

function doSearch(x) {
    var params = new URLSearchParams(x);
    var param_str = params.toString();

    if (!param_str.endsWith("&"))
        param_str = param_str + "&";

    var formdata = new FormData(document.side_filter);
    var form_str = new URLSearchParams(formdata).toString();
  
    var param_arr = new URLSearchParams(param_str + form_str);
    console.log(param_str + form_str);
    
    var pure_url = removeDuplicatedParameter(param_arr);

    var url = new URL(document.location.href);
    document.location.replace(url.origin + url.pathname + "?" + pure_url);
  
}
  
//重複パラメータ除去
function removeDuplicatedParameter(param_arr) {
    var params = new URLSearchParams("");
    param_arr.forEach(
		function(value, key) {
			if ( value.length != 0 ) {
				params.set(key, value);
			}
		}
	);
    return params.toString();
}
