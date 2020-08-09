.class Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;
.super Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;
.source "MinimalHttpClient.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final params:Lcz/msebera/android/httpclient/params/HttpParams;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V
    .locals 4

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpClient;-><init>()V

    const-string v0, "HTTP connection manager"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    new-instance v0, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    new-instance v1, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    sget-object v2, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    sget-object v3, Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0, v1, p1, v2, v3}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->shutdown()V

    return-void
.end method

.method protected doExecute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    const-string v6, "Target host"

    invoke-static {p1, v6}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v6, "HTTP request"

    invoke-static {p2, v6}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    instance-of v6, p2, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    if-eqz v6, :cond_0

    move-object v1, p2

    check-cast v1, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->wrap(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;

    move-result-object v5

    if-eqz p3, :cond_3

    :goto_0
    invoke-static {p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v3

    new-instance v4, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v4, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    const/4 v0, 0x0

    instance-of v6, p2, Lcz/msebera/android/httpclient/client/methods/Configurable;

    if-eqz v6, :cond_1

    check-cast p2, Lcz/msebera/android/httpclient/client/methods/Configurable;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/client/methods/Configurable;->getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    :cond_2
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;

    invoke-virtual {v6, v4, v5, v3, v1}, Lcz/msebera/android/httpclient/impl/execchain/MinimalClientExec;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v6

    return-object v6

    :cond_3
    new-instance p3, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {p3}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    invoke-direct {v6, v2}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;-><init>(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)V

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method
