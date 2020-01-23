// Print stack trace on toast show

Java.perform(function () {
  Java.use("android.widget.Toast").show.implementation = function () {
    var jAndroidLog = Java.use("android.util.Log"), jException = Java.use("java.lang.Exception");
    console.log(jAndroidLog.getStackTraceString(jException.$new()));
    return this.show();
  }
});
