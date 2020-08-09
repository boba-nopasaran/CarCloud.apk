.class public Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/SystemDefaultDnsResolver;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;Lcz/msebera/android/httpclient/conn/DnsResolver;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "DNS resolver"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    return-void
.end method

.method private getSchemeRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 2

    const-string v1, "http.scheme-registry"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public createConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v16, "Connection"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v16, "Target host"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v16, "HTTP parameters"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v16

    if-nez v16, :cond_4

    const/16 v16, 0x1

    :goto_0
    const-string v17, "Connection must not be open"

    invoke-static/range {v16 .. v17}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->getSchemeRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v13

    invoke-virtual {v13}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getSchemeSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->resolvePort(I)I

    move-result v10

    const/4 v7, 0x0

    :goto_1
    array-length v0, v4

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_3

    aget-object v3, v4, v7

    array-length v0, v4

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_5

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, p5

    invoke-interface {v14, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v15, v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V

    new-instance v12, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v3, v10}, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;I)V

    const/4 v9, 0x0

    if-eqz p3, :cond_0

    new-instance v9, Ljava/net/InetSocketAddress;

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-direct {v9, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Connecting to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    move-object/from16 v0, p5

    invoke-interface {v14, v15, v12, v9, v0}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v5

    if-eq v15, v5, :cond_2

    move-object v15, v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v15, v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;)V

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v15, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    invoke-interface {v14, v15}, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->openCompleted(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcz/msebera/android/httpclient/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    return-void

    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :catch_0
    move-exception v6

    if-eqz v8, :cond_6

    throw v6

    :catch_1
    move-exception v6

    if-eqz v8, :cond_6

    throw v6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Connect to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " timed out. "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "Connection will be retried using another IP address"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
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

.method protected resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lcz/msebera/android/httpclient/conn/DnsResolver;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public updateSecureConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v4, "Connection"

    invoke-static {p1, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "Target host"

    invoke-static {p2, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "Parameters"

    invoke-static {p4, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v4

    const-string v5, "Connection must be open"

    invoke-static {v4, v5}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->getSchemeRegistry(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getSchemeSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-result-object v4

    instance-of v4, v4, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;

    const-string v5, "Socket factory must implement SchemeLayeredSocketFactory"

    invoke-static {v4, v5}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->getSchemeSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v2, v6}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6

    invoke-interface {v0, v4, v5, v6, p4}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {p0, v3, p3, p4}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    invoke-interface {p1, v3, p2, v4, p4}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method
