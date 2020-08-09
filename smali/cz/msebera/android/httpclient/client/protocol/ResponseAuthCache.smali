.class public Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;
.super Ljava/lang/Object;
.source "ResponseAuthCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method

.method private cache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .locals 3

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' auth scheme for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/client/AuthCache;->put(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    return-void
.end method

.method private isCachable(Lcz/msebera/android/httpclient/auth/AuthState;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Basic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Digest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private uncache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .locals 3

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing from cache \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' auth scheme for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/client/AuthCache;->remove(Lcz/msebera/android/httpclient/HttpHost;)V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v8, "HTTP request"

    invoke-static {p1, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v8, "HTTP context"

    invoke-static {p2, v8}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v8, "http.auth.auth-cache"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/AuthCache;

    const-string v8, "http.target_host"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HttpHost;

    const-string v8, "http.auth.target-scope"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz/msebera/android/httpclient/auth/AuthState;

    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Target auth state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v7}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->isCachable(Lcz/msebera/android/httpclient/auth/AuthState;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "http.scheme-registry"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v8

    if-gez v8, :cond_1

    invoke-virtual {v4, v5}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->getScheme(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    move-result-object v3

    new-instance v6, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v9

    invoke-virtual {v3, v9}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;->resolvePort(I)I

    move-result v9

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v8, v9, v10}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v5, v6

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;-><init>()V

    const-string v8, "http.auth.auth-cache"

    invoke-interface {p2, v8, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    sget-object v8, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v9

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :cond_3
    :goto_0
    const-string v8, "http.proxy_host"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/HttpHost;

    const-string v8, "http.auth.proxy-scope"

    invoke-interface {p2, v8}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/auth/AuthState;

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-object v8, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Proxy auth state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->isCachable(Lcz/msebera/android/httpclient/auth/AuthState;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/BasicAuthCache;-><init>()V

    const-string v8, "http.auth.auth-cache"

    invoke-interface {p2, v8, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    sget-object v8, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v9

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    :cond_6
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-direct {p0, v0, v5, v8}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->cache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-direct {p0, v0, v5, v8}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->uncache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-direct {p0, v0, v1, v8}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->cache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v8

    invoke-direct {p0, v0, v1, v8}, Lcz/msebera/android/httpclient/client/protocol/ResponseAuthCache;->uncache(Lcz/msebera/android/httpclient/client/AuthCache;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
