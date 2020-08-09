.class Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;
.super Ljava/lang/Object;
.source "ManagedClientConnectionImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile duration:J

.field private final manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private final operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field private volatile poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

.field private volatile reusable:Z


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection manager"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection operator"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP pool entry"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    return-void
.end method

.method private ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    return-object v1
.end method

.method private ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method

.method private getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    goto :goto_0
.end method


# virtual methods
.method public abortConnection()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public bind(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->reset()V

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V

    :cond_0
    return-void
.end method

.method detach()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->flush()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getLocalPort()I
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getLocalPort()I

    move-result v1

    return v1
.end method

.method public getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;

    move-result-object v1

    return-object v1
.end method

.method getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getRemotePort()I
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getRemotePort()I

    move-result v1

    return v1
.end method

.method public getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getEffectiveRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v1

    return-object v1
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 4

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    instance-of v3, v2, Ljavax/net/ssl/SSLSocket;

    if-eqz v3, :cond_0

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public getSocketTimeout()I
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocketTimeout()I

    move-result v1

    return v1
.end method

.method public getState()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isMarkedReusable()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return v0
.end method

.method public isOpen()Z
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isResponseAvailable(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isResponseAvailable(I)Z

    move-result v1

    return v1
.end method

.method public isSecure()Z
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result v1

    return v1
.end method

.method public isStale()Z
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isStale()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public layerProtocol(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "HTTP parameters"

    invoke-static {p2, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v3, :cond_0

    new-instance v3, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v2

    const-string v3, "Route tracker"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v3

    const-string v4, "Connection not open"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v3

    const-string v4, "Protocol layering without a tunnel not supported"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isLayered()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string v4, "Multiple protocol layering not supported"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-interface {v3, v0, v1, p1, p2}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->updateSecureConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v2

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layerProtocol(Z)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public markReusable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method

.method public open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v7

    const-string v0, "Route tracker"

    invoke-static {v7, v0}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Connection already open"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v6

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    if-eqz v6, :cond_2

    move-object v2, v6

    :goto_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->openConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v7

    if-nez v6, :cond_4

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectTarget(Z)V

    :goto_2
    monitor-exit p0

    return-void

    :cond_4
    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    invoke-virtual {v7, v6, v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method public receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public releaseConnection()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    goto :goto_0
.end method

.method public setSocketTimeout(I)V
    .locals 1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->reset()V

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->shutdown()V

    :cond_0
    return-void
.end method

.method public tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "Next proxy"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "HTTP parameters"

    invoke-static {p3, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v2, :cond_0

    new-instance v2, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v1

    const-string v2, "Route tracker"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v2

    const-string v3, "Connection not open"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public tunnelTarget(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "HTTP parameters"

    invoke-static {p2, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v3, :cond_0

    new-instance v3, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v2

    const-string v3, "Route tracker"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v3

    const-string v4, "Connection not open"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string v4, "Connection is already tunnelled"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, p1, p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelTarget(Z)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public unmarkReusable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method
