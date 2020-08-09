.class public Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;
.super Ljava/lang/Object;
.source "MainClientExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field private final authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

.field private final connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private final keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private final proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private final requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private final routeDirector:Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;

.field private final targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private final userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V
    .locals 9

    new-instance v5, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    const/4 v0, 0x1

    new-array v0, v0, [Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    const/4 v1, 0x0

    new-instance v2, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/protocol/RequestTargetHost;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {v5, v0}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Proxy HTTP processor"

    invoke-static {p5, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target authentication strategy"

    invoke-static {p6, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Proxy authentication strategy"

    invoke-static {p7, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "User token handler"

    invoke-static {p8, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->routeDirector:Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    return-void
.end method

.method private createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createTunnelToTarget(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectTimeout()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v14}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    const-string v3, "CONNECT"

    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v6

    invoke-direct {v11, v3, v9, v6}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyHttpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-object/from16 v0, p5

    invoke-virtual {v3, v11, v6, v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :cond_0
    :goto_0
    if-nez v5, :cond_5

    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v15, :cond_2

    move v3, v15

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-interface {v6, v0, v1, v3, v2}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    :cond_1
    const-string v3, "Proxy-Authorization"

    invoke-interface {v11, v3}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v11, v0, v1}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v3, v11, v0, v1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v3, 0xc8

    if-ge v13, v3, :cond_3

    new-instance v3, Lcz/msebera/android/httpclient/HttpException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected response to CONNECT request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    move-object/from16 v0, p5

    invoke-interface {v3, v5, v0}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Connection kept alive"

    invoke-virtual {v3, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v12

    invoke-static {v12}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    goto :goto_2

    :cond_5
    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v3, 0x12b

    if-le v13, v3, :cond_7

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v12

    if-eqz v12, :cond_6

    new-instance v3, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;

    invoke-direct {v3, v12}, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v5, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_6
    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    new-instance v3, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECT refused by proxy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v5}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V

    throw v3

    :cond_7
    const/4 v3, 0x0

    return v3
.end method

.method private needAuthentication(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z
    .locals 14

    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_1

    new-instance v12, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v0, v2, v4}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v12

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v2, p4

    move-object v4, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    :cond_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v11

    if-eqz v13, :cond_3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object v5, v1

    move-object/from16 v6, p4

    move-object v8, p1

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    if-eqz v11, :cond_4

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method establishRoute(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p5 .. p5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectTimeout()I

    move-result v7

    new-instance v8, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-direct {v8, p3}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    :cond_0
    invoke-virtual {v8}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v2

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->routeDirector:Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;

    invoke-interface {v9, p3, v2}, Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;->nextStep(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown step indicator "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from RouteDirector."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_0
    iget-object v10, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v7, :cond_1

    move v9, v7

    :goto_0
    move-object/from16 v0, p5

    invoke-interface {v10, p2, p3, v9, v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isSecure()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectTarget(Z)V

    :goto_1
    if-gtz v6, :cond_0

    return-void

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v10, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-lez v7, :cond_2

    move v9, v7

    :goto_2
    move-object/from16 v0, p5

    invoke-interface {v10, p2, p3, v9, v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->createTunnelToTarget(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z

    move-result v5

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v10, "Tunnel to target created."

    invoke-virtual {v9, v10}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelTarget(Z)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, p5

    invoke-direct {p0, p3, v3, v0}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z

    move-result v5

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v10, "Tunnel to proxy created."

    invoke-virtual {v9, v10}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual {p3, v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    goto :goto_1

    :pswitch_4
    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    move-object/from16 v0, p5

    invoke-interface {v9, p2, p3, v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->upgrade(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isSecure()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layerProtocol(Z)V

    goto :goto_1

    :pswitch_5
    new-instance v9, Lcz/msebera/android/httpclient/HttpException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to establish route: planned = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; current = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_6
    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    move-object/from16 v0, p5

    invoke-interface {v9, p2, p3, v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->routeComplete(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const-string v4, "HTTP route"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "HTTP request"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "HTTP context"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v26

    if-nez v26, :cond_0

    new-instance v26, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct/range {v26 .. v26}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    const-string v4, "http.auth.target-scope"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getProxyAuthState()Lcz/msebera/android/httpclient/auth/AuthState;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    const-string v4, "http.auth.proxy-scope"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p2

    instance-of v4, v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_2

    move-object/from16 v4, p2

    check-cast v4, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-static {v4}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->enhance(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v4, v0, v1}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ConnectionRequest;

    move-result-object v16

    if-eqz p4, :cond_4

    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->cancel()Z

    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    const-string v7, "Request aborted"

    invoke-direct {v4, v7}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v14

    :try_start_0
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v27

    if-lez v27, :cond_7

    move/from16 v0, v27

    int-to-long v8, v0

    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-interface {v0, v8, v9, v4}, Lcz/msebera/android/httpclient/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/HttpClientConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    const-string v4, "http.connection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Stale connection check"

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpClientConnection;->isStale()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Stale connection detected"

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    :cond_5
    new-instance v15, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->connManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    invoke-direct {v15, v4, v7, v6}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/HttpClientConnection;)V

    if-eqz p4, :cond_6

    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->setCancellable(Lcz/msebera/android/httpclient/concurrent/Cancellable;)V

    :cond_6
    const/16 v21, 0x1

    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v21

    if-le v0, v4, :cond_9

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->isRepeatable(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string v7, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v4, v7}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    :catch_0
    move-exception v20

    new-instance v23, Ljava/io/InterruptedIOException;

    const-string v4, "Connection has been shut down"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v23

    :cond_7
    const-wide/16 v8, 0x0

    goto :goto_0

    :catch_1
    move-exception v22

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    const-string v7, "Request aborted"

    move-object/from16 v0, v22

    invoke-direct {v4, v7, v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    if-nez v13, :cond_8

    move-object/from16 v13, v20

    :cond_8
    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    const-string v7, "Request execution failed"

    invoke-direct {v4, v7, v13}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_9
    if-eqz p4, :cond_a

    :try_start_2
    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    const-string v7, "Request aborted"

    invoke-direct {v4, v7}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    :catch_3
    move-exception v20

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    throw v20

    :cond_a
    :try_start_3
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    :try_start_4
    invoke-virtual/range {v4 .. v9}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->establishRoute(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)V
    :try_end_4
    .catch Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_b
    :try_start_5
    invoke-virtual {v14}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getSocketTimeout()I

    move-result v27

    if-ltz v27, :cond_c

    move/from16 v0, v27

    invoke-interface {v6, v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->setSocketTimeout(I)V

    :cond_c
    if-eqz p4, :cond_12

    invoke-interface/range {p4 .. p4}, Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;

    const-string v7, "Request aborted"

    invoke-direct {v4, v7}, Lcz/msebera/android/httpclient/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_4
    move-exception v20

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    throw v20

    :catch_5
    move-exception v20

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual/range {v20 .. v20}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcz/msebera/android/httpclient/impl/execchain/TunnelRefusedException;->getResponse()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v11

    :cond_e
    if-nez v28, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Lcz/msebera/android/httpclient/client/UserTokenHandler;->getUserToken(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v28

    const-string v4, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    if-eqz v28, :cond_10

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->setState(Ljava/lang/Object;)V

    :cond_10
    invoke-interface {v11}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v17

    if-eqz v17, :cond_11

    invoke-interface/range {v17 .. v17}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v4

    if-nez v4, :cond_20

    :cond_11
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->releaseConnection()V

    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    const/4 v7, 0x0

    invoke-direct {v4, v11, v7}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V

    :goto_2
    return-object v4

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing request "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_13
    const-string v4, "Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Target auth state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :cond_15
    const-string v4, "Proxy-Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy auth state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->authenticator:Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v5, v1}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->requestExecutor:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v6, v1}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    move-object/from16 v0, p3

    invoke-interface {v4, v11, v0}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v0, p3

    invoke-interface {v4, v11, v0}, Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    const-wide/16 v8, 0x0

    cmp-long v4, v18, v8

    if-lez v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection can be kept alive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_18
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1, v4}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markReusable()V

    :goto_4
    move-object/from16 v7, p0

    move-object/from16 v8, v26

    move-object v9, v5

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->needAuthentication(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v11}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v17

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-static/range {v17 .. v17}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_19
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v24

    const-string v4, "Authorization"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    :cond_1a
    const-string v4, "Proxy-Authorization"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "Proxy-Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    :cond_1b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    :cond_1c
    const-string v25, "indefinitely"

    goto :goto_3

    :cond_1d
    invoke-virtual {v15}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->markNonReusable()V
    :try_end_6
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception v20

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    throw v20

    :cond_1e
    :try_start_7
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v4

    sget-object v7, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v4, v7, :cond_1f

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Resetting proxy auth state"

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    :cond_1f
    invoke-virtual/range {v26 .. v26}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v4

    sget-object v7, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v4, v7, :cond_19

    invoke-virtual/range {v26 .. v26}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-virtual/range {v26 .. v26}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/execchain/MainClientExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Resetting target auth state"

    invoke-virtual {v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual/range {v26 .. v26}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    goto/16 :goto_5

    :cond_20
    new-instance v4, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;

    invoke-direct {v4, v11, v15}, Lcz/msebera/android/httpclient/impl/execchain/HttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    :try_end_7
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_2
.end method
