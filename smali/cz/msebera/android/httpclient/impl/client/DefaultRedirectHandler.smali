.class public Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultRedirectHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RedirectHandler;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


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

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public getLocationURI(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/URI;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ProtocolException;
        }
    .end annotation

    const-string v12, "HTTP response"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v12, "location"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received redirect response "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " but no location header"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v12, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v12}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Redirect requested to location \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpResponse;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v5

    invoke-virtual {v11}, Ljava/net/URI;->isAbsolute()Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "http.protocol.reject-relative-redirect"

    invoke-interface {v5, v12}, Lcz/msebera/android/httpclient/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Relative redirect location \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' not allowed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v12

    :catch_0
    move-exception v2

    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid redirect URI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_2
    const-string v12, "http.target_host"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcz/msebera/android/httpclient/HttpHost;

    const-string v12, "Target host"

    invoke-static {v10, v12}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "http.request"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz/msebera/android/httpclient/HttpRequest;

    :try_start_1
    new-instance v9, Ljava/net/URI;

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v12

    invoke-interface {v12}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-static {v9, v10, v12}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1, v11}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    :cond_3
    const-string v12, "http.protocol.allow-circular-redirects"

    invoke-interface {v5, v12}, Lcz/msebera/android/httpclient/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    if-nez v6, :cond_4

    new-instance v6, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;-><init>()V

    const-string v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v11}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    :try_start_2
    new-instance v10, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v13

    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v12, v13, v14}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v12, 0x1

    invoke-static {v11, v10, v12}, Lcz/msebera/android/httpclient/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lcz/msebera/android/httpclient/HttpHost;Z)Ljava/net/URI;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v12

    if-eqz v12, :cond_6

    new-instance v12, Lcz/msebera/android/httpclient/client/CircularRedirectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Circular redirect to \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcz/msebera/android/httpclient/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v12

    :catch_1
    move-exception v2

    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :catch_2
    move-exception v2

    new-instance v12, Lcz/msebera/android/httpclient/ProtocolException;

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_5
    move-object v7, v11

    goto :goto_0

    :cond_6
    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    :cond_7
    return-object v11
.end method

.method public isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "HTTP response"

    invoke-static {p1, v5}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    const-string v5, "http.request"

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpRequest;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "HEAD"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    move v3, v4

    goto :goto_0

    :pswitch_2
    move v3, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
