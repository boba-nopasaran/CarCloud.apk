.class public Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;
    }
.end annotation


# instance fields
.field private final connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/HttpConnectionFactory",
            "<+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private final httpService:Lcz/msebera/android/httpclient/protocol/HttpService;

.field private final ifAddress:Ljava/net/InetAddress;

.field private final listenerExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final port:I

.field private volatile requestListener:Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

.field private volatile serverSocket:Ljava/net/ServerSocket;

.field private final serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private final socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private final sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

.field private final status:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;",
            ">;"
        }
    .end annotation
.end field

.field private final workerExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final workerThreads:Ljava/lang/ThreadGroup;


# direct methods
.method constructor <init>(ILjava/net/InetAddress;Lcz/msebera/android/httpclient/config/SocketConfig;Ljavax/net/ServerSocketFactory;Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpConnectionFactory;Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;Lcz/msebera/android/httpclient/ExceptionLogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/InetAddress;",
            "Lcz/msebera/android/httpclient/config/SocketConfig;",
            "Ljavax/net/ServerSocketFactory;",
            "Lcz/msebera/android/httpclient/protocol/HttpService;",
            "Lcz/msebera/android/httpclient/HttpConnectionFactory",
            "<+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;",
            "Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;",
            "Lcz/msebera/android/httpclient/ExceptionLogger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->port:I

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    iput-object p5, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->httpService:Lcz/msebera/android/httpclient/protocol/HttpService;

    iput-object p6, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    iput-object p7, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    iput-object p8, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    new-instance v0, Lcz/msebera/android/httpclient/impl/bootstrap/ThreadFactoryImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP-listener-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/bootstrap/ThreadFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "HTTP-workers"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    new-instance v0, Lcz/msebera/android/httpclient/impl/bootstrap/ThreadFactoryImpl;

    const-string v1, "HTTP-worker"

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/bootstrap/ThreadFactoryImpl;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->READY:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public shutdown(JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->stop()V

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    instance-of v6, v3, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;

    if-eqz v6, :cond_1

    move-object v5, v3

    check-cast v5, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/bootstrap/Worker;->getConnection()Lcz/msebera/android/httpclient/HttpServerConnection;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpServerConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v6, v1}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->READY:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->ACTIVE:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->port:I

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/config/SocketConfig;->getBacklogSize()I

    move-result v2

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->ifAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    instance-of v0, v0, Ljavax/net/ssl/SSLServerSocket;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    check-cast v0, Ljavax/net/ssl/SSLServerSocket;

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;->initialize(Ljavax/net/ssl/SSLServerSocket;)V

    :cond_1
    new-instance v0, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->serverSocket:Ljava/net/ServerSocket;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->httpService:Lcz/msebera/android/httpclient/protocol/HttpService;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;-><init>(Lcz/msebera/android/httpclient/config/SocketConfig;Ljava/net/ServerSocket;Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpConnectionFactory;Lcz/msebera/android/httpclient/ExceptionLogger;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->requestListener:Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->requestListener:Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 5

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->ACTIVE:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    sget-object v4, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;->STOPPING:Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer$Status;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->requestListener:Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/bootstrap/RequestListener;->terminate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerThreads:Ljava/lang/ThreadGroup;

    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->interrupt()V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->listenerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->workerExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
