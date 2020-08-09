.class final Lcom/qiniu/android/dns/local/AndroidDnsServer$1;
.super Ljava/lang/Object;
.source "AndroidDnsServer.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/local/AndroidDnsServer;->defaultResolver()Lcom/qiniu/android/dns/IResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->getByReflection()[Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->getByCommand()[Ljava/net/InetAddress;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v8, Ljava/io/IOException;

    const-string v9, "cant get local dns server"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    new-instance v7, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;

    new-instance v8, Lcom/qiniu/android/dns/local/Resolver;

    aget-object v9, v0, v10

    invoke-direct {v8, v9}, Lcom/qiniu/android/dns/local/Resolver;-><init>(Ljava/net/InetAddress;)V

    invoke-direct {v7, v8}, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;-><init>(Lcom/qiniu/android/dns/local/Resolver;)V

    invoke-interface {v7, p1, p2}, Lcom/qiniu/android/dns/IResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object v6

    iget-boolean v8, p1, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    if-eqz v8, :cond_4

    const/4 v2, 0x0

    move-object v1, v6

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_4

    new-instance v8, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v9, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget v8, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-eqz v8, :cond_6

    move-object v1, v6

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v8

    if-nez v8, :cond_5

    iget v8, v5, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v9, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-le v8, v9, :cond_5

    new-instance v8, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v9, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    iget v11, v5, Lcom/qiniu/android/dns/Record;->ttl:I

    invoke-direct {v8, v9, v10, v11}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object v6
.end method
