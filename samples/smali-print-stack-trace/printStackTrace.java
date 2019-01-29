public static void printStackTraces() {
    StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace(); 
    for (StackTraceElement element : stackTraceElements) {
        System.out.println("Class name :: " + element.getClassName() + "  || method name :: " + element.getMethodName());
    }
}