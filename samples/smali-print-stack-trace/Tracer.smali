.class public LTracer;
.super Ljava/lang/Object;

# direct methods
.method public static logStackTrace()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "ABC-TAG"

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method
