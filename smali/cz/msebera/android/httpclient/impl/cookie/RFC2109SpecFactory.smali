.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;
.super Ljava/lang/Object;
.source "RFC2109SpecFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v0
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 5

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const-string v3, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_0
    const-string v3, "http.protocol.single-cookie-header"

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-direct {v3, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>()V

    goto :goto_0
.end method
