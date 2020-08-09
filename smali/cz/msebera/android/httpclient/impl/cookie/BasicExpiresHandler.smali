.class public Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicExpiresHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    const-string v0, "Array of date patterns"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;->datepatterns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    const-string v0, "expires"

    return-object v0
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v1, "Cookie"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance v1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v2, "Missing value for \'expires\' attribute"

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;->datepatterns:[Ljava/lang/String;

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \'expires\' attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V

    return-void
.end method
