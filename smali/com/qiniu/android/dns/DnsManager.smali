.class public final Lcom/qiniu/android/dns/DnsManager;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/DnsManager$1;,
        Lcom/qiniu/android/dns/DnsManager$ShuffleIps;
    }
.end annotation


# instance fields
.field private final cache:Lcom/qiniu/android/dns/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qiniu/android/dns/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation
.end field

.field private final hosts:Lcom/qiniu/android/dns/local/Hosts;

.field private volatile index:I

.field private volatile info:Lcom/qiniu/android/dns/NetworkInfo;

.field private final resolvers:[Lcom/qiniu/android/dns/IResolver;

.field private final sorter:Lcom/qiniu/android/dns/IpSorter;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qiniu/android/dns/DnsManager;-><init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;Lcom/qiniu/android/dns/IpSorter;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;Lcom/qiniu/android/dns/IpSorter;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qiniu/android/dns/local/Hosts;

    invoke-direct {v0}, Lcom/qiniu/android/dns/local/Hosts;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    iput-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    :cond_0
    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-virtual {p2}, [Lcom/qiniu/android/dns/IResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiniu/android/dns/IResolver;

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    new-instance v0, Lcom/qiniu/android/dns/util/LruCache;

    invoke-direct {v0}, Lcom/qiniu/android/dns/util/LruCache;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    if-nez p3, :cond_1

    new-instance p3, Lcom/qiniu/android/dns/DnsManager$ShuffleIps;

    invoke-direct {p3, v1}, Lcom/qiniu/android/dns/DnsManager$ShuffleIps;-><init>(Lcom/qiniu/android/dns/DnsManager$1;)V

    :cond_1
    iput-object p3, p0, Lcom/qiniu/android/dns/DnsManager;->sorter:Lcom/qiniu/android/dns/IpSorter;

    return-void
.end method

.method private clearCache()V
    .locals 2

    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v0}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private queryInternal(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/qiniu/android/dns/Domain;->hostsFirst:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/qiniu/android/dns/local/Hosts;->query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    array-length v12, v10

    if-eqz v12, :cond_0

    :goto_0
    return-object v10

    :cond_0
    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v13

    :try_start_0
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    sget-object v14, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/qiniu/android/dns/Network;->isNetworkChanged()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    invoke-virtual {v12}, Lcom/qiniu/android/dns/util/LruCache;->clear()V

    iget-object v14, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v12, 0x0

    :try_start_1
    iput v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v7, 0x0

    iget v3, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    const/4 v4, 0x0

    :goto_1
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v12, v12

    if-ge v4, v12, :cond_5

    add-int v12, v3, v4

    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v13, v13

    rem-int v8, v12, v13

    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v5

    :try_start_3
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    aget-object v12, v12, v8

    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13}, Lcom/qiniu/android/dns/IResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    :try_end_3
    .catch Lcom/qiniu/android/dns/http/DomainNotOwn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    :goto_2
    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v6

    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    if-ne v12, v1, :cond_5

    if-eqz v9, :cond_2

    array-length v12, v9

    if-nez v12, :cond_5

    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v13

    :try_start_4
    iget v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    if-ne v12, v3, :cond_3

    iget v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    iget v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    iget-object v14, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    array-length v14, v14

    if-ne v12, v14, :cond_3

    const/4 v12, 0x0

    iput v12, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    :cond_3
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v12

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v12

    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v12

    :cond_4
    :try_start_7
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/qiniu/android/dns/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, [Lcom/qiniu/android/dns/Record;

    move-object v9, v0

    if-eqz v9, :cond_1

    array-length v12, v9

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v12}, Lcom/qiniu/android/dns/Record;->isExpired()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v9}, Lcom/qiniu/android/dns/DnsManager;->records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;

    move-result-object v10

    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v7, v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_2
    move-exception v12

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v12

    :cond_5
    if-eqz v9, :cond_6

    array-length v12, v9

    if-nez v12, :cond_9

    :cond_6
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/qiniu/android/dns/Domain;->hostsFirst:Z

    if-nez v12, :cond_7

    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/qiniu/android/dns/local/Hosts;->query(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    array-length v12, v11

    if-eqz v12, :cond_7

    move-object v10, v11

    goto/16 :goto_0

    :cond_7
    if-eqz v7, :cond_8

    throw v7

    :cond_8
    new-instance v12, Ljava/net/UnknownHostException;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_9
    invoke-static {v9}, Lcom/qiniu/android/dns/DnsManager;->trimCname([Lcom/qiniu/android/dns/Record;)[Lcom/qiniu/android/dns/Record;

    move-result-object v9

    array-length v12, v9

    if-nez v12, :cond_a

    new-instance v12, Ljava/net/UnknownHostException;

    const-string v13, "no A records"

    invoke-direct {v12, v13}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_a
    iget-object v13, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    monitor-enter v13

    :try_start_9
    iget-object v12, p0, Lcom/qiniu/android/dns/DnsManager;->cache:Lcom/qiniu/android/dns/util/LruCache;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    invoke-virtual {v12, v14, v9}, Lcom/qiniu/android/dns/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/qiniu/android/dns/util/LruCache;

    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {v9}, Lcom/qiniu/android/dns/DnsManager;->records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :catchall_3
    move-exception v12

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v12
.end method

.method private static records2Ip([Lcom/qiniu/android/dns/Record;)[Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v6, p0

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    iget-object v6, v4, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static trimCname([Lcom/qiniu/android/dns/Record;)[Lcom/qiniu/android/dns/Record;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    iget v5, v4, Lcom/qiniu/android/dns/Record;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/qiniu/android/dns/Record;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/qiniu/android/dns/Record;

    return-object v5
.end method


# virtual methods
.method public onNetworkChange(Lcom/qiniu/android/dns/NetworkInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/qiniu/android/dns/DnsManager;->clearCache()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    :cond_0
    iput-object p1, p0, Lcom/qiniu/android/dns/DnsManager;->info:Lcom/qiniu/android/dns/NetworkInfo;

    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->resolvers:[Lcom/qiniu/android/dns/IResolver;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/qiniu/android/dns/DnsManager;->index:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putHosts(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/DnsManager;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/local/Hosts;

    return-object p0
.end method

.method public putHosts(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/android/dns/DnsManager;
    .locals 2

    iget-object v0, p0, Lcom/qiniu/android/dns/DnsManager;->hosts:Lcom/qiniu/android/dns/local/Hosts;

    new-instance v1, Lcom/qiniu/android/dns/local/Hosts$Value;

    invoke-direct {v1, p2, p3}, Lcom/qiniu/android/dns/local/Hosts$Value;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Lcom/qiniu/android/dns/local/Hosts;->put(Ljava/lang/String;Lcom/qiniu/android/dns/local/Hosts$Value;)Lcom/qiniu/android/dns/local/Hosts;

    return-object p0
.end method

.method public query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/qiniu/android/dns/DnsManager;->queryInternal(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/qiniu/android/dns/DnsManager;->sorter:Lcom/qiniu/android/dns/IpSorter;

    invoke-interface {v1, v0}, Lcom/qiniu/android/dns/IpSorter;->sort([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/qiniu/android/dns/Domain;

    invoke-direct {v0, p1}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qiniu/android/dns/DnsManager;->query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public queryInetAdress(Lcom/qiniu/android/dns/Domain;)[Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qiniu/android/dns/DnsManager;->query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v0, v3, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
