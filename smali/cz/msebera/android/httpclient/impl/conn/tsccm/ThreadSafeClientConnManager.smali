.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field protected final connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

.field protected final connectionPool:Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 3

    const-wide/16 v0, -0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    new-instance v5, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-virtual {p0, p2, p3, p4}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme registry"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    new-instance v0, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;

    return-void
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Closing expired connections"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->closeExpiredConnections()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing connections idle longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method protected createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createConnectionPool(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/impl/conn/tsccm/AbstractConnPool;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected createConnectionPool(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;
    .locals 7

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    const/16 v3, 0x14

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V

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
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectionsInPool()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool()I

    move-result v0

    return v0
.end method

.method public getConnectionsInPool(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    return v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public getMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->getMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    return v0
.end method

.method public getMaxTotal()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->getMaxTotalConnections()I

    move-result v0

    return v0
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 10

    instance-of v1, p1, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;

    const-string v4, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v1, v4}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v1

    if-ne v1, p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v4, "Connection not obtained from this manager"

    invoke-static {v1, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;

    if-nez v2, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v3

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Released connection is reusable."

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->freeEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    :goto_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    :try_start_3
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Released connection is not reusable."

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_4
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Exception shutting down released connection."

    invoke-virtual {v1, v4, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    :try_start_5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v3

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Released connection is reusable."

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->freeEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Released connection is not reusable."

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v8, v1

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v3

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Released connection is reusable."

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->freeEntry(Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    throw v8

    :cond_a
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Released connection is not reusable."

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5
.end method

.method public requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .locals 2

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v1, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->requestPoolEntry(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;Lcz/msebera/android/httpclient/impl/conn/tsccm/PoolEntryRequest;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    return-object v1
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public setMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->connPerRoute:Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/conn/params/ConnPerRouteBean;->setMaxForRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->setMaxTotalConnections(I)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Shutting down"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;->pool:Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ConnPoolByRoute;->shutdown()V

    return-void
.end method
