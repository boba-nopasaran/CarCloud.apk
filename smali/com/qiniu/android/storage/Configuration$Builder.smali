.class public Lcom/qiniu/android/storage/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/storage/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private chunkSize:I

.field private connectTimeout:I

.field private dns:Lcom/qiniu/android/dns/DnsManager;

.field private keyGen:Lcom/qiniu/android/storage/KeyGenerator;

.field private proxy:Lcom/qiniu/android/http/Proxy;

.field private putThreshold:I

.field private recorder:Lcom/qiniu/android/storage/Recorder;

.field private responseTimeout:I

.field private retryMax:I

.field private up:Lcom/qiniu/android/common/ServiceAddress;

.field private upBackup:Lcom/qiniu/android/common/ServiceAddress;

.field private urlConverter:Lcom/qiniu/android/http/UrlConverter;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    iput-object v5, p0, Lcom/qiniu/android/storage/Configuration$Builder;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    iput-object v5, p0, Lcom/qiniu/android/storage/Configuration$Builder;->proxy:Lcom/qiniu/android/http/Proxy;

    const/high16 v4, 0x40000

    iput v4, p0, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I

    const/high16 v4, 0x80000

    iput v4, p0, Lcom/qiniu/android/storage/Configuration$Builder;->putThreshold:I

    const/16 v4, 0xa

    iput v4, p0, Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout:I

    const/16 v4, 0x3c

    iput v4, p0, Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout:I

    const/4 v4, 0x3

    iput v4, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryMax:I

    iput-object v5, p0, Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    iput-object v5, p0, Lcom/qiniu/android/storage/Configuration$Builder;->dns:Lcom/qiniu/android/dns/DnsManager;

    sget-object v4, Lcom/qiniu/android/common/Zone;->zone0:Lcom/qiniu/android/common/Zone;

    iget-object v4, v4, Lcom/qiniu/android/common/Zone;->up:Lcom/qiniu/android/common/ServiceAddress;

    iput-object v4, p0, Lcom/qiniu/android/storage/Configuration$Builder;->up:Lcom/qiniu/android/common/ServiceAddress;

    sget-object v4, Lcom/qiniu/android/common/Zone;->zone0:Lcom/qiniu/android/common/Zone;

    iget-object v4, v4, Lcom/qiniu/android/common/Zone;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iput-object v4, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->defaultResolver()Lcom/qiniu/android/dns/IResolver;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/qiniu/android/dns/local/Resolver;

    const-string v4, "119.29.29.29"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qiniu/android/dns/local/Resolver;-><init>(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    new-instance v4, Lcom/qiniu/android/dns/DnsManager;

    sget-object v5, Lcom/qiniu/android/dns/NetworkInfo;->normal:Lcom/qiniu/android/dns/NetworkInfo;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/qiniu/android/dns/IResolver;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/qiniu/android/dns/DnsManager;-><init>(Lcom/qiniu/android/dns/NetworkInfo;[Lcom/qiniu/android/dns/IResolver;)V

    iput-object v4, p0, Lcom/qiniu/android/storage/Configuration$Builder;->dns:Lcom/qiniu/android/dns/DnsManager;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/ServiceAddress;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->up:Lcom/qiniu/android/common/ServiceAddress;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/ServiceAddress;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/dns/DnsManager;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->dns:Lcom/qiniu/android/dns/DnsManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->putThreshold:I

    return v0
.end method

.method static synthetic access$400(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout:I

    return v0
.end method

.method static synthetic access$500(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout:I

    return v0
.end method

.method static synthetic access$600(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/Recorder;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/KeyGenerator;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qiniu/android/storage/Configuration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryMax:I

    return v0
.end method

.method static synthetic access$900(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->proxy:Lcom/qiniu/android/http/Proxy;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/qiniu/android/storage/Configuration;
    .locals 2

    new-instance v0, Lcom/qiniu/android/storage/Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qiniu/android/storage/Configuration;-><init>(Lcom/qiniu/android/storage/Configuration$Builder;Lcom/qiniu/android/storage/Configuration$1;)V

    return-object v0
.end method

.method public chunkSize(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->chunkSize:I

    return-object p0
.end method

.method public connectTimeout(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->connectTimeout:I

    return-object p0
.end method

.method public dns(Lcom/qiniu/android/dns/DnsManager;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->dns:Lcom/qiniu/android/dns/DnsManager;

    return-object p0
.end method

.method public proxy(Lcom/qiniu/android/http/Proxy;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->proxy:Lcom/qiniu/android/http/Proxy;

    return-object p0
.end method

.method public putThreshhold(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->putThreshold:I

    return-object p0
.end method

.method public recorder(Lcom/qiniu/android/storage/Recorder;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    return-object p0
.end method

.method public recorder(Lcom/qiniu/android/storage/Recorder;Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->recorder:Lcom/qiniu/android/storage/Recorder;

    iput-object p2, p0, Lcom/qiniu/android/storage/Configuration$Builder;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    return-object p0
.end method

.method public responseTimeout(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->responseTimeout:I

    return-object p0
.end method

.method public retryMax(I)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->retryMax:I

    return-object p0
.end method

.method public urlConverter(Lcom/qiniu/android/http/UrlConverter;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/storage/Configuration$Builder;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    return-object p0
.end method

.method public zone(Lcom/qiniu/android/common/Zone;)Lcom/qiniu/android/storage/Configuration$Builder;
    .locals 1

    iget-object v0, p1, Lcom/qiniu/android/common/Zone;->up:Lcom/qiniu/android/common/ServiceAddress;

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->up:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v0, p1, Lcom/qiniu/android/common/Zone;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration$Builder;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    return-object p0
.end method
