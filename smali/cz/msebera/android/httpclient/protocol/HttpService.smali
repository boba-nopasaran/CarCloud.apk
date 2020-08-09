.class public Lcz/msebera/android/httpclient/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;
    }
.end annotation


# instance fields
.field private volatile connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private volatile expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

.field private volatile handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

.field private volatile params:Lcz/msebera/android/httpclient/params/HttpParams;

.field private volatile processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private volatile responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpService;->setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/protocol/HttpService;->setConnReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)V

    invoke-virtual {p0, p3}, Lcz/msebera/android/httpclient/protocol/HttpService;->setResponseFactory(Lcz/msebera/android/httpclient/HttpResponseFactory;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    const-string v0, "HTTP processor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    iput-object p4, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    iput-object p5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    return-void

    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    goto :goto_0

    :cond_1
    sget-object p3, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    goto :goto_1
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v4, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;

    invoke-direct {v4, p4}, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    iput-object p5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v4, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;

    invoke-direct {v4, p4}, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    iput-object p6, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    return-void
.end method

.method private canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "HEAD"

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_0

    const/16 v2, 0x130

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected doService(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    invoke-interface {v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;->lookup(Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;->handle(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x1f5

    invoke-interface {p2, v1}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-object v0
.end method

.method protected handleException(Lcz/msebera/android/httpclient/HttpException;Lcz/msebera/android/httpclient/HttpResponse;)V
    .locals 4

    instance-of v3, p1, Lcz/msebera/android/httpclient/MethodNotSupportedException;

    if-eqz v3, :cond_1

    const/16 v3, 0x1f5

    invoke-interface {p2, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    :goto_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpException;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([B)V

    const-string v3, "text/plain; charset=US-ASCII"

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void

    :cond_1
    instance-of v3, p1, Lcz/msebera/android/httpclient/UnsupportedHttpVersionException;

    if-eqz v3, :cond_2

    const/16 v3, 0x1f9

    invoke-interface {p2, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcz/msebera/android/httpclient/ProtocolException;

    if-eqz v3, :cond_3

    const/16 v3, 0x190

    invoke-interface {p2, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x1f4

    invoke-interface {p2, v3}, Lcz/msebera/android/httpclient/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public handleRequest(Lcz/msebera/android/httpclient/HttpServerConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const/16 v9, 0x1f4

    const/16 v8, 0xc8

    const-string v5, "http.connection"

    invoke-interface {p2, v5, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpServerConnection;->receiveRequestHeader()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v3

    instance-of v5, v3, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v5, :cond_1

    move-object v0, v3

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    move-object v5, v0

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    sget-object v6, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v7, 0x64

    invoke-interface {v5, v6, v7, p2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/ProtocolVersion;ILcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;
    :try_end_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_0

    :try_start_1
    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    invoke-interface {v5, v3, v4, p2}, Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;->verify(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_1
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v4}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v5

    if-ge v5, v8, :cond_1

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpServerConnection;->sendResponseHeader(Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpServerConnection;->flush()V

    const/4 v4, 0x0

    move-object v0, v3

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    move-object v5, v0

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpServerConnection;->receiveRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    :cond_1
    :goto_1
    const-string v5, "http.request"

    invoke-interface {p2, v5, v3}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_2

    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    sget-object v6, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v7, 0xc8

    invoke-interface {v5, v6, v7, p2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/ProtocolVersion;ILcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {v5, v3, p2}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-virtual {p0, v3, v4, p2}, Lcz/msebera/android/httpclient/protocol/HttpService;->doService(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :cond_2
    instance-of v5, v3, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v5, :cond_3

    move-object v0, v3

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    move-object v5, v0

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_2
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    const-string v5, "http.response"

    invoke-interface {p2, v5, v4}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    invoke-interface {v5, v4, p2}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpServerConnection;->sendResponseHeader(Lcz/msebera/android/httpclient/HttpResponse;)V

    invoke-direct {p0, v3, v4}, Lcz/msebera/android/httpclient/protocol/HttpService;->canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1, v4}, Lcz/msebera/android/httpclient/HttpServerConnection;->sendResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    :cond_4
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpServerConnection;->flush()V

    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    invoke-interface {v5, v4, p2}, Lcz/msebera/android/httpclient/ConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpServerConnection;->close()V

    :cond_5
    return-void

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    sget-object v6, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    const/16 v7, 0x1f4

    invoke-interface {v5, v6, v7, p2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/ProtocolVersion;ILcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcz/msebera/android/httpclient/protocol/HttpService;->handleException(Lcz/msebera/android/httpclient/HttpException;Lcz/msebera/android/httpclient/HttpResponse;)V
    :try_end_3
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v5, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    sget-object v6, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-interface {v5, v6, v9, p2}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/ProtocolVersion;ILcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcz/msebera/android/httpclient/protocol/HttpService;->handleException(Lcz/msebera/android/httpclient/HttpException;Lcz/msebera/android/httpclient/HttpResponse;)V

    goto :goto_2

    :cond_6
    :try_start_4
    move-object v0, v3

    check-cast v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    move-object v5, v0

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpServerConnection;->receiveRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    :try_end_4
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public setConnReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Connection reuse strategy"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    return-void
.end method

.method public setExpectationVerifier(Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    return-void
.end method

.method public setHandlerResolver(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpService$HttpRequestHandlerResolverAdapter;-><init>(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    return-void
.end method

.method public setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HTTP processor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->processor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    return-void
.end method

.method public setParams(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->params:Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public setResponseFactory(Lcz/msebera/android/httpclient/HttpResponseFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Response factory"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/protocol/HttpService;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    return-void
.end method
