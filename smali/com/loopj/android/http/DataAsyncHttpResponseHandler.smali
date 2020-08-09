.class public abstract Lcom/loopj/android/http/DataAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DataAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataAsyncHttpRH"

.field protected static final PROGRESS_DATA_MESSAGE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    array-length v1, p0

    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v3, [B

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v2
.end method


# virtual methods
.method getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v2, v10

    if-lez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "HTTP entity too large to be buffered in memory"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-gez v9, :cond_1

    const-wide/16 v2, 0x1000

    :cond_1
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    long-to-int v9, v2

    invoke-direct {v0, v9}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x1000

    :try_start_1
    new-array v8, v9, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    const/4 v9, 0x0

    invoke-static {v8, v9, v6}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->copyOfRange([BII)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressDataMessage([B)V

    int-to-long v10, v1

    invoke-virtual {p0, v10, v11, v2, v3}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    :try_start_2
    invoke-static {v5}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v4

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v9, Ljava/io/IOException;

    const-string v10, "File too large to fit into available memory"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    :try_start_3
    invoke-static {v5}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    :cond_3
    return-object v7
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->onProgressData([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v3, "DataAsyncHttpRH"

    const-string v4, "custom onProgressData contains an error"

    invoke-interface {v2, v3, v4, v1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v3, "DataAsyncHttpRH"

    const-string v4, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    invoke-interface {v2, v3, v4}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressData([B)V
    .locals 3

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "DataAsyncHttpRH"

    const-string v2, "onProgressData(byte[]) was not overriden, but callback was received"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendProgressDataMessage([B)V
    .locals 3

    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
