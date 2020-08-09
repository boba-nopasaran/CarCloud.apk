.class public Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;
.super Ljava/lang/Object;
.source "PoolingClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
.implements Lcz/msebera/android/httpclient/pool/ConnPoolControl;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/conn/ClientConnectionManager;",
        "Lcz/msebera/android/httpclient/pool/ConnPoolControl",
        "<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field private final pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

.field private final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 3

    const-wide/16 v0, -0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p1, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    new-instance v5, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "DNS resolver"

    invoke-static {p5, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    const/4 v4, 0x2

    const/16 v5, 0x14

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;IIJLjava/util/concurrent/TimeUnit;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 6

    const-wide/16 v2, -0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;JLjava/util/concurrent/TimeUnit;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method private format(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "[state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private format(Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[route: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "[state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v3, p1}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object v1

    const-string v3, "[total kept alive: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/pool/PoolStats;->getAvailable()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "route allocated: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getLeased()I

    move-result v4

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getAvailable()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/pool/PoolStats;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "total allocated: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/pool/PoolStats;->getLeased()I

    move-result v4

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/pool/PoolStats;->getAvailable()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/pool/PoolStats;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Closing expired connections"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->closeExpired()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

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
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->closeIdle(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method protected createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    invoke-direct {v0, p1, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

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
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public getMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->getMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)I

    move-result v0

    return v0
.end method

.method public getMaxTotal()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->getMaxTotal()I

    move-result v0

    return v0
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public getStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 1

    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->getStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method public getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->getTotalStats()Lcz/msebera/android/httpclient/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcz/msebera/android/httpclient/conn/ManagedClientConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v4, "Unexpected exception leasing connection from pool"

    invoke-virtual {v3, v4, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    const-string v4, "Pool entry with no connection"

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection leased: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {p0, v3}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_3
    new-instance v3, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-direct {v3, p0, v4, v1}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;

    const-string v4, "Timeout waiting for connection from pool"

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    instance-of v4, p1, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    const-string v5, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v4, v5}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v4

    if-ne v4, p0, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "Connection not obtained from this manager"

    invoke-static {v4, v5}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->detach()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p4, :cond_5

    move-object v4, p4

    :goto_3
    invoke-virtual {v0, p2, p3, v4}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can be kept alive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :try_start_4
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->release(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection released: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->format(Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {p0, v4}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_4
    monitor-exit v2

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :catch_0
    move-exception v1

    :try_start_5
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v5, "I/O exception shutting down released connection"

    invoke-virtual {v4, v5, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v4

    :try_start_6
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->isMarkedReusable()Z

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->release(Lcz/msebera/android/httpclient/pool/PoolEntry;Z)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    :try_start_7
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto/16 :goto_3

    :cond_6
    const-string v3, "indefinitely"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4
.end method

.method public requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .locals 4

    const-string v1, "HTTP route"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->format(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->formatStats(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v1, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager$1;

    invoke-direct {v1, p0, v0}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;Ljava/util/concurrent/Future;)V

    return-object v1
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public setMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->setMaxPerRoute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->setMaxTotal(I)V

    return-void
.end method

.method public shutdown()V
    .locals 3

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Connection manager is shutting down"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->pool:Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpConnPool;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Connection manager shut down"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/PoolingClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "I/O exception shutting down connection manager"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
