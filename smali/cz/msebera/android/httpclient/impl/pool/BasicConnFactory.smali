.class public Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;
.super Ljava/lang/Object;
.source "BasicConnFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/pool/ConnFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/pool/ConnFactory",
        "<",
        "Lcz/msebera/android/httpclient/HttpHost;",
        "Lcz/msebera/android/httpclient/HttpClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private final connFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/HttpConnectionFactory",
            "<+",
            "Lcz/msebera/android/httpclient/HttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectTimeout:I

.field private final plainfactory:Ljavax/net/SocketFactory;

.field private final sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private final sslfactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    sget-object v5, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    return-void
.end method

.method public constructor <init>(ILcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;-><init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;ILcz/msebera/android/httpclient/config/SocketConfig;Lcz/msebera/android/httpclient/config/ConnectionConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    iput p3, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->connectTimeout:I

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnectionFactory;

    if-eqz p5, :cond_1

    :goto_1
    invoke-direct {v0, p5}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnectionFactory;-><init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->connFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    return-void

    :cond_0
    sget-object p4, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    goto :goto_0

    :cond_1
    sget-object p5, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    goto :goto_1
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP params"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->connectTimeout:I

    invoke-static {p2}, Lcz/msebera/android/httpclient/params/HttpParamConfig;->getSocketConfig(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/config/SocketConfig;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnectionFactory;

    invoke-static {p2}, Lcz/msebera/android/httpclient/params/HttpParamConfig;->getConnectionConfig(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnectionFactory;-><init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->connFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpClientConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "http"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->plainfactory:Ljavax/net/SocketFactory;

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    :cond_0
    :goto_0
    const-string v5, "https"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sslfactory:Ljavax/net/ssl/SSLSocketFactory;

    :goto_1
    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_4

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scheme is not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_5

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v2, 0x50

    :cond_5
    :goto_2
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSndBufSize()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSndBufSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_6
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getRcvBufSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_7
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/SocketConfig;->isTcpNoDelay()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/SocketConfig;->getSoLinger()I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_8
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->sconfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/config/SocketConfig;->isSoKeepAlive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v6, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->connectTimeout:I

    invoke-virtual {v4, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->connFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    invoke-interface {v5, v4}, Lcz/msebera/android/httpclient/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lcz/msebera/android/httpclient/HttpConnection;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HttpClientConnection;

    return-object v5

    :cond_9
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v2, 0x1bb

    goto :goto_2
.end method

.method protected create(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/HttpClientConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v2, "http.socket.buffer-size"

    const/16 v3, 0x2000

    invoke-interface {p2, v2, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;-><init>(I)V

    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->bind(Ljava/net/Socket;)V

    return-object v1
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/pool/BasicConnFactory;->create(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpClientConnection;

    move-result-object v0

    return-object v0
.end method
