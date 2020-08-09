.class public abstract Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;
.source "CookieSpecBase.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method protected varargs constructor <init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    return-void
.end method

.method protected static getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 3

    const-string v2, "Cookie"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Cookie origin"

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcz/msebera/android/httpclient/HeaderElement;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v1, p1

    array-length v10, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_4

    aget-object v7, v1, v8

    invoke-interface {v7}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v13

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    new-instance v14, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v15, "Cookie name may not be empty"

    invoke-direct {v14, v15}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    new-instance v4, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-direct {v4, v11, v13}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    invoke-interface {v7}, Lcz/msebera/android/httpclient/HeaderElement;->getParameters()[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v3

    array-length v14, v3

    add-int/lit8 v9, v14, -0x1

    :goto_1
    if-ltz v9, :cond_3

    aget-object v2, v3, v9

    invoke-interface {v2}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v12, v14}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->findAttribHandler(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v4, v14}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    return-object v5
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v2, "Cookie"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Cookie origin"

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_0

    :cond_0
    return-void
.end method
