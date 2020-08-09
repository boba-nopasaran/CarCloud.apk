.class public Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;
.super Ljava/lang/Object;
.source "AutoRetryHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/HttpClient;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final backend:Lcz/msebera/android/httpclient/client/HttpClient;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;-><init>()V

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;-><init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/HttpClient;)V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultServiceUnavailableRetryStrategy;-><init>()V

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;-><init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "HttpClient"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ServiceUnavailableRetryStrategy"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;-><init>(Lcz/msebera/android/httpclient/client/HttpClient;Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;)V

    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v7, p1, p2, p3}, Lcz/msebera/android/httpclient/client/HttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v6

    :try_start_0
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    invoke-interface {v7, v6, v0, p3}, Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;->retryRequest(Lcz/msebera/android/httpclient/HttpResponse;ILcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->retryStrategy:Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/client/ServiceUnavailableRetryStrategy;->getRetryInterval()J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    :try_start_1
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wait for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    new-instance v7, Ljava/io/InterruptedIOException;

    invoke-direct {v7}, Ljava/io/InterruptedIOException;-><init>()V

    throw v7
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v2

    :try_start_3
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    throw v2

    :catch_2
    move-exception v3

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v8, "I/O error consuming response content"

    invoke-virtual {v7, v8, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    return-object v6
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v2

    return-object v2
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            "Lcz/msebera/android/httpclient/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            "Lcz/msebera/android/httpclient/client/ResponseHandler",
            "<+TT;>;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    invoke-interface {p3, v0}, Lcz/msebera/android/httpclient/client/ResponseHandler;->handleResponse(Lcz/msebera/android/httpclient/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;",
            "Lcz/msebera/android/httpclient/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/client/ResponseHandler;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;",
            "Lcz/msebera/android/httpclient/client/ResponseHandler",
            "<+TT;>;",
            "Lcz/msebera/android/httpclient/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/client/ResponseHandler;->handleResponse(Lcz/msebera/android/httpclient/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/HttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcz/msebera/android/httpclient/params/HttpParams;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/AutoRetryHttpClient;->backend:Lcz/msebera/android/httpclient/client/HttpClient;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/HttpClient;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
