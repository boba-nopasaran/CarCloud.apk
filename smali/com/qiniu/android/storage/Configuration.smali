.class public final Lcom/qiniu/android/storage/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/storage/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final BLOCK_SIZE:I = 0x400000


# instance fields
.field public final chunkSize:I

.field public final connectTimeout:I

.field public dns:Lcom/qiniu/android/dns/DnsManager;

.field public final keyGen:Lcom/qiniu/android/storage/KeyGenerator;

.field public final proxy:Lcom/qiniu/android/http/Proxy;

.field public final putThreshold:I

.field public final recorder:Lcom/qiniu/android/storage/Recorder;

.field public final responseTimeout:I

.field public final retryMax:I

.field public final up:Lcom/qiniu/android/common/ServiceAddress;

.field public final upBackup:Lcom/qiniu/android/common/ServiceAddress;

.field public urlConverter:Lcom/qiniu/android/http/UrlConverter;


# direct methods
.method private constructor <init>(Lcom/qiniu/android/storage/Configuration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/ServiceAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->up:Lcom/qiniu/android/common/ServiceAddress;

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$100(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/ServiceAddress;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/ServiceAddress;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$200(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$300(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->putThreshold:I

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$400(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->connectTimeout:I

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$500(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->responseTimeout:I

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$600(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/Recorder;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$700(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/storage/KeyGenerator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/Configuration;->getKeyGen(Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$800(Lcom/qiniu/android/storage/Configuration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$900(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->proxy:Lcom/qiniu/android/http/Proxy;

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/http/UrlConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration;->initDns(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/dns/DnsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/storage/Configuration;->dns:Lcom/qiniu/android/dns/DnsManager;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/qiniu/android/storage/Configuration$Builder;->access$100(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/ServiceAddress;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/qiniu/android/storage/Configuration$Builder;Lcom/qiniu/android/storage/Configuration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/Configuration;-><init>(Lcom/qiniu/android/storage/Configuration$Builder;)V

    return-void
.end method

.method private getKeyGen(Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/KeyGenerator;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/qiniu/android/storage/Configuration$1;

    invoke-direct {p1, p0}, Lcom/qiniu/android/storage/Configuration$1;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    :cond_0
    return-object p1
.end method

.method private static initDns(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/dns/DnsManager;
    .locals 2

    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$1100(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/dns/DnsManager;

    move-result-object v0

    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$000(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/ServiceAddress;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qiniu/android/common/ServiceAddress;->addIpToDns(Lcom/qiniu/android/dns/DnsManager;)V

    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$100(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/ServiceAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/qiniu/android/storage/Configuration$Builder;->access$100(Lcom/qiniu/android/storage/Configuration$Builder;)Lcom/qiniu/android/common/ServiceAddress;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qiniu/android/common/ServiceAddress;->addIpToDns(Lcom/qiniu/android/dns/DnsManager;)V

    :cond_0
    return-object v0
.end method
