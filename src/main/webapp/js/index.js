$(function() {
  $("#contentQuery").focus();

  var $searchButton = $("#searchButton"),
      contextPath = $("#contextPath").val();

  $("#searchForm").on("submit", function(e) {
	// by kim 
	var x1 = $("#filter1").val();
	if (x1 == "virtual_host:")
	  $("#filter1").val("");
	
    $searchButton.attr("disabled", true);
    setTimeout(function() {
      $searchButton.attr("disabled", false);
    }, 3000);
    return true;
  });

  $(document).on("click touchend", function(e) {
    if (!$(e.target).closest("#searchOptions, #searchOptionsButton").length) {
      $("#searchOptions").removeClass("active");
    }
  });

  $("[data-toggle='control-options']").click(function(e) {
    e.preventDefault();
    var target = $(this).attr("data-target") || $(this).attr("href");
    if (target) {
      $(target).toggleClass("active");
    }
  });

  $("#searchOptionsClearButton").on("click", function(e) {
    $("#labelTypeSearchOption").prop("selectedIndex", -1);
    $("#langSearchOption").prop("selectedIndex", 0);
    $("#sortSearchOption").prop("selectedIndex", 0);
    $("#numSearchOption").prop("selectedIndex", 0);
// by kim 202205xx
    $("#commonFilterSearchOption").prop("selectedIndex", 0);
    $("#sourceFilterSearchOption").prop("selectedIndex", 0);
    $("#fileserverFilterSearchOption").prop("selectedIndex", 0);
    $("#teamsFilterSearchOption").prop("selectedIndex", 0);
    $("#terraFilterSearchOption").prop("selectedIndex", 0);

    return false;
  });

  if (typeof $.fn.suggestor === "function") {
    $("#contentQuery").suggestor({
      ajaxinfo: {
        url: contextPath + "/suggest",
        fn: "_default,content,title",
        num: 10,
        lang: $("#langSearchOption").val()
      },
      boxCssInfo: {
        border: "1px solid rgba(82, 168, 236, 0.5)",
        "-webkit-box-shadow":
          "0 1px 1px 0px rgba(0, 0, 0, 0.1), 0 3px 2px 0px rgba(82, 168, 236, 0.2)",
        "-moz-box-shadow":
          "0 1px 1px 0px rgba(0, 0, 0, 0.1), 0 3px 2px 0px rgba(82, 168, 236, 0.2)",
        "box-shadow":
          "0 1px 1px 0px rgba(0, 0, 0, 0.1), 0 3px 2px 0px rgba(82, 168, 236, 0.2)",
        "background-color": "#fff",
        "z-index": "10000"
      },
      listSelectedCssInfo: {
        "background-color": "rgba(82, 168, 236, 0.1)"
      },
      listDeselectedCssInfo: {
        "background-color": "#ffffff"
      },
      minterm: 1,
      adjustWidthVal: 11,
      searchForm: $("#searchForm")
    });
  }
});
