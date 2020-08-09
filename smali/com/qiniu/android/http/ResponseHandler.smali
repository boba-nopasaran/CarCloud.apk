.class public final Lcom/qiniu/android/http/ResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ResponseHandler.java"


# instance fields
.field private completionHandler:Lcom/qiniu/android/http/CompletionHandler;

.field private host:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private progressHandler:Lcom/qiniu/android/http/ProgressHandler;

.field private reqStartTime:J

.field private volatile sent:J


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/qiniu/android/http/ResponseHandler;->port:I

    iput-object v1, p0, Lcom/qiniu/android/http/ResponseHandler;->path:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/http/ResponseHandler;->host:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/http/ResponseHandler;->port:I

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/http/ResponseHandler;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/qiniu/android/http/ResponseHandler;->completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    iput-object p3, p0, Lcom/qiniu/android/http/ResponseHandler;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    return-void
.end method

.method private static buildJsonResp([B)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static buildResponseInfo(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/Throwable;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 25

    if-eqz p11, :cond_0

    move-object/from16 v0, p11

    instance-of v3, v0, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->cancelled()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_6

    move-object/from16 v2, p1

    array-length v0, v2

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v19, v2, v20

    const-string v3, "X-Reqid"

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "X-Log"

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    const-string v3, "X-Via"

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    const-string v3, "X-Px"

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    const-string v3, "Fw-Via"

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    const/16 v3, 0xc8

    move/from16 v0, p0

    if-eq v0, v3, :cond_a

    if-eqz p2, :cond_9

    :try_start_0
    new-instance v18, Ljava/lang/String;

    const-string v3, "utf-8"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    :cond_7
    :goto_3
    if-nez p0, :cond_8

    const/16 p0, -0x1

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p11

    instance-of v3, v0, Ljava/io/IOException;

    if-eqz v3, :cond_8

    if-eqz v22, :cond_b

    const-string v3, "UnknownHostException"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    const/16 p0, -0x3eb

    :cond_8
    :goto_4
    new-instance v3, Lcom/qiniu/android/http/ResponseInfo;

    move/from16 v4, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-direct/range {v3 .. v16}, Lcom/qiniu/android/http/ResponseInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v17

    :goto_5
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v17

    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :cond_9
    if-eqz p11, :cond_7

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_7

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    :cond_a
    if-nez v5, :cond_7

    const-string v16, "remote is not qiniu server!"

    goto :goto_3

    :cond_b
    if-eqz v22, :cond_c

    const-string v3, "Broken pipe"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    const/16 p0, -0x3ed

    goto :goto_4

    :cond_c
    move-object/from16 v0, p11

    instance-of v3, v0, Lcz/msebera/android/httpclient/NoHttpResponseException;

    if-eqz v3, :cond_d

    const/16 p0, -0x3ed

    goto :goto_4

    :cond_d
    move-object/from16 v0, p11

    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_e

    const/16 p0, -0x3e9

    goto :goto_4

    :cond_e
    move-object/from16 v0, p11

    instance-of v3, v0, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    if-nez v3, :cond_f

    move-object/from16 v0, p11

    instance-of v3, v0, Ljava/net/SocketException;

    if-eqz v3, :cond_8

    :cond_f
    const/16 p0, -0x3ec

    goto :goto_4

    :catch_2
    move-exception v17

    move-object/from16 v16, v18

    goto :goto_6

    :catch_3
    move-exception v17

    move-object/from16 v16, v18

    goto :goto_5
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qiniu/android/http/ResponseHandler;->reqStartTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v8, v2, v4

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseHandler;->host:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/http/ResponseHandler;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    iget v7, p0, Lcom/qiniu/android/http/ResponseHandler;->port:I

    iget-wide v10, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    invoke-static/range {v1 .. v12}, Lcom/qiniu/android/http/ResponseHandler;->buildResponseInfo(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/Throwable;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/http/ResponseHandler;->completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public onProgress(II)V
    .locals 4

    iget-wide v0, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    iget-object v0, p0, Lcom/qiniu/android/http/ResponseHandler;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/http/ResponseHandler;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    invoke-interface {v0, p1, p2}, Lcom/qiniu/android/http/ProgressHandler;->onProgress(II)V

    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 3

    long-to-int v0, p1

    long-to-int v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/qiniu/android/http/ResponseHandler;->onProgress(II)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/android/http/ResponseHandler;->reqStartTime:J

    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qiniu/android/http/ResponseHandler;->reqStartTime:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v8, v2, v4

    const/4 v14, 0x0

    const/4 v12, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/qiniu/android/http/ResponseHandler;->buildJsonResp([B)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qiniu/android/http/ResponseHandler;->host:Ljava/lang/String;

    iget-object v5, p0, Lcom/qiniu/android/http/ResponseHandler;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    iget v7, p0, Lcom/qiniu/android/http/ResponseHandler;->port:I

    iget-wide v10, p0, Lcom/qiniu/android/http/ResponseHandler;->sent:J

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v12}, Lcom/qiniu/android/http/ResponseHandler;->buildResponseInfo(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IDJLjava/lang/Throwable;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v13

    iget-object v1, p0, Lcom/qiniu/android/http/ResponseHandler;->completionHandler:Lcom/qiniu/android/http/CompletionHandler;

    invoke-interface {v1, v13, v14}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    move-object v12, v0

    goto :goto_0
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/qiniu/android/http/AsyncHttpClientMod;->ip:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/android/http/ResponseHandler;->ip:Ljava/lang/String;

    sget-object v0, Lcom/qiniu/android/http/AsyncHttpClientMod;->ip:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
