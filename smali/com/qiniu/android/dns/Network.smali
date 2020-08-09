.class public final Lcom/qiniu/android/dns/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field private static previousIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/qiniu/android/dns/Network;->previousIp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIp()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "114.114.114.114"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/16 v5, 0x35

    invoke-virtual {v4, v0, v5}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v5, ""

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public static declared-synchronized isNetworkChanged()Z
    .locals 3

    const-class v2, Lcom/qiniu/android/dns/Network;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/qiniu/android/dns/Network;->getIp()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/qiniu/android/dns/Network;->previousIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    sput-object v0, Lcom/qiniu/android/dns/Network;->previousIp:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
