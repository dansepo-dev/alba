/**
 * by kim 2022-04-27 
 */
$(function() {

  $("#copy-alert").hide();
  $('#filter-fileserver').hide();
  $('#filter-teams').hide();
  $('#filter-terra').hide();		

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

  //検索submit時、邪魔しないよう
  //TODO 方式がよろしくない
  labelControl = function() {
    $("#sourceFilterSearchOption").val("");
    $("#fileserverFilterSearchOption").val("");
    $("#teamsFilterSearchOption").val("");
    $("#terraFilterSearchOption").val("");
  };

  //オプションの情報ソース選択
  $('#sourceFilterSearchOption').change(function() {
    $("#fileserverFilterSearchOption").prop("selectedIndex", 0);
    $("#teamsFilterSearchOption").prop("selectedIndex", 0);
    $("#terraFilterSearchOption").prop("selectedIndex", 0);
    $("#filter1").val("virtual_host:" + $('#sourceFilterSearchOption').val());

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
 
  });

  //オプションのファイルサーバフィルタ選択
  $('#fileserverFilterSearchOption').change(function() {
    $("#sourceFilterSearchOption").prop("selectedIndex", 1);
    $("#teamsFilterSearchOption").prop("selectedIndex", 0);
    $("#terraFilterSearchOption").prop("selectedIndex", 0);
    var sv = $("#fileserverFilterSearchOption").val();
    if (sv != "") {
		$("#filter2").val("label:" + sv);
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
    $("#filter2").val("label:" + $('#teamsFilterSearchOption').val());
    var sv = $("#teamsFilterSearchOption").val();
    if (sv != "") {
		$("#filter2").val("label:" + sv);
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
    $("#filter2").val("label:" + $('#terraFilterSearchOption').val());
    var sv = $("#terraFilterSearchOption").val();
    if (sv != "") {
		$("#filter2").val("label:" + sv);
	}
	else {
		$("#filter2").val("");
	}
  });

  //TEAMS用チャンネル名取得
  getChannelName = function(url){
	var data = getDecodedJson(rul);
    return data.channelName;
  }

  //TEAMS用チーム名取得
  getTeamName = function(url){
	var data = getDecodedJson(rul);
    return data.teamName;
  }

  getDecodedJson = function(url) {
    var regex = /[?&]([^=#]+)=([^&#]*)/g;
    var params = {};
    var match;
    while (match = regex.exec(url)) {
      params[match[1]] = decodeURIComponent(match[2]);
    }
  }
});
