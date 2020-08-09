.class public final Lcom/qiniu/android/dns/local/HijackingDetectWrapper;
.super Ljava/lang/Object;
.source "HijackingDetectWrapper.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final resolver:Lcom/qiniu/android/dns/local/Resolver;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/dns/local/Resolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    invoke-virtual {v6, p1, p2}, Lcom/qiniu/android/dns/local/Resolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object v5

    iget-boolean v6, p1, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_2

    new-instance v6, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v7, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iget-object v8, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    iget-object v8, v8, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v6, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-eqz v6, :cond_4

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, v4, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v7, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-le v6, v7, :cond_3

    new-instance v6, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object v7, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iget-object v8, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    iget-object v8, v8, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    iget v9, v4, Lcom/qiniu/android/dns/Record;->ttl:I

    invoke-direct {v6, v7, v8, v9}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v5
.end method
