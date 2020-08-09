.class Lcom/loopj/android/http/MyRedirectHandler;
.super Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;
.source "MyRedirectHandler.java"


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# instance fields
.field private final enableRedirects:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectHandler;-><init>()V

    iput-boolean p1, p0, Lcom/loopj/android/http/MyRedirectHandler;->enableRedirects:Z

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

    if-nez p1, :cond_0

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "HTTP response may not be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    const-string v12, "location"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v4

    if-nez v4, :cond_1

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

    :cond_1
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    const-string v14, "%20"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpResponse;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object v5

    invoke-virtual {v11}, Ljava/net/URI;->isAbsolute()Z

    move-result v12

    if-nez v12, :cond_4

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

    if-nez v10, :cond_3

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Target host not available in the HTTP context"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
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

    :cond_4
    const-string v12, "http.protocol.allow-circular-redirects"

    invoke-interface {v5, v12}, Lcz/msebera/android/httpclient/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    if-nez v6, :cond_5

    new-instance v6, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;-><init>()V

    const-string v12, "http.protocol.redirect-locations"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v11}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

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

    if-eqz v12, :cond_7

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

    :cond_6
    move-object v7, v11

    goto :goto_0

    :cond_7
    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    :cond_8
    return-object v11
.end method

.method public isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/loopj/android/http/MyRedirectHandler;->enableRedirects:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP response may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
