.class public final Lcom/qiniu/android/dns/local/AndroidDnsServer;
.super Ljava/lang/Object;
.source "AndroidDnsServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultResolver()Lcom/qiniu/android/dns/IResolver;
    .locals 1

    new-instance v0, Lcom/qiniu/android/dns/local/AndroidDnsServer$1;

    invoke-direct {v0}, Lcom/qiniu/android/dns/local/AndroidDnsServer$1;-><init>()V

    return-object v0
.end method

.method public static getByCommand()[Ljava/net/InetAddress;
    .locals 13

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "getprop"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    new-instance v7, Ljava/util/ArrayList;

    const/4 v10, 0x5

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v10, "]: ["

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    const/4 v10, 0x1

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v10, v8, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".dns"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".dns1"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".dns2"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".dns3"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".dns4"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_1
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v10, "AndroidDnsServer"

    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "Exception in findDNSByExec"

    invoke-virtual {v10, v11, v12, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v10, 0x0

    :goto_1
    return-object v10

    :cond_3
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/net/InetAddress;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getByReflection()[Ljava/net/InetAddress;
    .locals 15

    const/4 v11, 0x0

    :try_start_0
    const-string v10, "android.os.SystemProperties"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v10, "get"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    const/4 v10, 0x5

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x4

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v12, "net.dns1"

    aput-object v12, v1, v10

    const/4 v10, 0x1

    const-string v12, "net.dns2"

    aput-object v12, v1, v10

    const/4 v10, 0x2

    const-string v12, "net.dns3"

    aput-object v12, v1, v10

    const/4 v10, 0x3

    const-string v12, "net.dns4"

    aput-object v12, v1, v10

    array-length v5, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v7, v1, v3

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-virtual {v6, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v10, "AndroidDnsServer"

    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v10

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v13, "Exception in findDNSByReflection"

    invoke-virtual {v10, v12, v13, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v10, v11

    :goto_2
    return-object v10

    :cond_3
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/net/InetAddress;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
