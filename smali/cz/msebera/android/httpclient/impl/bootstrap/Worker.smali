.class Lcz/msebera/android/httpclient/impl/bootstrap/Worker;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final conn:Lcz/msebera/android/httpclient/HttpServerConnection;

.field private final exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private final httpservice:Lcz/msebera/android/httpclient/protocol/HttpService;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpServerConnection;Lcz/msebera/android/httpclient/ExceptionLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->httpservice:Lcz/msebera/android/httpclient/protocol/HttpService;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    return-void
.end method


# virtual methods
.method public getConnection()Lcz/msebera/android/httpclient/HttpServerConnection;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    return-object v0
.end method

.method public run()V
    .locals 5

    :try_start_0
    new-instance v2, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-static {v2}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/protocol/HttpCoreContext;

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpServerConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->httpservice:Lcz/msebera/android/httpclient/protocol/HttpService;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-virtual {v3, v4, v0}, Lcz/msebera/android/httpclient/protocol/HttpService;->handleRequest(Lcz/msebera/android/httpclient/HttpServerConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v3, v1}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :cond_0
    :try_start_3
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpServerConnection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v3, v1}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v1

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v3, v1}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_5
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->conn:Lcz/msebera/android/httpclient/HttpServerConnection;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    throw v3

    :catch_3
    move-exception v1

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v4, v1}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_2
.end method
