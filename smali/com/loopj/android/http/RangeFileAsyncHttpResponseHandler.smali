.class public abstract Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.source "RangeFileAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RangeFileAsyncHttpRH"


# instance fields
.field private append:Z

.field private current:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->append:Z

    return-void
.end method


# virtual methods
.method protected getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    add-long v2, v6, v8

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v6

    iget-boolean v7, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->append:Z

    invoke-direct {v0, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    if-eqz v1, :cond_1

    const/16 v6, 0x1000

    :try_start_0
    new-array v5, v6, [B

    :goto_0
    iget-wide v6, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_0

    iget-wide v6, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V

    iget-wide v6, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v6

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method public sendResponseMessage(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v7}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->sendSuccessMessage(I[Lcz/msebera/android/httpclient/Header;[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    new-instance v4, Lcz/msebera/android/httpclient/client/HttpResponseException;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcz/msebera/android/httpclient/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v7, v4}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->sendFailureMessage(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Content-Range"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->append:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    :goto_1
    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->sendSuccessMessage(I[Lcz/msebera/android/httpclient/Header;[B)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v3, "RangeFileAsyncHttpRH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/loopj/android/http/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateRequestHeaders(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)V
    .locals 4

    iget-object v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    :cond_0
    iget-wide v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->append:Z

    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->current:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
