.class public final Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;
.super Ljava/lang/Object;
.source "SchemeRegistryFactory.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 5

    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v2, "http"

    const/16 v3, 0x50

    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    return-object v0
.end method

.method public static createSystemDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 5

    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v2, "http"

    const/16 v3, 0x50

    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    new-instance v1, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSystemSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    return-object v0
.end method
