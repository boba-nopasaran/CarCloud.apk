.class public Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;
.super Ljava/lang/Object;
.source "ProtocolExec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field private final httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;Lcz/msebera/android/httpclient/protocol/HttpProcessor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP protocol processor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    return-void
.end method


# virtual methods
.method public execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const-string v17, "HTTP route"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v17, "HTTP request"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v17, "HTTP context"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object v7

    const/4 v12, 0x0

    instance-of v0, v7, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    check-cast v7, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {v7}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v12

    :cond_0
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->rewriteRequestURI(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v8

    const-string v17, "http.virtual-host"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v9

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_1

    new-instance v16, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v15}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v9, v2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v15, v16

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Using virtual host"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_2
    const/4 v11, 0x0

    if-eqz v15, :cond_9

    move-object v11, v15

    :cond_3
    :goto_1
    if-nez v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getTarget()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v11

    :cond_4
    if-nez v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v11

    :cond_5
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance v5, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/client/BasicCredentialsProvider;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)V

    :cond_6
    new-instance v17, Lcz/msebera/android/httpclient/auth/AuthScope;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    new-instance v18, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lcz/msebera/android/httpclient/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->setCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;Lcz/msebera/android/httpclient/auth/Credentials;)V

    :cond_7
    const-string v17, "http.target_host"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v17, "http.route"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v17, "http.request"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->requestExecutor:Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcz/msebera/android/httpclient/impl/execchain/ClientExecChain;->execute(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;Lcz/msebera/android/httpclient/client/methods/HttpExecutionAware;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object v10

    :try_start_0
    const-string v17, "http.response"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-interface {v0, v10, v1}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v10

    :cond_8
    invoke-interface {v7}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v13

    :try_start_1
    invoke-static {v13}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto/16 :goto_0

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/execchain/ProtocolExec;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to parse \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' as a valid URI; "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "request URI and Host header may be inconsistent"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/net/URI;->isAbsolute()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    new-instance v11, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Ljava/net/URI;->getPort()I

    move-result v18

    invoke-virtual {v12}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v11, v0, v1, v2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v6

    invoke-interface {v10}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v6

    :catch_2
    move-exception v6

    invoke-interface {v10}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v6

    :catch_3
    move-exception v6

    invoke-interface {v10}, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;->close()V

    throw v6
.end method

.method rewriteRequestURI(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1, p2}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURIForRoute(Ljava/net/URI;Lcz/msebera/android/httpclient/conn/routing/RouteInfo;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
