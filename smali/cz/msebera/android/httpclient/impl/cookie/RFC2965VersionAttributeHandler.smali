.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965VersionAttributeHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    const-string v0, "version"

    return-object v0
.end method

.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v2, "Cookie"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance v2, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v3, "Missing value for version attribute"

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-gez v1, :cond_1

    new-instance v2, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v3, "Invalid cookie version."

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/cookie/SetCookie;->setVersion(I)V

    return-void
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v0, :cond_0

    check-cast p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string v0, "version"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    const-string v1, "Violates RFC 2965. Version attribute is required."

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
