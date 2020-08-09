.class public final Lcom/qiniu/android/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# instance fields
.field private client:Lcom/qiniu/android/http/AsyncHttpClientMod;

.field private converter:Lcom/qiniu/android/http/UrlConverter;

.field private reporter:Lcom/qiniu/android/http/IReport;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;)V
    .locals 7

    const/4 v5, 0x0

    const/16 v3, 0xa

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;IILcom/qiniu/android/http/UrlConverter;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p6}, Lcom/qiniu/android/http/AsyncHttpClientMod;->create(Lcom/qiniu/android/dns/DnsManager;)Lcom/qiniu/android/http/AsyncHttpClientMod;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    mul-int/lit16 v1, p3, 0x3e8

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    mul-int/lit16 v1, p4, 0x3e8

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setResponseTimeout(I)V

    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    invoke-static {}, Lcom/qiniu/android/http/UserAgent;->instance()Lcom/qiniu/android/http/UserAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/UserAgent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setUserAgent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setEnableRedirects(Z)V

    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    new-instance v1, Lcom/qiniu/android/http/UpRedirectHandler;

    invoke-direct {v1}, Lcom/qiniu/android/http/UpRedirectHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setRedirectHandler(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    const-class v0, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    invoke-static {v0}, Lcom/qiniu/android/http/AsyncHttpClientMod;->blockRetryExceptionClass(Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    iget-object v1, p1, Lcom/qiniu/android/http/Proxy;->hostAddress:Ljava/lang/String;

    iget v2, p1, Lcom/qiniu/android/http/Proxy;->port:I

    iget-object v3, p1, Lcom/qiniu/android/http/Proxy;->user:Ljava/lang/String;

    iget-object v4, p1, Lcom/qiniu/android/http/Proxy;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qiniu/android/http/AsyncHttpClientMod;->setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    if-nez p2, :cond_1

    new-instance v0, Lcom/qiniu/android/http/HttpManager$1;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/HttpManager$1;-><init>(Lcom/qiniu/android/http/HttpManager;)V

    iput-object v0, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    :cond_1
    iput-object p5, p0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/HttpManager;)Lcom/qiniu/android/http/IReport;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/http/HttpManager;->reporter:Lcom/qiniu/android/http/IReport;

    return-object v0
.end method

.method private postEntity(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpEntity;[Lcz/msebera/android/httpclient/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;)V
    .locals 12

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/qiniu/android/http/HttpManager;->wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;

    move-result-object v11

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v1, "Host"

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    const/4 v1, 0x1

    new-array v4, v1, [Lcz/msebera/android/httpclient/Header;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    :goto_0
    iget-object v1, p0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v10, Ljava/net/URI;

    iget-object v1, p0, Lcom/qiniu/android/http/HttpManager;->converter:Lcom/qiniu/android/http/UrlConverter;

    invoke-interface {v1, v3}, Lcom/qiniu/android/http/UrlConverter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v10

    :cond_0
    :goto_1
    new-instance v7, Lcom/qiniu/android/http/ResponseHandler;

    move-object/from16 v0, p4

    invoke-direct {v7, p1, v11, v0}, Lcom/qiniu/android/http/ResponseHandler;-><init>(Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/ProgressHandler;)V

    iget-object v1, p0, Lcom/qiniu/android/http/HttpManager;->client:Lcom/qiniu/android/http/AsyncHttpClientMod;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/qiniu/android/http/AsyncHttpClientMod;->post(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void

    :cond_1
    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [Lcz/msebera/android/httpclient/Header;

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v5, p3

    invoke-static {p3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    aput-object v9, v4, v1

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private wrap(Lcom/qiniu/android/http/CompletionHandler;)Lcom/qiniu/android/http/CompletionHandler;
    .locals 1

    new-instance v0, Lcom/qiniu/android/http/HttpManager$2;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/android/http/HttpManager$2;-><init>(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/http/CompletionHandler;)V

    return-object v0
.end method


# virtual methods
.method public multipartPost(Ljava/net/URI;Lcom/qiniu/android/http/PostArgs;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 12

    new-instance v11, Lcom/qiniu/android/http/MultipartBuilder;

    invoke-direct {v11}, Lcom/qiniu/android/http/MultipartBuilder;-><init>()V

    iget-object v1, p2, Lcom/qiniu/android/http/PostArgs;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Lcom/qiniu/android/http/MultipartBuilder;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/qiniu/android/http/PostArgs;->data:[B

    if-eqz v1, :cond_1

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v1, p2, Lcom/qiniu/android/http/PostArgs;->data:[B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string v1, "file"

    iget-object v2, p2, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    iget-object v4, p2, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    invoke-virtual {v11, v1, v2, v7, v4}, Lcom/qiniu/android/http/MultipartBuilder;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p5

    invoke-virtual {v11, p3, v0}, Lcom/qiniu/android/http/MultipartBuilder;->build(Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)Lcom/qiniu/android/http/ByteArrayEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/qiniu/android/http/HttpManager;->postEntity(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpEntity;[Lcz/msebera/android/httpclient/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;)V

    :goto_2
    return-void

    :catch_0
    move-exception v8

    invoke-static {v8}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v1, v2}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_1
    :try_start_1
    const-string v1, "file"

    iget-object v2, p2, Lcom/qiniu/android/http/PostArgs;->file:Ljava/io/File;

    iget-object v4, p2, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    const-string v5, "filename"

    invoke-virtual {v11, v1, v2, v4, v5}, Lcom/qiniu/android/http/MultipartBuilder;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-static {v8}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v1, v2}, Lcom/qiniu/android/http/CompletionHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public postData(Ljava/net/URI;[BII[Lcz/msebera/android/httpclient/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 7

    new-instance v0, Lcom/qiniu/android/http/ByteArrayEntity;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p6

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/http/ByteArrayEntity;-><init>([BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/qiniu/android/http/HttpManager;->postEntity(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpEntity;[Lcz/msebera/android/httpclient/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;)V

    return-void
.end method

.method public postData(Ljava/net/URI;[B[Lcz/msebera/android/httpclient/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 9

    const/4 v3, 0x0

    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/qiniu/android/http/HttpManager;->postData(Ljava/net/URI;[BII[Lcz/msebera/android/httpclient/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    return-void
.end method
