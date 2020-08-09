.class public Lcz/msebera/android/httpclient/client/params/HttpClientParams;
.super Ljava/lang/Object;
.source "HttpClientParams.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionManagerTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)J
    .locals 4

    const-string v1, "HTTP parameters"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "http.conn-manager.timeout"

    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {p0}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v1

    int-to-long v2, v1

    goto :goto_0
.end method

.method public static getCookiePolicy(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/lang/String;
    .locals 2

    const-string v1, "HTTP parameters"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "http.protocol.cookie-policy"

    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "best-match"

    :cond_0
    return-object v0
.end method

.method public static isAuthenticating(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.handle-authentication"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRedirecting(Lcz/msebera/android/httpclient/params/HttpParams;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.handle-redirects"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAuthenticating(Lcz/msebera/android/httpclient/params/HttpParams;Z)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.handle-authentication"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public static setConnectionManagerTimeout(Lcz/msebera/android/httpclient/params/HttpParams;J)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0, p1, p2}, Lcz/msebera/android/httpclient/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public static setCookiePolicy(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.cookie-policy"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public static setRedirecting(Lcz/msebera/android/httpclient/params/HttpParams;Z)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.handle-redirects"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method
