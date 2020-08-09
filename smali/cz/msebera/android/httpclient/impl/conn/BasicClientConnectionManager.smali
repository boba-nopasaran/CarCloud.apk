.class public Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;
.super Ljava/lang/Object;
.source "BasicClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field private conn:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

.field private volatile shutdown:Z
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    return-void
.end method

.method private assertNotShutdown()V
    .locals 2

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->shutdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Connection manager has been shut down"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shutdownConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "I/O exception shutting down connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->assertNotShutdown()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v2, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->close()V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->reset()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const-string v4, "Time unit"

    invoke-static {p3, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->assertNotShutdown()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getUpdated()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->close()V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->reset()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .locals 12

    const-string v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->assertNotShutdown()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get connection for route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->conn:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getPlannedRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_2

    sget-object v0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->createConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v5

    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-wide/16 v6, 0x0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0, v10, v11}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->close()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->reset()V

    :cond_3
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-direct {v0, p0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->conn:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->conn:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    monitor-exit p0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    instance-of v3, p1, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    const-string v4, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v3

    if-nez v3, :cond_1

    monitor-exit v0

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    if-ne v1, p0, :cond_2

    const/4 v3, 0x1

    :goto_1
    const-string v4, "Connection not obtained from this manager"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->shutdown:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->shutdownConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->shutdownConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    :cond_4
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz p4, :cond_7

    move-object v3, p4

    :goto_2
    invoke-virtual {v4, p2, p3, v3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-lez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection can be kept alive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :try_start_4
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->detach()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    const/4 v3, 0x0

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->conn:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    :cond_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_7
    :try_start_6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_2

    :cond_8
    const-string v2, "indefinitely"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->detach()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    const/4 v4, 0x0

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->conn:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    :cond_9
    throw v3

    :catchall_2
    move-exception v3

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public final requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->conn:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->conn:Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
