.class public Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;
.super Ljava/lang/Object;
.source "DefaultCookieSpec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpec;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

.field private final obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

.field private final strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    const/16 v1, 0x9

    new-array v1, v1, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, p2, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    const/4 v1, 0x6

    new-array v1, v1, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, p2, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    const/4 v0, 0x5

    new-array v2, v0, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    aput-object v0, v2, v5

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v0, v2, v4

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v0, v2, v6

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v0, v2, v7

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    invoke-direct {v3, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v3, v2, v8

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    return-void

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "EEE, dd-MMM-yy HH:mm:ss z"

    aput-object v4, v0, v5

    goto :goto_0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
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

    const-string v4, "List of cookies"

    invoke-static {p1, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v3, 0x7fffffff

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/Cookie;

    instance-of v4, v0, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v3, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v3

    goto :goto_0

    :cond_2
    if-lez v3, :cond_4

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-virtual {v4, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_3
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-virtual {v4, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v4, p1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_1
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 13
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

    const-string v11, "Header"

    invoke-static {p1, v11}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "Cookie origin"

    invoke-static {p2, v11}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v0, v4

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    const-string v11, "version"

    invoke-interface {v3, v11}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v10, 0x1

    :cond_0
    const-string v11, "expires"

    invoke-interface {v3, v11}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v11

    if-eqz v11, :cond_1

    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    if-nez v10, :cond_6

    :cond_3
    sget-object v8, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    instance-of v11, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v11, :cond_4

    move-object v11, p1

    check-cast v11, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {v11}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v1

    new-instance v2, Lcz/msebera/android/httpclient/message/ParserCursor;

    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result v11

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v12

    invoke-direct {v2, v11, v12}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    :goto_1
    const/4 v11, 0x1

    new-array v4, v11, [Lcz/msebera/android/httpclient/HeaderElement;

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v12

    aput-object v12, v4, v11

    iget-object v11, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v11, v4, p2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v11

    :goto_2
    return-object v11

    :cond_4
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    new-instance v11, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v12, "Header value is null"

    invoke-direct {v11, v12}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v1, v11}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v1, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v2, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v12

    invoke-direct {v2, v11, v12}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    goto :goto_1

    :cond_6
    const-string v11, "Set-Cookie2"

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-virtual {v11, v4, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v11

    goto :goto_2

    :cond_7
    iget-object v11, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-virtual {v11, v4, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v11

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

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

    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;->netscapeDraft:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_0
.end method
