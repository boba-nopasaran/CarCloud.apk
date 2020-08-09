.class public final Lcom/qiniu/android/http/ClientConnectionOperator;
.super Ljava/lang/Object;
.source "ClientConnectionOperator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;


# instance fields
.field protected final dnsResolver:Lcom/qiniu/android/dns/DnsManager;

.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcom/qiniu/android/dns/DnsManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/qiniu/android/http/ClientConnectionOperator;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    iput-object p2, p0, Lcom/qiniu/android/http/ClientConnectionOperator;->dnsResolver:Lcom/qiniu/android/dns/DnsManager;

    return-void
.end method

.method private systemResolv(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v4, p0, Lcom/qiniu/android/http/ClientConnectionOperator;->dnsResolver:Lcom/qiniu/android/dns/DnsManager;

    if-nez v4, :cond_0

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v4, v0

    new-array v3, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/qiniu/android/http/ClientConnectionOperator;->dnsResolver:Lcom/qiniu/android/dns/DnsManager;

    new-instance v5, Lcom/qiniu/android/dns/Domain;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xe10

    invoke-direct {v5, p1, v6, v7, v8}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;ZZI)V

    invoke-virtual {v4, v5}, Lcom/qiniu/android/dns/DnsManager;->query(Lcom/qiniu/android/dns/Domain;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_1
    return-object v3

    :catch_0
    move-exception v1

    new-instance v4, Ljava/net/UnknownHostException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static validIP(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, -0x1

    const/16 v7, 0xff

    const/16 v6, 0x2e

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    const/16 v4, 0x2e

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v8, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v7, :cond_0

    :cond_2
    const/16 v4, 0x2e

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v8, :cond_3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v7, :cond_0

    :cond_3
    const/16 v4, 0x2e

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v8, :cond_4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v7, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v6, :cond_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public createConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Connection must not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    if-nez p2, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Target host must not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    if-nez p5, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Parameters must not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Connection must not be open."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qiniu/android/http/ClientConnectionOperator;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/qiniu/android/http/ClientConnectionOperator;->validIP(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    new-array v14, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v12, v14, v7

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    const/4 v13, 0x0

    :goto_0
    array-length v7, v14

    if-ge v13, v7, :cond_6

    aget-object v5, v14, v13

    array-length v7, v14

    add-int/lit8 v7, v7, -0x1

    if-ne v13, v7, :cond_9

    const/4 v15, 0x1

    :goto_1
    invoke-interface {v3}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V

    const/4 v8, 0x0

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    :try_start_0
    invoke-interface/range {v3 .. v9}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v10

    if-eq v4, v10, :cond_5

    move-object v4, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v4, v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Lcom/qiniu/android/http/ClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    invoke-interface {v3, v4}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v7

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-interface {v0, v7, v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->openCompleted(ZLcz/msebera/android/httpclient/params/HttpParams;)V

    sget-object v7, Lcom/qiniu/android/http/AsyncHttpClientMod;->ip:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/qiniu/android/http/ClientConnectionOperator;->systemResolv(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    array-length v7, v14

    if-nez v7, :cond_4

    :cond_8
    new-instance v7, Ljava/net/UnknownHostException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no ip for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    const/4 v15, 0x0

    goto :goto_1

    :catch_0
    move-exception v11

    if-eqz v15, :cond_a

    new-instance v7, Lcz/msebera/android/httpclient/conn/HttpHostConnectException;

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v11}, Lcz/msebera/android/httpclient/conn/HttpHostConnectException;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/ConnectException;)V

    throw v7

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method protected prepareSocket(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getTcpNoDelay(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {p3}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getLinger(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v0

    if-ltz v0, :cond_0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSecureConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Target host must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-nez p4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must be open."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v4, p0, Lcom/qiniu/android/http/ClientConnectionOperator;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    move-result-object v4

    instance-of v4, v4, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target scheme ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") must have layered socket factory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;

    :try_start_0
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v1, v4, v5, v6, v7}, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {p0, v3, p3, p4}, Lcom/qiniu/android/http/ClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    invoke-interface {v1, v3}, Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    invoke-interface {p1, v3, p2, v4, p4}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v4, Lcz/msebera/android/httpclient/conn/HttpHostConnectException;

    invoke-direct {v4, p2, v0}, Lcz/msebera/android/httpclient/conn/HttpHostConnectException;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/ConnectException;)V

    throw v4
.end method
