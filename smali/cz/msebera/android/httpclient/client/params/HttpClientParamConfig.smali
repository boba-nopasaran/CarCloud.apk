.class public final Lcz/msebera/android/httpclient/client/params/HttpClientParamConfig;
.super Ljava/lang/Object;
.source "HttpClientParamConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestConfig(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->custom()Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v3, "http.socket.timeout"

    invoke-interface {p0, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v3, "http.connection.stalecheck"

    invoke-interface {p0, v3, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setStaleConnectionCheckEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v3, "http.connection.timeout"

    invoke-interface {p0, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v3, "http.protocol.expect-continue"

    invoke-interface {p0, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setExpectContinueEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setProxy(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setLocalAddress(Ljava/net/InetAddress;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string v0, "http.auth.proxy-scheme-pref"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string v0, "http.auth.target-scheme-pref"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v3, "http.protocol.handle-authentication"

    invoke-interface {p0, v3, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setAuthenticationEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v3, "http.protocol.allow-circular-redirects"

    invoke-interface {p0, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setCircularRedirectsAllowed(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v3, "http.conn-manager.timeout"

    const-wide/16 v4, 0x0

    invoke-interface {p0, v3, v4, v5}, Lcz/msebera/android/httpclient/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setConnectionRequestTimeout(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string v0, "http.protocol.cookie-policy"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setCookieSpec(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v3, "http.protocol.max-redirects"

    const/16 v4, 0x32

    invoke-interface {p0, v3, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setMaxRedirects(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    const-string v3, "http.protocol.handle-redirects"

    invoke-interface {p0, v3, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setRedirectsEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v3

    const-string v0, "http.protocol.reject-relative-redirect"

    invoke-interface {p0, v0, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setRelativeRedirectsAllowed(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->build()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
