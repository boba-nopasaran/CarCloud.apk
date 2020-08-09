.class public Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RequestDirector;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

.field protected final connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private execCount:I

.field protected final httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

.field private final maxRedirects:I

.field protected final params:Lcz/msebera/android/httpclient/params/HttpParams;

.field protected final proxyAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

.field protected final proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field private redirectCount:I

.field protected final redirectHandler:Lcz/msebera/android/httpclient/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

.field protected final requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field protected final routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

.field protected final targetAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

.field protected final targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

.field protected final userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

.field private virtualHost:Lcz/msebera/android/httpclient/HttpHost;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    invoke-direct {v2, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p10

    invoke-direct {v11, v0}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    new-instance v12, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p11

    invoke-direct {v12, v0}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Log"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Request executor"

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Client connection manager"

    invoke-static {p3, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Connection reuse strategy"

    invoke-static {p4, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Connection keep alive strategy"

    invoke-static {p5, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Route planner"

    invoke-static {p6, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP protocol processor"

    invoke-static {p7, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP request retry handler"

    invoke-static {p8, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Redirect strategy"

    invoke-static {p9, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Target authentication strategy"

    invoke-static {p10, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Proxy authentication strategy"

    invoke-static {p11, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "User token handler"

    move-object/from16 v0, p12

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP parameters"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    invoke-direct {v1, p1}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    iput-object p9, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    iput-object p10, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iput-object p11, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    instance-of v1, p9, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    if-eqz v1, :cond_0

    check-cast p9, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-virtual {p9}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->getHandler()Lcz/msebera/android/httpclient/client/RedirectHandler;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectHandler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    :goto_0
    instance-of v1, p10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    if-eqz v1, :cond_1

    check-cast p10, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p10}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    :goto_1
    instance-of v1, p11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    if-eqz v1, :cond_2

    check-cast p11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p11}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    const/4 v1, 0x0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/auth/AuthState;-><init>()V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    const-string v2, "http.protocol.max-redirects"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->maxRedirects:I

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectHandler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lcz/msebera/android/httpclient/client/AuthenticationHandler;

    goto :goto_2
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/AuthenticationHandler;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;

    invoke-direct {v2, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;

    move-object/from16 v0, p8

    invoke-direct {v10, v0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/RedirectHandler;)V

    new-instance v11, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p9

    invoke-direct {v11, v0}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    new-instance v12, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p10

    invoke-direct {v12, v0}, Lcz/msebera/android/httpclient/impl/client/AuthenticationStrategyAdaptor;-><init>(Lcz/msebera/android/httpclient/client/AuthenticationHandler;)V

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;Lcz/msebera/android/httpclient/client/RedirectStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/client/UserTokenHandler;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method private abortConnection()V
    .locals 5

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    :try_start_0
    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Error releasing connection"

    invoke-virtual {v3, v4, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private tryConnect(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v4, "http.request"

    invoke-interface {p2, v4, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v4, v2, p2, v5}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    :goto_1
    invoke-virtual {p0, v2, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->establishRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v5}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v5

    invoke-interface {v4, v5}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    invoke-interface {v4, v1, v0, p2}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") caught when connecting to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrying connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    throw v1

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private tryExecute(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v5

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->incrementExecCount()V

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Cannot retry non-repeatable request"

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    new-instance v6, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string v7, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {v6, v7, v2}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_0
    new-instance v6, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;

    const-string v7, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v6, v7}, Lcz/msebera/android/httpclient/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Reopening the direct connection."

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v6, v3, p2, v7}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    :cond_2
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to execute request"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_3
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {v6, v5, v7, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_4
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Proxied connection. Need to start over."

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Closing the connection."

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :try_start_1
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v6}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->retryHandler:Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getExecCount()I

    move-result v7

    invoke-interface {v6, v0, v7, p2}, Lcz/msebera/android/httpclient/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "I/O exception ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") caught when processing request to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    :cond_5
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_6
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retrying request to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    :cond_7
    move-object v2, v0

    goto/16 :goto_0

    :cond_8
    instance-of v6, v0, Lcz/msebera/android/httpclient/NoHttpResponseException;

    if-eqz v6, :cond_9

    new-instance v4, Lcz/msebera/android/httpclient/NoHttpResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed to respond"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/NoHttpResponseException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v4

    :cond_9
    throw v0

    :catch_1
    move-exception v6

    goto/16 :goto_2
.end method

.method private wrapRequest(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/EntityEnclosingRequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;-><init>(Lcz/msebera/android/httpclient/HttpRequest;)V

    goto :goto_0
.end method


# virtual methods
.method protected createConnectRequest(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpRequest;
    .locals 10

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v3

    if-gez v3, :cond_0

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v8}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v8

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v5

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getDefaultPort()I

    move-result v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v8}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->getVersion(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v7

    new-instance v4, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    const-string v8, "CONNECT"

    invoke-direct {v4, v8, v0, v7}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-object v4
.end method

.method protected createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v9

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v0, p1, p2, v3}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->createConnectRequest(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v6

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v6, v0}, Lcz/msebera/android/httpclient/HttpRequest;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    const-string v0, "http.target_host"

    invoke-interface {p2, v0, v9}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.route"

    invoke-interface {p2, v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.proxy_host"

    invoke-interface {p2, v0, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.connection"

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p2, v0, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.request"

    invoke-interface {p2, v0, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v0, v6, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {v0, v6, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-virtual {v0, v2, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->postProcess(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v0, 0xc8

    if-ge v8, v0, :cond_2

    new-instance v0, Lcz/msebera/android/httpclient/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected response to CONNECT request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-static {v0}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->isAuthenticating(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v0, v2, p2}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Connection kept alive"

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v0, 0x12b

    if-le v8, v0, :cond_6

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v0, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;

    invoke-direct {v0, v7}, Lcz/msebera/android/httpclient/entity/BufferedHttpEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_5
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONNECT refused by proxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    const/4 v0, 0x0

    return v0
.end method

.method protected determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->routePlanner:Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {v1, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/routing/HttpRoutePlanner;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    const-string v2, "http.default-host"

    invoke-interface {v0, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    move-object p1, v0

    goto :goto_0
.end method

.method protected establishRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/conn/routing/BasicRouteDirector;-><init>()V

    :cond_0
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v5}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lcz/msebera/android/httpclient/conn/routing/HttpRouteDirector;->nextStep(Lcz/msebera/android/httpclient/conn/routing/RouteInfo;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown step indicator "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from RouteDirector."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v5, p1, p2, v6}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    :goto_0
    :pswitch_1
    if-gtz v4, :cond_0

    return-void

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Tunnel to target created."

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v5, v3, v6}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->tunnelTarget(ZLcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    invoke-virtual {p0, p1, v1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v3

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Tunnel to proxy created."

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v5, v6, v3, v7}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_0

    :pswitch_4
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    invoke-interface {v5, p2, v6}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->layerProtocol(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    goto :goto_0

    :pswitch_5
    new-instance v5, Lcz/msebera/android/httpclient/HttpException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to establish route: planned = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; current = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v31, "http.auth.target-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v32, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "http.auth.proxy-scope"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v32, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v25, p1

    move-object/from16 v15, p2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->wrapRequest(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v16

    invoke-virtual/range {v17 .. v17}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v31

    const-string v32, "http.virtual-host"

    invoke-interface/range {v31 .. v32}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    if-eqz v25, :cond_b

    move-object/from16 v12, v25

    :goto_0
    invoke-virtual {v12}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v18

    const/16 v31, -0x1

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    new-instance v31, Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v18

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    :cond_0
    new-instance v22, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    const/16 v21, 0x0

    const/4 v5, 0x0

    const/16 v20, 0x0

    :cond_1
    :goto_1
    if-nez v5, :cond_d

    :try_start_0
    invoke-virtual/range {v22 .. v22}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v23

    const/16 v20, 0x0

    const-string v31, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;

    move-result-object v4

    instance-of v0, v15, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    move/from16 v31, v0

    if-eqz v31, :cond_2

    move-object v0, v15

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;->setConnectionRequest(Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->getConnectionManagerTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)J
    :try_end_0
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-wide v26

    :try_start_1
    sget-object v31, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v26

    move-object/from16 v2, v31

    invoke-interface {v4, v0, v1, v2}, Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->isStaleCheckingEnabled(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v31

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v31

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v31, v0

    const-string v32, "Stale connection check"

    invoke-virtual/range {v31 .. v32}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isStale()Z

    move-result v31

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v31, v0

    const-string v32, "Stale connection detected"

    invoke-virtual/range {v31 .. v32}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    :cond_3
    instance-of v0, v15, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    move/from16 v31, v0

    if-eqz v31, :cond_4

    move-object v0, v15

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcz/msebera/android/httpclient/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;)V
    :try_end_2
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->tryConnect(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_3
    .catch Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-virtual/range {v30 .. v30}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v31, v0

    new-instance v32, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct/range {v32 .. v32}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    new-instance v33, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v33}, Lcz/msebera/android/httpclient/auth/AuthState;->update(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v31, v0

    if-eqz v31, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v25, v0

    :cond_6
    :goto_2
    if-nez v25, :cond_7

    invoke-virtual/range {v23 .. v23}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v25

    :cond_7
    invoke-virtual/range {v30 .. v30}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->resetHeaders()V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    const-string v31, "http.target_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "http.route"

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v31, "http.connection"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->tryExecute(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v20

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->requestExec:Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->postProcess(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->reuseStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v31

    if-eqz v31, :cond_8

    const-wide/16 v32, 0x0

    cmp-long v31, v6, v32

    if-lez v31, :cond_11

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget-object v32, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Connection can be kept alive "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    sget-object v32, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v7, v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->handleResponse(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    move-result-object v11

    if-nez v11, :cond_12

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    if-nez v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->userTokenHandler:Lcz/msebera/android/httpclient/client/UserTokenHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/client/UserTokenHandler;->getUserToken(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v28

    const-string v31, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V
    :try_end_4
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    :catch_0
    move-exception v10

    new-instance v14, Ljava/io/InterruptedIOException;

    const-string v31, "Connection has been shut down"

    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v14

    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v12

    goto/16 :goto_0

    :catch_1
    move-exception v13

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Thread;->interrupt()V

    new-instance v31, Ljava/io/InterruptedIOException;

    invoke-direct/range {v31 .. v31}, Ljava/io/InterruptedIOException;-><init>()V

    throw v31
    :try_end_5
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_2
    move-exception v10

    invoke-direct/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->abortConnection()V

    throw v10

    :catch_3
    move-exception v10

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v31

    if-eqz v31, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v31, v0

    invoke-virtual {v10}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v10}, Lcz/msebera/android/httpclient/impl/client/TunnelRefusedException;->getResponse()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v20

    :cond_d
    if-eqz v20, :cond_e

    invoke-interface/range {v20 .. v20}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v31

    if-eqz v31, :cond_e

    invoke-interface/range {v20 .. v20}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v31

    if-nez v31, :cond_17

    :cond_e
    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->releaseConnection()V

    :goto_5
    return-object v20

    :cond_10
    invoke-virtual/range {v30 .. v30}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->isAbsolute()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-static/range {v19 .. v19}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v25

    goto/16 :goto_2

    :cond_11
    const-string v24, "indefinitely"

    goto/16 :goto_3

    :cond_12
    if-eqz v21, :cond_15

    invoke-interface/range {v20 .. v20}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    :cond_13
    :goto_6
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v31

    invoke-virtual/range {v22 .. v22}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->releaseConnection()V

    :cond_14
    move-object/from16 v22, v11

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->close()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v31

    sget-object v32, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual/range {v31 .. v32}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v31

    if-lez v31, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v31

    if-eqz v31, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v31

    if-eqz v31, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v31, v0

    const-string v32, "Resetting proxy auth state"

    invoke-virtual/range {v31 .. v32}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v31

    sget-object v32, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual/range {v31 .. v32}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->compareTo(Ljava/lang/Enum;)I

    move-result v31

    if-lez v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v31

    if-eqz v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v31

    if-eqz v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v31, v0

    const-string v32, "Resetting target auth state"

    invoke-virtual/range {v31 .. v32}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V
    :try_end_6
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_6

    :catch_4
    move-exception v10

    invoke-direct/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->abortConnection()V

    throw v10

    :cond_17
    :try_start_7
    invoke-interface/range {v20 .. v20}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v8

    new-instance v9, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-direct {v9, v8, v0, v1}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_7
    .catch Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception v10

    invoke-direct/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->abortConnection()V

    throw v10
.end method

.method protected handleResponse(Lcz/msebera/android/httpclient/impl/client/RoutedRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/impl/client/RoutedRequest;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;->getRequest()Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->isAuthenticating(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HttpHost;

    if-nez v5, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v5

    :cond_0
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v4

    if-gez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->connManager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v24

    new-instance v25, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getDefaultPort()I

    move-result v6

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v6, v8}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v5, v25

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v26

    invoke-virtual/range {v23 .. v23}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v7

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v20

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object v9, v5

    move-object/from16 v10, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_0
    return-object p1

    :cond_4
    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->authenticator:Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lcz/msebera/android/httpclient/client/AuthenticationStrategy;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lcz/msebera/android/httpclient/impl/client/HttpAuthenticator;->authenticate(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_5
    invoke-static/range {v19 .. v19}, Lcz/msebera/android/httpclient/client/params/HttpClientParams;->isRedirecting(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->isRedirected(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-lt v4, v6, :cond_6

    new-instance v4, Lcz/msebera/android/httpclient/client/RedirectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Maximum redirects ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") exceeded"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcz/msebera/android/httpclient/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectCount:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->virtualHost:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->redirectStrategy:Lcz/msebera/android/httpclient/client/RedirectStrategy;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Lcz/msebera/android/httpclient/client/RedirectStrategy;->getRedirect(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move-result-object v21

    invoke-virtual/range {v22 .. v22}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    invoke-interface/range {v21 .. v21}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v17

    if-nez v17, :cond_7

    new-instance v4, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Resetting target auth state"

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->targetAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-interface {v14}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Resetting proxy auth state"

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->proxyAuthState:Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->wrapRequest(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->determineRoute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v16

    new-instance v15, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcz/msebera/android/httpclient/impl/client/RoutedRequest;-><init>(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Redirecting to \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\' via "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 p1, v15

    goto/16 :goto_0

    :cond_a
    const/16 p1, 0x0

    goto/16 :goto_0
.end method

.method protected releaseConnection()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRequestDirector;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "IOException releasing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected rewriteRequestURI(Lcz/msebera/android/httpclient/impl/client/RequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    return-void

    :cond_0
    invoke-static {v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
