// Static dump

Java.perform(function () {
  var utils = Java.use("com.application.MainActivity");
  console.log(utils.A.value);
  console.log(utils.B.value);
  console.log(utils.C.value);
});
