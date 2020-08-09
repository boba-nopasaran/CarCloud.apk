.class public Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;
.super Ljava/lang/Object;
.source "HttpClientAndroidLog.java"


# instance fields
.field private debugEnabled:Z

.field private errorEnabled:Z

.field private infoEnabled:Z

.field private logTag:Ljava/lang/String;

.field private traceEnabled:Z

.field private warnEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debugEnabled:Z

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->errorEnabled:Z

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->traceEnabled:Z

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warnEnabled:Z

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->infoEnabled:Z

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public enableDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debugEnabled:Z

    return-void
.end method

.method public enableError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->errorEnabled:Z

    return-void
.end method

.method public enableInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->infoEnabled:Z

    return-void
.end method

.method public enableTrace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->traceEnabled:Z

    return-void
.end method

.method public enableWarn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warnEnabled:Z

    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debugEnabled:Z

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->errorEnabled:Z

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->infoEnabled:Z

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->traceEnabled:Z

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warnEnabled:Z

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
