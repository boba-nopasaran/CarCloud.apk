.class public final Lcom/qiniu/android/http/AsyncHttpClientMod;
.super Lcom/loopj/android/http/AsyncHttpClient;
.source "AsyncHttpClientMod.java"


# static fields
.field static final ip:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final local:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/qiniu/android/dns/DnsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dns:Lcom/qiniu/android/dns/DnsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/AsyncHttpClientMod;->local:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/qiniu/android/http/AsyncHttpClientMod;->ip:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lcom/qiniu/android/dns/DnsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/http/AsyncHttpClientMod;->dns:Lcom/qiniu/android/dns/DnsManager;

    return-void
.end method

.method public static create(Lcom/qiniu/android/dns/DnsManager;)Lcom/qiniu/android/http/AsyncHttpClientMod;
    .locals 2

    sget-object v1, Lcom/qiniu/android/http/AsyncHttpClientMod;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v0, Lcom/qiniu/android/http/AsyncHttpClientMod;

    invoke-direct {v0, p0}, Lcom/qiniu/android/http/AsyncHttpClientMod;-><init>(Lcom/qiniu/android/dns/DnsManager;)V

    sget-object v1, Lcom/qiniu/android/http/AsyncHttpClientMod;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    return-object v0
.end method


# virtual methods
.method protected createConnectionManager(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/params/BasicHttpParams;)Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 2

    iget-object v1, p0, Lcom/qiniu/android/http/AsyncHttpClientMod;->dns:Lcom/qiniu/android/dns/DnsManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/qiniu/android/http/AsyncHttpClientMod;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/dns/DnsManager;

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/qiniu/android/http/ThreadSafeClientConnManager;

    invoke-direct {v1, p2, p1, v0}, Lcom/qiniu/android/http/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcom/qiniu/android/dns/DnsManager;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/http/AsyncHttpClientMod;->dns:Lcom/qiniu/android/dns/DnsManager;

    goto :goto_0
.end method
