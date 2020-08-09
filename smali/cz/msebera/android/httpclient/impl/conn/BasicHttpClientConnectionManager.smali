.class public Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;
.super Ljava/lang/Object;
.source "BasicHttpClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field private conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private connConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

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

.field private final connectionOperator:Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;

.field private expiry:J
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private leased:Z
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private updated:J
    .annotation build Lcz/msebera/android/httpclient/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->getDefaultRegistry()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, v1}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;",
            "Lcz/msebera/android/httpclient/conn/SchemePortResolver;",
            "Lcz/msebera/android/httpclient/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;

    invoke-direct {v0, p1, p3, p4}, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/config/Lookup;Lcz/msebera/android/httpclient/conn/SchemePortResolver;Lcz/msebera/android/httpclient/conn/DnsResolver;)V

    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;",
            "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory",
            "<",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Connection operator"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->connectionOperator:Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->expiry:J

    sget-object v0, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    sget-object v0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->connConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;

    goto :goto_0
.end method

.method private checkExpiry()V
    .locals 6

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->expiry:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection expired @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->expiry:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->closeConnection()V

    :cond_1
    return-void
.end method

.method private closeConnection()V
    .locals 3

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Closing connection"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "I/O exception closing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getDefaultRegistry()Lcz/msebera/android/httpclient/config/Registry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/config/Registry",
            "<",
            "Lcz/msebera/android/httpclient/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "http"

    invoke-static {}, Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/socket/PlainConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "https"

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object v0

    return-object v0
.end method

.method private shutdownConnection()V
    .locals 3

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Shutting down connection"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "I/O exception shutting down connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->shutdown()V

    return-void
.end method

.method public declared-synchronized closeExpiredConnections()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->checkExpiry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v4, "Time unit"

    invoke-static {p3, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    if-nez v4, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    const-wide/16 v2, 0x0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    iget-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->updated:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->closeConnection()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public connect(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;ILcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Connection"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    :goto_1
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->connectionOperator:Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    move v4, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;->connect(Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;ILcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method declared-synchronized getConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/HttpClientConnection;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    :goto_0
    const-string v3, "Connection manager has been shut down"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get connection for route "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    if-nez v2, :cond_5

    :goto_1
    const-string v1, "Connection is still allocated"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->closeConnection()V

    :cond_2
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->checkExpiry()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->connFactory:Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->connConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;->create(Ljava/lang/Object;Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectionConfig()Lcz/msebera/android/httpclient/config/ConnectionConfig;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->connConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-object v0
.end method

.method public declared-synchronized getSocketConfig()Lcz/msebera/android/httpclient/config/SocketConfig;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getState()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string v2, "Connection"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "Connection not obtained from this manager"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->updated:J

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    const/4 v1, 0x0

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->expiry:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->leased:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_3
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->state:Ljava/lang/Object;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    cmp-long v1, p3, v4

    if-lez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection can be kept alive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_4
    cmp-long v1, p3, v4

    if-lez v1, :cond_6

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->updated:J

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->expiry:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->leased:Z

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :try_start_5
    const-string v0, "indefinitely"

    goto :goto_2

    :cond_6
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->expiry:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public final requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ConnectionRequest;
    .locals 1

    const-string v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method public routeComplete(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized setConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :goto_0
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->connConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :goto_0
    :try_start_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->isShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->shutdownConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public upgrade(Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Connection"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->connectionOperator:Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicHttpClientConnectionManager;->conn:Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionOperator;->upgrade(Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
