.class public final Lcom/qiniu/android/http/ThreadSafeClientConnManager;
.super Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "ThreadSafeClientConnManager.java"


# instance fields
.field private final dns:Lcom/qiniu/android/dns/DnsManager;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcom/qiniu/android/dns/DnsManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    iput-object p3, p0, Lcom/qiniu/android/http/ThreadSafeClientConnManager;->dns:Lcom/qiniu/android/dns/DnsManager;

    return-void
.end method


# virtual methods
.method protected createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .locals 2

    iget-object v1, p0, Lcom/qiniu/android/http/ThreadSafeClientConnManager;->dns:Lcom/qiniu/android/dns/DnsManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/qiniu/android/http/AsyncHttpClientMod;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/dns/DnsManager;

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/qiniu/android/http/ClientConnectionOperator;

    invoke-direct {v1, p1, v0}, Lcom/qiniu/android/http/ClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcom/qiniu/android/dns/DnsManager;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/http/ThreadSafeClientConnManager;->dns:Lcom/qiniu/android/dns/DnsManager;

    goto :goto_0
.end method
