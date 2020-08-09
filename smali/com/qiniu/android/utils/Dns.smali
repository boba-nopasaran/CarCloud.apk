.class public final Lcom/qiniu/android/utils/Dns;
.super Ljava/lang/Object;
.source "Dns.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/qiniu/android/utils/Dns;->getAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public static getAddresses(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    :cond_0
    return-object v2
.end method

.method public static getAddressesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/qiniu/android/utils/Dns;->getAddresses(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v0, v1}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
