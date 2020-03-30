// window.onload = function() {
//   $("#keyword").on("keyup", function() {
//     let input = $("#keyword").val();
//     $.ajax({
//       type: "GET",
//       url: "/genre",
//       data: { keyword: input },
//       dataType: "json"
//     })
//       .done(function(users) {
//         console.log("成功です");
//       })
//       .fail(function() {
//         console.log("失敗です");
//       });
//   });
// };