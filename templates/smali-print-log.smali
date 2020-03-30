const-string v0, "ABC-TAG"
invoke-static {px}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
// OR
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
