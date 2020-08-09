.class public Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v28, "HTTP request"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v28, "HTTP context"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v16

    const-string v28, "CONNECT"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v3

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;

    move-result-object v8

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    const-string v29, "Cookie store not specified in HTTP context"

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getCookieSpecRegistry()Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v22

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    const-string v29, "CookieSpec registry not specified in HTTP context"

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v26

    if-nez v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    const-string v29, "Target host not set in the context"

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getHttpRoute()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    move-result-object v25

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    const-string v29, "Connection route not set in the context"

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_6

    const-string v19, "default"

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "CookieSpec selected: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_7
    const/16 v23, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move/from16 v28, v0

    if-eqz v28, :cond_9

    move-object/from16 v28, p1

    check-cast v28, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface/range {v28 .. v28}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v23

    :goto_1
    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v18

    :goto_2
    invoke-virtual/range {v26 .. v26}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v26 .. v26}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v20

    if-gez v20, :cond_8

    invoke-interface/range {v25 .. v25}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v20

    :cond_8
    new-instance v6, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    if-ltz v20, :cond_b

    :goto_3
    invoke-static/range {v18 .. v18}, Lcz/msebera/android/httpclient/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_c

    :goto_4
    invoke-interface/range {v25 .. v25}, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;->isSecure()Z

    move-result v28

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v6, v13, v0, v1, v2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unsupported cookie policy: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    :try_start_0
    new-instance v24, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v23, v24

    goto :goto_1

    :cond_a
    const/16 v18, 0x0

    goto :goto_2

    :cond_b
    const/16 v20, 0x0

    goto :goto_3

    :cond_c
    const-string v18, "/"

    goto :goto_4

    :cond_d
    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;->create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;

    move-result-object v7

    invoke-interface {v8}, Lcz/msebera/android/httpclient/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v9

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    const/4 v10, 0x0

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_e
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/cookie/Cookie;

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lcz/msebera/android/httpclient/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v28

    if-nez v28, :cond_10

    invoke-interface {v7, v5, v6}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result v28

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cookie "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " match "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_f
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v28

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/client/protocol/RequestAddCookies;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cookie "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " expired"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_11
    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_12
    if-eqz v10, :cond_13

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lcz/msebera/android/httpclient/client/CookieStore;->clearExpired(Ljava/util/Date;)Z

    :cond_13
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_14

    invoke-interface {v7, v15}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcz/msebera/android/httpclient/Header;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_6

    :cond_14
    invoke-interface {v7}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersion()I

    move-result v27

    if-lez v27, :cond_15

    invoke-interface {v7}, Lcz/msebera/android/httpclient/cookie/CookieSpec;->getVersionHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v11

    if-eqz v11, :cond_15

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    :cond_15
    const-string v28, "http.cookie-spec"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v7}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v28, "http.cookie-origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v28

    goto/16 :goto_1
.end method
