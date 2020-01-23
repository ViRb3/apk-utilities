
// Dump instance fields

Java.perform(function() {
  Java.choose("com.application.MainActivity", {
    onMatch: function(instance) {
      console.log(instance.A.value);
      console.log(instance.B.value);
      console.log(instance.C.value);
    },
    onComplete: function() {}
  });
});
