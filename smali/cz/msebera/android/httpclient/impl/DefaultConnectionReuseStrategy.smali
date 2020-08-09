.class public Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/ConnectionReuseStrategy;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canResponseHaveBody(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createTokenIterator(Lcz/msebera/android/httpclient/HeaderIterator;)Lcz/msebera/android/httpclient/TokenIterator;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 13

    const-string v11, "HTTP response"

    invoke-static {p1, v11}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "HTTP context"

    invoke-static {p2, v11}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v10

    const-string v11, "Transfer-Encoding"

    invoke-interface {p1, v11}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v11, "chunked"

    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->canResponseHaveBody(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "Content-Length"

    invoke-interface {p1, v11}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    array-length v11, v1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v11, 0x0

    aget-object v0, v1, v11

    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gez v3, :cond_2

    const/4 v11, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    const-string v11, "Connection"

    invoke-interface {p1, v11}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    array-length v11, v2

    if-nez v11, :cond_3

    const-string v11, "Proxy-Connection"

    invoke-interface {p1, v11}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    :cond_3
    array-length v11, v2

    if-eqz v11, :cond_7

    :try_start_1
    new-instance v8, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    new-instance v11, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;

    const/4 v12, 0x0

    invoke-direct {v11, v2, v12}, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;-><init>([Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V

    invoke-direct {v8, v11}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    const/4 v5, 0x0

    :cond_4
    :goto_1
    invoke-interface {v8}, Lcz/msebera/android/httpclient/TokenIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8}, Lcz/msebera/android/httpclient/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Close"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    const-string v11, "Keep-Alive"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    const/4 v11, 0x1

    goto :goto_0

    :catch_1
    move-exception v6

    const/4 v11, 0x0

    goto :goto_0

    :cond_7
    sget-object v11, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v10, v11}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    goto :goto_0

    :cond_8
    const/4 v11, 0x0

    goto :goto_0
.end method
