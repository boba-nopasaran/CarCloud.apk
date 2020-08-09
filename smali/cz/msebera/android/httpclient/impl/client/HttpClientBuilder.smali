.class public Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private authCachingDisabled:Z

.field private authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private automaticRetriesDisabled:Z

.field private backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

.field private closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private connManagerShared:Z

.field private connTimeToLive:J

.field private connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

.field private connectionStateDisabled:Z

.field private contentCompressionDisabled:Z

.field private contentDecoderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field private cookieManagementDisabled:Z

.field private cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field

.field private cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

.field private credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

.field private defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private defaultHeaders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private evictExpiredConnections:Z

.field private evictIdleConnections:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field private maxConnPerRoute:I

.field private maxConnTotal:I

.field private maxIdleTime:J

.field private maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private proxy:Lcz/msebera/android/httpclient/HttpHost;

.field private proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field private requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private requestFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private requestLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field private schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

.field private serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

.field private sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

.field private sslcontext:Ljavax/net/ssl/SSLContext;

.field private systemProperties:Z

.field private targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private userAgent:Ljava/lang/String;

.field private userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    iput v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addCloseable(Ljava/io/Closeable;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public build()Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
    .locals 52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-object/from16 v38, v0

    if-nez v38, :cond_0

    invoke-static {}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->getDefault()Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object v38

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-object/from16 v40, v0

    if-nez v40, :cond_1

    new-instance v40, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct/range {v40 .. v40}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-nez v8, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    move-object/from16 v45, v0

    if-nez v45, :cond_3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_11

    const-string v6, "https.protocols"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v48

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_12

    const-string v6, "https.cipherSuites"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v32, v0

    if-nez v32, :cond_2

    new-instance v32, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/DefaultHostnameVerifier;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    if-eqz v6, :cond_13

    new-instance v45, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    move-object/from16 v0, v45

    move-object/from16 v1, v48

    move-object/from16 v2, v47

    move-object/from16 v3, v32

    invoke-direct {v0, v6, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    :cond_3
    :goto_2
    new-instance v5, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;

    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "http"

    invoke-static {}, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "https"

    move-object/from16 v0, v45

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    :goto_3
    invoke-direct/range {v5 .. v12}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Registry;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_6

    const-string v6, "http.keepAlive"

    const-string v7, "true"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v6, "true"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "http.maxConnections"

    const-string v7, "5"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    mul-int/lit8 v6, v37, 0x2

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    if-lez v6, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    if-lez v6, :cond_8

    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    :cond_8
    move-object v8, v5

    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_17

    const-string v6, "http.keepAlive"

    const-string v7, "true"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v6, "true"

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    sget-object v9, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    if-nez v10, :cond_b

    sget-object v10, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    if-nez v12, :cond_c

    sget-object v12, Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/TargetAuthenticationStrategy;

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    if-nez v13, :cond_d

    sget-object v13, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    if-nez v6, :cond_18

    sget-object v14, Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultUserTokenHandler;

    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    move-object/from16 v49, v0

    if-nez v49, :cond_10

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_f

    const-string v6, "http.agent"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    :cond_f
    if-nez v49, :cond_10

    const-string v6, "Apache-HttpClient"

    const-string v7, "cz.msebera.android.httpclient.client"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v6, v7, v11}, Lcz/msebera/android/httpclient/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v49

    :cond_10
    new-instance v11, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v6, 0x2

    new-array v6, v6, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    const/4 v7, 0x0

    new-instance v15, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v15}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    aput-object v15, v6, v7

    const/4 v7, 0x1

    new-instance v15, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    move-object/from16 v0, v49

    invoke-direct {v15, v0}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    aput-object v15, v6, v7

    invoke-direct {v11, v6}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    move-object/from16 v6, p0

    move-object/from16 v7, v40

    invoke-virtual/range {v6 .. v14}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->createMainExec(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-object/from16 v33, v0

    if-nez v33, :cond_25

    invoke-static {}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_6

    :cond_11
    const/16 v48, 0x0

    goto/16 :goto_0

    :cond_12
    const/16 v47, 0x0

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_14

    new-instance v45, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v0, v45

    move-object/from16 v1, v48

    move-object/from16 v2, v47

    move-object/from16 v3, v32

    invoke-direct {v0, v6, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    goto/16 :goto_2

    :cond_14
    new-instance v45, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    invoke-static {}, Lcz/msebera/android/httpclient/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v6

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-direct {v0, v6, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    goto/16 :goto_2

    :cond_15
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto/16 :goto_3

    :cond_16
    sget-object v9, Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/NoConnectionReuseStrategy;

    goto/16 :goto_4

    :cond_17
    sget-object v9, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    goto/16 :goto_4

    :cond_18
    sget-object v14, Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/NoopUserTokenHandler;

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-eqz v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_7

    :cond_1a
    const/4 v6, 0x6

    new-array v6, v6, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    const/4 v7, 0x0

    new-instance v11, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v11, v15}, Lcz/msebera/android/httpclient/client/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    aput-object v11, v6, v7

    const/4 v7, 0x1

    new-instance v11, Lcz/msebera/android/httpclient/protocol/RequestContent;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/protocol/RequestContent;-><init>()V

    aput-object v11, v6, v7

    const/4 v7, 0x2

    new-instance v11, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    aput-object v11, v6, v7

    const/4 v7, 0x3

    new-instance v11, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v11, v6, v7

    const/4 v7, 0x4

    new-instance v11, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    move-object/from16 v0, v49

    invoke-direct {v11, v0}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    aput-object v11, v6, v7

    const/4 v7, 0x5

    new-instance v11, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/client/protocol/RequestExpectContinue;-><init>()V

    aput-object v11, v6, v7

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAll([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v6, :cond_1b

    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v6, :cond_1f

    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    move-object/from16 v0, v29

    invoke-direct {v6, v0}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    :cond_1c
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    if-nez v6, :cond_1d

    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v6, :cond_1e

    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v6, :cond_21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v6, :cond_22

    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_9
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/Map$Entry;

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    goto :goto_9

    :cond_1f
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_8

    :cond_20
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-virtual/range {v25 .. v25}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v7

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;)V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    :cond_21
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-eqz v6, :cond_23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_b
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_b

    :cond_22
    new-instance v6, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-eqz v6, :cond_24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_c
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_c

    :cond_24
    invoke-virtual {v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v33

    :cond_25
    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    if-nez v6, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    move-object/from16 v41, v0

    if-nez v41, :cond_26

    sget-object v41, Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultHttpRequestRetryHandler;

    :cond_26
    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/RetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)V

    move-object/from16 v16, v31

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    move-object/from16 v18, v0

    if-nez v18, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    move-object/from16 v43, v0

    if-nez v43, :cond_28

    sget-object v43, Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultSchemePortResolver;

    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v6, :cond_36

    new-instance v18, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-direct {v0, v6, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultProxyRoutePlanner;-><init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    :cond_29
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    if-nez v6, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    move-object/from16 v39, v0

    if-nez v39, :cond_2a

    sget-object v39, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategy;

    :cond_2a
    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/execchain/RedirectExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/client/RedirectStrategy;)V

    move-object/from16 v16, v31

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    move-object/from16 v44, v0

    if-eqz v44, :cond_2c

    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ServiceUnavailableRetryExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    move-object/from16 v16, v31

    :cond_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    if-eqz v6, :cond_2d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    if-eqz v6, :cond_2d

    new-instance v31, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7}, Lcz/msebera/android/httpclient/impl/execchain/BackoffStrategyExec;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;Lcz/msebera/android/httpclient/client/BackoffManager;)V

    move-object/from16 v16, v31

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    move-object/from16 v20, v0

    if-nez v20, :cond_2e

    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "Basic"

    new-instance v11, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "Digest"

    new-instance v11, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "NTLM"

    new-instance v11, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v20

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    move-object/from16 v19, v0

    if-nez v19, :cond_2f

    new-instance v28, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    new-instance v36, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;

    sget-object v6, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-direct {v0, v6, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    new-instance v46, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;

    sget-object v6, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->STRICT:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-direct {v0, v6, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "default"

    move-object/from16 v0, v28

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "best-match"

    move-object/from16 v0, v28

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "compatibility"

    move-object/from16 v0, v28

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "standard"

    move-object/from16 v0, v36

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "standard-strict"

    move-object/from16 v0, v46

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "netscape"

    new-instance v11, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecProvider;-><init>()V

    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    const-string v7, "ignoreCookies"

    new-instance v11, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecProvider;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecProvider;-><init>()V

    invoke-virtual {v6, v7, v11}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v19

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    move-object/from16 v21, v0

    if-nez v21, :cond_30

    new-instance v21, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;

    invoke-direct/range {v21 .. v21}, Lcz/msebera/android/httpclient/impl/client/BasicCookieStore;-><init>()V

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-object/from16 v22, v0

    if-nez v22, :cond_31

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_38

    new-instance v22, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;

    invoke-direct/range {v22 .. v22}, Lcz/msebera/android/httpclient/impl/client/SystemDefaultCredentialsProvider;-><init>()V

    :cond_31
    :goto_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-eqz v6, :cond_39

    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManagerShared:Z

    if-nez v6, :cond_35

    if-nez v24, :cond_32

    new-instance v24, Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_32
    move-object/from16 v26, v8

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    if-nez v6, :cond_33

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    if-eqz v6, :cond_34

    :cond_33
    new-instance v27, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    const-wide/16 v50, 0x0

    cmp-long v6, v6, v50

    if-lez v6, :cond_3a

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    :goto_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v11, :cond_3b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    :goto_11
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v6, v7, v11}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;)V

    new-instance v6, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v6, v0, v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$1;-><init>(Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v27 .. v27}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->start()V

    :cond_34
    new-instance v6, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v6, v0, v1}, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder$2;-><init>(Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    new-instance v15, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    if-eqz v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-object/from16 v23, v0

    :goto_12
    move-object/from16 v17, v8

    invoke-direct/range {v15 .. v24}, Lcz/msebera/android/httpclient/impl/client/InternalHttpClient;-><init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/client/CookieStore;Lcz/msebera/android/httpclient/client/CredentialsProvider;Lcz/msebera/android/httpclient/client/config/RequestConfig;Ljava/util/List;)V

    return-object v15

    :cond_36
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_37

    new-instance v18, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v6}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;Ljava/net/ProxySelector;)V

    goto/16 :goto_d

    :cond_37
    new-instance v18, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultRoutePlanner;-><init>(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)V

    goto/16 :goto_d

    :cond_38
    new-instance v22, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct/range {v22 .. v22}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    goto/16 :goto_e

    :cond_39
    const/16 v24, 0x0

    goto/16 :goto_f

    :cond_3a
    const-wide/16 v6, 0xa

    goto :goto_10

    :cond_3b
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_11

    :cond_3c
    sget-object v23, Lcz/msebera/android/httpclient/client/config/RequestConfig;->DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    goto :goto_12
.end method

.method protected createMainExec(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 9

    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V

    return-object v0
.end method

.method protected decorateMainExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0

    return-object p1
.end method

.method protected decorateProtocolExec(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;)Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;
    .locals 0

    return-object p1
.end method

.method public final disableAuthCaching()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    return-object p0
.end method

.method public final disableAutomaticRetries()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    return-object p0
.end method

.method public final disableConnectionState()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    return-object p0
.end method

.method public final disableContentCompression()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    return-object p0
.end method

.method public final disableCookieManagement()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    return-object p0
.end method

.method public final disableRedirectHandling()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    return-object p0
.end method

.method public final evictExpiredConnections()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    return-object p0
.end method

.method public final evictIdleConnections(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTime:J

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public final setBackoffManager(Lcz/msebera/android/httpclient/client/BackoffManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->backoffManager:Lcz/msebera/android/httpclient/client/BackoffManager;

    return-object p0
.end method

.method public final setConnectionBackoffStrategy(Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcz/msebera/android/httpclient/client/ConnectionBackoffStrategy;

    return-object p0
.end method

.method public final setConnectionManager(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    return-object p0
.end method

.method public final setConnectionManagerShared(Z)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connManagerShared:Z

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setConnectionTimeToLive(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLive:J

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public final setContentDecoderRegistry(Ljava/util/Map;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lcz/msebera/android/httpclient/config/Lookup;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    return-object p0
.end method

.method public final setDefaultCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->cookieStore:Lcz/msebera/android/httpclient/client/CookieStore;

    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->credentialsProvider:Lcz/msebera/android/httpclient/client/CredentialsProvider;

    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcz/msebera/android/httpclient/Header;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    return-object p0
.end method

.method public final setDefaultRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object p0
.end method

.method public final setDefaultSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    return-object p0
.end method

.method public final setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->httpprocessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setKeepAliveStrategy(Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    return-object p0
.end method

.method public final setMaxConnTotal(I)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->maxConnTotal:I

    return-object p0
.end method

.method public final setProxy(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    return-object p0
.end method

.method public final setPublicSuffixMatcher(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    return-object p0
.end method

.method public final setRedirectStrategy(Lcz/msebera/android/httpclient/client/RedirectStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    return-object p0
.end method

.method public final setRequestExecutor(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    return-object p0
.end method

.method public final setRetryHandler(Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    return-object p0
.end method

.method public final setRoutePlanner(Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    return-object p0
.end method

.method public final setSSLHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final setSSLSocketFactory(Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslSocketFactory:Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;

    return-object p0
.end method

.method public final setSchemePortResolver(Lcz/msebera/android/httpclient/conn/SchemePortResolver;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->schemePortResolver:Lcz/msebera/android/httpclient/conn/SchemePortResolver;

    return-object p0
.end method

.method public final setServiceUnavailableRetryStrategy(Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    return-object p0
.end method

.method public final setSslcontext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public final setTargetAuthenticationStrategy(Lcz/msebera/android/httpclient/client/AuthenticationStrategy;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public final setUserTokenHandler(Lcz/msebera/android/httpclient/client/UserTokenHandler;)Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    return-object p0
.end method

.method public final useSystemProperties()Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/HttpClientBuilder;->systemProperties:Z

    return-object p0
.end method
