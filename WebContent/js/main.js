$(function () {
  // advertisement
  $(".owl-carousel").owlCarousel({
    loop: true,
    margin: 0,
    items: 1,
    autoplay: true,
    smartSpeed: 400,
  });

  // Search Form
  $(".search").click(function (e) {
    e.preventDefault();
    $(this).toggleClass("active");
    $(".search_open").toggleClass("active");
    $(".search_open input[type=text]").focus();
  });

  // Mobile GNB
  $("#header .tab").click(function (e) {
    e.preventDefault();
    $(".wrapper").addClass("ismenu");
    $("#header").addClass("ismenu");
    $("#header .tab").addClass("active");
    $(".ctg_open").addClass("active");
    $("body, html").addClass("prevent");
    $(".ctg_open .login li").first().find("a").focus();
    $(".dim").fadeIn(300);
  });
  $(".dim").click(function () {
    $(".wrapper").removeClass("ismenu");
    $("#header").removeClass("ismenu");
    $("#header .tab").removeClass("active");
    $(".ctg_open").removeClass("active");
    $("body, html").removeClass("prevent");
    $(".dim").fadeOut(300);
  });

  // Slim Scroll
  $(".ctg_open_inner").slimscroll({
    height: "100%",
  });

  //review
  /* common element form*/
  var $fields = $(".review-field"),
    $input = $fields.find("input"),
    $select = $fields.find("select"),
    $textarea = $fields.find("textarea");

  $input
    .add($select)
    .add($textarea)
    .click(function () {
      $fields.removeClass("active");
      $(this).closest(".review-field").addClass("active");
    });

  // $(".submit").click(function () {
  //   if (".input" == "") {
  //     alert("쓰지 않은 칸이 있습니다!");
  //   } else if (".select" > 2 || ".select" < 0) {
  //     alert("피부타입을 선택해주세요!");
  //   }
  // });
});
