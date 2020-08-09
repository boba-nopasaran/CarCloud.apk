.class public Lcz/msebera/android/httpclient/impl/client/ProxyClient;
.super Ljava/lang/Object;
.source "ProxyClient.java"


# instance fields
.field private final authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

.field private final authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

.field private final connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private final httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private final proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

.field private final proxyAuthStrategy:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

.field private final requestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private final requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcz/msebera/android/httpclient/impl/client/ProxyClient;-><init>(Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/ProxyClient;-><init>(Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/client/config/RequestConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;",
            "Lcz/msebera/android/httpclient/config/ConnectionConfig;",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;

    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz p3, :cond_2

    :goto_2
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    new-instance v0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x3

    new-array v1, v1, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    const/4 v2, 0x0

    new-instance v3, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/protocol/RequestUserAgent;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    const-string v1, "Basic"

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    const-string v1, "Digest"

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    const-string v1, "NTLM"

    new-instance v2, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    return-void

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;

    goto :goto_0

    :cond_1
    sget-object p2, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    goto :goto_1

    :cond_2
    sget-object p3, Lcz/msebera/android/httpclient/client/config/RequestConfig;->DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    goto :goto_2
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcz/msebera/android/httpclient/params/HttpParamConfig;->getConnectionConfig(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object v1

    invoke-static {p1}, Lcz/msebera/android/httpclient/client/params/HttpClientParamConfig;->getRequestConfig(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/ProxyClient;-><init>(Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/config/ConnectionConfig;Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    return-void
.end method


# virtual methods
.method public getAuthSchemeRegistry()Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    return-object v0
.end method

.method public tunnel(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/Credentials;)Ljava/net/Socket;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const-string v3, "Proxy host"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "Target host"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "Credentials"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v2, p2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v13, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v3, v4, v6}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v2, v13

    :cond_0
    new-instance v1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v7, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v7}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-interface {v3, v1, v4}, Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;->create(Ljava/lang/Object;Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object v9

    check-cast v9, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    new-instance v8, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v8}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    new-instance v10, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    const-string v3, "CONNECT"

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-direct {v10, v3, v4, v6}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    new-instance v11, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct {v11}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    new-instance v3, Lcz/msebera/android/httpclient/auth/AuthScope;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    move-object/from16 v0, p3

    invoke-virtual {v11, v3, v0}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;->setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    const-string v3, "http.target_host"

    move-object/from16 v0, p2

    invoke-interface {v8, v3, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.connection"

    invoke-interface {v8, v3, v9}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.request"

    invoke-interface {v8, v3, v10}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.route"

    invoke-interface {v8, v3, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.auth.proxy-scope"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-interface {v8, v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.auth.credentials-provider"

    invoke-interface {v8, v3, v11}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.authscheme-registry"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authSchemeRegistry:Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    invoke-interface {v8, v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.request-config"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestConfig:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-interface {v8, v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v3, v10, v4, v8}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :goto_0
    invoke-interface {v9}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v14, Ljava/net/Socket;

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v4

    invoke-direct {v14, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-interface {v9, v14}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v3, v10, v4, v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    invoke-virtual {v3, v10, v9, v8}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v3, 0xc8

    if-ge v15, v3, :cond_2

    new-instance v3, Lcz/msebera/android/httpclient/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected response to CONNECT request: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthStrategy:Lcz/msebera/android/httpclient/impl/client/ProxyAuthenticationStrategy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/client/ProxyClient;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v3, v5, v8}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v12

    invoke-static {v12}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    :goto_1
    const-string v3, "Proxy-Authorization"

    invoke-interface {v10, v3}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-interface {v9}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->close()V

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v3, 0x12b

    if-le v15, v3, :cond_6

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v12

    if-eqz v12, :cond_5

    new-instance v3, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;

    invoke-direct {v3, v12}, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v5, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_5
    invoke-interface {v9}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->close()V

    new-instance v3, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONNECT refused by proxy: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V

    throw v3

    :cond_6
    invoke-interface {v9}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    return-object v3
.end method
