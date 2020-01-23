// Hook and preserve functionality

Java.perform(function () {

    var instance = Java.use('com.application.MainActivity');
    instance.A.overload('android.content.Context').implementation = function (arg) {
        var response = this.A(arg)
        console.log(response);
        return response;
    };
});
