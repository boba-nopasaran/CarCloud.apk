.class Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;
.super Ljava/lang/Object;
.source "RequestProtocolCompliance.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;
    }
.end annotation


# static fields
.field private static final disallowedWithNoCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final weakETagOnPutDeleteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "min-fresh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "max-stale"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "max-age"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->weakETagOnPutDeleteAllowed:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->weakETagOnPutDeleteAllowed:Z

    return-void
.end method

.method private add100ContinueHeaderIfMissing(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 11

    const/4 v4, 0x0

    const-string v9, "Expect"

    invoke-interface {p1, v9}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v7, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, v0, v6

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v8, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v2, v1, v5

    const-string v9, "100-continue"

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    const-string v9, "Expect"

    const-string v10, "100-continue"

    invoke-interface {p1, v9, v10}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private addContentTypeHeaderIfMissing(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .locals 2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;

    sget-object v1, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_OCTET_STREAM:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/HeaderElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HeaderElement;

    if-nez v1, :cond_0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private decrementOPTIONSMaxForwardsIfGreaterThen0(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 4

    const-string v2, "OPTIONS"

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Max-Forwards"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Max-Forwards"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "Max-Forwards"

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcz/msebera/android/httpclient/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private remove100ContinueHeaderIfExists(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 14

    const/4 v6, 0x0

    const-string v12, "Expect"

    invoke-interface {p1, v12}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    array-length v9, v0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v5, v0, v8

    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v10, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v2, v1, v7

    const-string v12, "100-continue"

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeader(Lcz/msebera/android/httpclient/Header;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/HeaderElement;

    new-instance v11, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v12, "Expect"

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v11}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_3

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    :cond_3
    return-void
.end method

.method private requestContainsNoCacheDirectiveWithFieldName(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
    .locals 10

    const-string v8, "Cache-Control"

    invoke-interface {p1, v8}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v7, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v2, v1, v4

    const-string v8, "no-cache"

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    sget-object v8, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    :goto_2
    return-object v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private requestHasWeakETagAndRange(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
    .locals 6

    const/4 v4, 0x0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v5, "GET"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const-string v5, "Range"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "If-Range"

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "W/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    goto :goto_0
.end method

.method private requestHasWeekETagForPUTOrDELETEIfMatch(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;
    .locals 7

    const/4 v5, 0x0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v6, "PUT"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "DELETE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const-string v6, "If-Match"

    invoke-interface {p1, v6}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v6, "W/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v5, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    goto :goto_0

    :cond_2
    const-string v6, "If-None-Match"

    invoke-interface {p1, v6}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v6, "W/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v5, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    goto :goto_0
.end method

.method private requestMustNotHaveEntity(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2

    const-string v0, "TRACE"

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stripOtherFreshnessDirectivesWithNoCache(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 12

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const-string v10, "Cache-Control"

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v7, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v2, v1, v4

    sget-object v10, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v10, "no-cache"

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_3
    if-nez v9, :cond_4

    :goto_2
    return-void

    :cond_4
    const-string v10, "Cache-Control"

    invoke-interface {p1, v10}, Lcz/msebera/android/httpclient/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    const-string v10, "Cache-Control"

    invoke-direct {p0, v8}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v10, v11}, Lcz/msebera/android/httpclient/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private verifyOPTIONSRequestWithBodyHasContentType(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 2

    const-string v0, "OPTIONS"

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->addContentTypeHeaderIfMissing(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    goto :goto_0
.end method

.method private verifyRequestWithExpectContinueFlagHas100continueHeader(Lcz/msebera/android/httpclient/HttpRequest;)V
    .locals 1

    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->add100ContinueHeaderIfMissing(Lcz/msebera/android/httpclient/HttpRequest;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lcz/msebera/android/httpclient/HttpRequest;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lcz/msebera/android/httpclient/HttpRequest;)V

    goto :goto_0
.end method


# virtual methods
.method public getErrorForRequest(Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 5

    const/16 v4, 0x190

    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$cz$msebera$android$httpclient$impl$client$cache$RequestProtocolError:[I

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request was compliant, therefore no error can be generated for it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v3, 0x19b

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const-string v3, "Weak eTag not compatible with byte range"

    invoke-direct {v1, v2, v4, v3}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const-string v3, "Weak eTag not compatible with PUT or DELETE requests"

    invoke-direct {v1, v2, v4, v3}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const-string v3, "No-Cache directive MUST NOT include a field name"

    invoke-direct {v1, v2, v4, v3}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public makeRequestCompliant(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestMustNotHaveEntity(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->verifyRequestWithExpectContinueFlagHas100continueHeader(Lcz/msebera/android/httpclient/HttpRequest;)V

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->verifyOPTIONSRequestWithBodyHasContentType(Lcz/msebera/android/httpclient/HttpRequest;)V

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->decrementOPTIONSMaxForwardsIfGreaterThen0(Lcz/msebera/android/httpclient/HttpRequest;)V

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->stripOtherFreshnessDirectivesWithNoCache(Lcz/msebera/android/httpclient/HttpRequest;)V

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestVersionIsTooLow(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestMinorVersionIsTooHighMajorVersionsMatch(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setProtocolVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)V

    :cond_2
    return-void
.end method

.method public requestIsFatallyNonCompliant(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestHasWeakETagAndRange(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->weakETagOnPutDeleteAllowed:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestHasWeekETagForPUTOrDELETEIfMatch(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolCompliance;->requestContainsNoCacheDirectiveWithFieldName(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/impl/client/cache/RequestProtocolError;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method protected requestMinorVersionIsTooHighMajorVersionsMatch(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMajor()I

    move-result v2

    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpVersion;->getMajor()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMinor()I

    move-result v2

    sget-object v3, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/HttpVersion;->getMinor()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected requestVersionIsTooLow(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
