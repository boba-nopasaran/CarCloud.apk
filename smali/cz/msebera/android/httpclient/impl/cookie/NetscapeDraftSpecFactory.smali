.class public Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecFactory.java"

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v0
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    const-string v2, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_0
    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v2, v1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>()V

    goto :goto_0
.end method
