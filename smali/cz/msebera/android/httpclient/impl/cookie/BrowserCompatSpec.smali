.class public Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;
.super Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final DEFAULT_DATE_PATTERNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    const/4 v0, 0x0

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatVersionAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatVersionAttributeHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v0, 0x1

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v2, 0x2

    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_IE_MEDIUM:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    if-ne p2, v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$1;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$1;-><init>()V

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x3

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v0, 0x5

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v2, v1, v0

    const/4 v2, 0x6

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    return-void

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    goto :goto_1
.end method

.method private static isQuoteEnclosed(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    const-string v6, "List of cookies"

    invoke-static {p1, v6}, Lcz/msebera/android/httpclient/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x14

    invoke-direct {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    const-string v6, "Cookie"

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/cookie/Cookie;

    if-lez v5, :cond_0

    const-string v6, "; "

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v6

    if-lez v6, :cond_2

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->isQuoteEnclosed(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    new-instance v7, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    invoke-direct {v7, v2, v3}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v6, v0}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 25
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

    const-string v22, "Header"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v22, "Cookie origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v22, "Set-Cookie"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    new-instance v22, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unrecognized cookie header \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v12

    const/16 v21, 0x0

    const/16 v17, 0x0

    move-object v2, v12

    array-length v15, v2

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_3

    aget-object v11, v2, v13

    const-string v22, "version"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v22

    if-eqz v22, :cond_1

    const/16 v21, 0x1

    :cond_1
    const-string v22, "expires"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v22

    if-eqz v22, :cond_2

    const/16 v17, 0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    if-nez v17, :cond_4

    if-nez v21, :cond_c

    :cond_4
    sget-object v18, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    move-object/from16 v0, p1

    instance-of v0, v0, Lcz/msebera/android/httpclient/FormattedHeader;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v22, p1

    check-cast v22, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface/range {v22 .. v22}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v5

    new-instance v7, Lcz/msebera/android/httpclient/message/ParserCursor;

    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v22

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v0, v1}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v20

    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_8

    :cond_5
    new-instance v22, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v23, "Cookie name may not be empty"

    invoke-direct/range {v22 .. v23}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_6
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_7

    new-instance v22, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v23, "Header value is null"

    invoke-direct/range {v22 .. v23}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_7
    new-instance v5, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v5, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v7, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/16 v22, 0x0

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v0, v1}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    goto :goto_1

    :cond_8
    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getParameters()[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v4

    array-length v0, v4

    move/from16 v22, v0

    add-int/lit8 v14, v22, -0x1

    :goto_2
    if-ltz v14, :cond_a

    aget-object v3, v4, v14

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->findAttribHandler(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v9, v6, v0}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    :cond_a
    if-eqz v17, :cond_b

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setVersion(I)V

    :cond_b
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    :goto_3
    return-object v22

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v22

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "compatibility"

    return-object v0
.end method
