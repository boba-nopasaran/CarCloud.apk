.class public final Lcom/qiniu/android/common/ServiceAddress;
.super Ljava/lang/Object;
.source "ServiceAddress.java"


# instance fields
.field public final address:Ljava/net/URI;

.field public final backupIps:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/common/ServiceAddress;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/qiniu/android/common/ServiceAddress;->uri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    new-array p2, v0, [Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lcom/qiniu/android/common/ServiceAddress;->backupIps:[Ljava/lang/String;

    return-void
.end method

.method private static uri(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIpToDns(Lcom/qiniu/android/dns/DnsManager;)V
    .locals 5

    iget-object v0, p0, Lcom/qiniu/android/common/ServiceAddress;->backupIps:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    iget-object v4, p0, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Lcom/qiniu/android/dns/DnsManager;->putHosts(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/dns/DnsManager;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
