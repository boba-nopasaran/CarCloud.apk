.class Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;
.super Ljava/lang/Object;
.source "ResponseProtocolCompliance.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field private static final UNEXPECTED_100_CONTINUE:Ljava/lang/String; = "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

.field private static final UNEXPECTED_PARTIAL_CONTENT:Ljava/lang/String; = "partial content was returned for a request that did not ask for it"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backendResponseMustNotHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 2

    const-string v0, "HEAD"

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private consumeBody(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_0
    return-void
.end method

.method private ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const-string v0, "Content-Length"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Content-Length"

    const-string v1, "0"

    invoke-interface {p2, v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensure206ContainsDateHeader(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 2

    const-string v0, "Date"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Date"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ensure304DoesNotContainExtraEntityHeaders(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 7

    const/16 v5, 0x8

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Allow"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "Content-Encoding"

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "Content-Language"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "Content-Length"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "Content-MD5"

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string v6, "Content-Range"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "Content-Type"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "Last-Modified"

    aput-object v6, v1, v5

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x130

    if-ne v5, v6, :cond_0

    move-object v0, v1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Range"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lcz/msebera/android/httpclient/HttpResponse;)V

    new-instance v0, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    const-string v1, "partial content was returned for a request that did not ask for it"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private identityIsNotUsedInContentEncoding(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 17

    const-string v15, "Content-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v15, v7

    if-nez v15, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    move-object v1, v7

    array-length v10, v1

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_6

    aget-object v6, v1, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v2

    array-length v11, v2

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v11, :cond_4

    aget-object v4, v2, v8

    const-string v15, "identity"

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v12, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    const-string v15, ","

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    new-instance v15, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v16, "Content-Encoding"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v13}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    :cond_6
    if-eqz v12, :cond_0

    const-string v15, "Content-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/Header;

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_3
.end method

.method private removeResponseTransferEncoding(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 1

    const-string v0, "TE"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    return-void
.end method

.method private requestDidNotExpect100ContinueButResponseIsOne(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v0

    instance-of v1, v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_2

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lcz/msebera/android/httpclient/HttpResponse;)V

    new-instance v1, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    const-string v2, "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private transferEncodingIsNotReturnedTo1_0Client(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 3

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v1

    sget-object v2, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v1

    if-ltz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->removeResponseTransferEncoding(Lcz/msebera/android/httpclient/HttpResponse;)V

    goto :goto_0
.end method

.method private warningsWithNonMatchingWarnDatesAreRemoved(Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 17

    const-string v14, "Date"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v14

    invoke-interface {v14}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v14, "Warning"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v12

    if-eqz v12, :cond_0

    array-length v14, v12

    if-eqz v14, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move-object v1, v12

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v3, v1, v5

    invoke-static {v3}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->getWarningValues(Lcz/msebera/android/httpclient/Header;)[Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;

    move-result-object v2

    array-length v7, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v13, v2, v4

    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->getWarnDate()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11, v10}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    new-instance v14, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v15, "Warning"

    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_5
    if-eqz v8, :cond_0

    const-string v14, "Warning"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/Header;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_3
.end method


# virtual methods
.method public ensureProtocolCompliance(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->backendResponseMustNotHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lcz/msebera/android/httpclient/HttpResponse;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->requestDidNotExpect100ContinueButResponseIsOne(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->transferEncodingIsNotReturnedTo1_0Client(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensure206ContainsDateHeader(Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensure304DoesNotContainExtraEntityHeaders(Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->identityIsNotUsedInContentEncoding(Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->warningsWithNonMatchingWarnDatesAreRemoved(Lcz/msebera/android/httpclient/HttpResponse;)V

    return-void
.end method
