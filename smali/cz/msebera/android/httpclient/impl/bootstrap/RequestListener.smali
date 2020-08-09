.class Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;
.super Ljava/lang/Object;
.source "RequestListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/HttpConnectionFactory",
            "<+",
            "Lcz/msebera/android/httpclient/HttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final httpService:Lcz/msebera/android/httpclient/protocol/HttpService;

.field private final serversocket:Ljava/net/ServerSocket;

.field private final socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private final terminated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/config/SocketConfig;Ljava/net/ServerSocket;Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpConnectionFactory;Lcz/msebera/android/httpclient/ExceptionLogger;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/SocketConfig;",
            "Ljava/net/ServerSocket;",
            "Lcz/msebera/android/httpclient/protocol/HttpService;",
            "Lcz/msebera/android/httpclient/HttpConnectionFactory",
            "<+",
            "Lcz/msebera/android/httpclient/HttpServerConnection;",
            ">;",
            "Lcz/msebera/android/httpclient/ExceptionLogger;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->serversocket:Ljava/net/ServerSocket;

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->httpService:Lcz/msebera/android/httpclient/protocol/HttpService;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public isTerminated()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoTimeout()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoKeepAlive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/config/SocketConfig;->isTcpNoDelay()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_0
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSndBufSize()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSndBufSize()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoLinger()I

    move-result v4

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoLinger()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_2
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    invoke-interface {v4, v2}, Lcz/msebera/android/httpclient/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpServerConnection;

    new-instance v3, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->httpService:Lcz/msebera/android/httpclient/protocol/HttpService;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-direct {v3, v4, v0, v5}, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;-><init>(Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpServerConnection;Lcz/msebera/android/httpclient/ExceptionLogger;)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v4, v1}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method

.method public terminate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->terminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    return-void
.end method
