.class public Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;,
        Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

.field private entity:Lcz/msebera/android/httpclient/HttpEntity;

.field private headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

.field private method:Ljava/lang/String;

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/net/URI;

.field private version:Lcz/msebera/android/httpclient/ProtocolVersion;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->charset:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    iput-object p2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-void
.end method

.method public static copy(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>()V

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->doCopy(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    const-string v0, "HTTP method"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "DELETE"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method private doCopy(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 10

    const/4 v9, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v7

    invoke-interface {v7}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v7

    invoke-interface {v7}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v7

    iput-object v7, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    iget-object v7, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v7, :cond_1

    new-instance v7, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v7}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v7, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    :cond_1
    iget-object v7, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/message/HeaderGroup;->clear()V

    iget-object v7, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/message/HeaderGroup;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    iput-object v9, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    iput-object v9, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    instance-of v7, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v7, :cond_2

    move-object v7, p1

    check-cast v7, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/entity/ContentType;->get(Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_FORM_URLENCODED:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :try_start_0
    invoke-static {v3}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->parse(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iput-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    instance-of v7, p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    if-eqz v7, :cond_5

    move-object v7, p1

    check-cast v7, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    :goto_2
    new-instance v6, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-direct {v6, v4}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    iget-object v7, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->getQueryParams()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iput-object v5, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->clearParameters()Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    :cond_3
    :goto_3
    :try_start_1
    invoke-virtual {v6}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->build()Ljava/net/URI;

    move-result-object v7

    iput-object v7, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    instance-of v7, p1, Lcz/msebera/android/httpclient/client/methods/Configurable;

    if-eqz v7, :cond_7

    check-cast p1, Lcz/msebera/android/httpclient/client/methods/Configurable;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/methods/Configurable;->getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v7

    iput-object v7, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    goto/16 :goto_0

    :cond_4
    iput-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v7

    invoke-interface {v7}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    goto :goto_2

    :cond_6
    iput-object v9, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    goto :goto_3

    :catch_0
    move-exception v1

    iput-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    goto :goto_4

    :cond_7
    iput-object v9, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    goto/16 :goto_0

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static get()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "GET"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "GET"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "GET"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method public static head()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "HEAD"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method public static options()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method public static patch()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "PATCH"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static patch(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "PATCH"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static patch(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "PATCH"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method public static post()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "POST"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "POST"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method public static put()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "PUT"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "PUT"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "PUT"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method public static trace()Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "TRACE"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public addHeader(Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public addParameter(Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    const-string v0, "Name value pair"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->addParameter(Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addParameters([Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 4

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->addParameter(Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .locals 6

    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_4

    const-string v4, "POST"

    iget-object v5, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PUT"

    iget-object v5, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/client/entity/UrlEncodedFormEntity;

    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    sget-object v5, Lcz/msebera/android/httpclient/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v5}, Lcz/msebera/android/httpclient/client/entity/UrlEncodedFormEntity;-><init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V

    :cond_1
    :goto_1
    if-nez v0, :cond_5

    new-instance v2, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;

    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setProtocolVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)V

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setHeaders([Lcz/msebera/android/httpclient/Header;)V

    :cond_2
    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-virtual {v2, v4}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;->setConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V

    return-object v2

    :cond_3
    const-string v4, "/"

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v4, Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    invoke-direct {v4, v3}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    iget-object v5, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->setCharset(Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->addParameters(Ljava/util/List;)Lcz/msebera/android/httpclient/client/utils/URIBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/utils/URIBuilder;->build()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    :cond_5
    new-instance v1, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;

    iget-object v4, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalEntityEclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object v0
.end method

.method public getEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->getLastHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->parameters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getVersion()Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object v0
.end method

.method public removeHeader(Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->removeHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public removeHeaders(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v2, :cond_1

    :cond_0
    return-object p0

    :cond_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/message/HeaderGroup;->iterator()Lcz/msebera/android/httpclient/HeaderIterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderIterator;->remove()V

    goto :goto_0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->config:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object p0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object p0
.end method

.method public setHeader(Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->updateHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/message/HeaderGroup;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/HeaderGroup;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->headergroup:Lcz/msebera/android/httpclient/message/HeaderGroup;

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/message/HeaderGroup;->updateHeader(Lcz/msebera/android/httpclient/Header;)V

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUri(Ljava/net/URI;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->uri:Ljava/net/URI;

    return-object p0
.end method

.method public setVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder;->version:Lcz/msebera/android/httpclient/ProtocolVersion;

    return-object p0
.end method