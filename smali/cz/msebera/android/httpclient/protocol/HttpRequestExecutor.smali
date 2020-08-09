.class public Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final DEFAULT_WAIT_FOR_CONTINUE:I = 0xbb8


# instance fields
.field private final waitForContinue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Wait for continue time"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->waitForContinue:I

    return-void
.end method

.method private static closeConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 4

    const/4 v1, 0x0

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

.method protected doReceiveResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "HTTP request"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Client connection"

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "HTTP context"

    invoke-static {p3, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_2

    :cond_0
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected doSendRequest(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const-string v4, "HTTP request"

    invoke-static {p1, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "Client connection"

    invoke-static {p2, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "HTTP context"

    invoke-static {p3, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v4, "http.connection"

    invoke-interface {p3, v4, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "http.request_sent"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v4, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V

    instance-of v4, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v3, v4}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->flush()V

    iget v4, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->waitForContinue:I

    invoke-interface {p2, v4}, Lcz/msebera/android/httpclient/HttpClientConnection;->isResponseAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    :cond_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ge v2, v4, :cond_4

    const/16 v4, 0x64

    if-eq v2, v4, :cond_1

    new-instance v4, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    check-cast p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    :cond_3
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->flush()V

    const-string v4, "http.request_sent"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v4, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const-string v2, "HTTP request"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Client connection"

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "HTTP context"

    invoke-static {p3, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->doSendRequest(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->doReceiveResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->closeConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->closeConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    throw v0

    :catch_2
    move-exception v0

    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->closeConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    throw v0
.end method

.method public postProcess(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.response"

    invoke-interface {p3, v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method

.method public preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.request"

    invoke-interface {p3, v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method
