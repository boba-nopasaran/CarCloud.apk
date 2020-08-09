.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;
.super Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;
.source "RFC2965Spec.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Obsolete;
.end annotation

.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method varargs constructor <init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 4

    const/16 v0, 0xa

    new-array v1, v0, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    const/4 v0, 0x0

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v0, 0x1

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v2, 0x7

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v0, 0x8

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    aput-object v2, v1, v0

    const/16 v0, 0x9

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    aput-object v2, v1, v0

    invoke-direct {p0, p2, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    return-void

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->DATE_PATTERNS:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static adjustEffectiveHost(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .locals 8

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_3

    :cond_0
    const/4 v3, 0x0

    :cond_1
    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".local"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getPort()I

    move-result v5

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->isSecure()Z

    move-result v7

    invoke-direct {v4, v1, v5, v6, v7}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    move-object p0, v4

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createCookies([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 22
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

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v2, p1

    array-length v14, v2

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v14, :cond_5

    aget-object v10, v2, v12

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v18

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    new-instance v19, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v20, "Cookie name may not be empty"

    invoke-direct/range {v19 .. v20}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_1
    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;

    move-object/from16 v0, v18

    invoke-direct {v6, v15, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->setPath(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->setDomain(Ljava/lang/String;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getPort()I

    move-result v21

    aput v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->setPorts([I)V

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getParameters()[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v5

    new-instance v4, Ljava/util/HashMap;

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    array-length v0, v5

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    :goto_1
    if-ltz v13, :cond_2

    aget-object v16, v5, v13

    invoke-interface/range {v16 .. v16}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/NameValuePair;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie2;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->findAttribHandler(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v6, v0}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto/16 :goto_0

    :cond_5
    return-object v7
.end method


# virtual methods
.method protected formatCookieAsVer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/cookie/Cookie;I)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->formatCookieAsVer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/cookie/Cookie;I)V

    instance-of v4, p2, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v4, :cond_2

    move-object v4, p2

    check-cast v4, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string v5, "port"

    invoke-interface {v4, v5}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "; $Port"

    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v4, "=\""

    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p2}, Lcz/msebera/android/httpclient/cookie/Cookie;->getPorts()[I

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    const-string v4, ","

    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_0
    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "\""

    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    const-string v1, "Cookie2"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, "$Version="

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v1, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v1
.end method

.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    return v0
.end method

.method public parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
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

    const-string v1, "Header"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Cookie origin"

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set-Cookie2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized cookie header \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->createCookies([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 1
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

    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->createCookies([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "rfc2965"

    return-object v0
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->adjustEffectiveHost(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    return-void
.end method
