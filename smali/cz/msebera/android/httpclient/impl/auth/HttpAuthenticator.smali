.class public Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator$1;
    }
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;-><init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void

    :cond_0
    new-instance p1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doAuth(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    instance-of v0, p1, Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;

    if-eqz v0, :cond_0

    check-cast p1, Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;

    invoke-interface {p1, p2, p3, p4}, Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;->authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/auth/AuthScheme;->authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    goto :goto_0
.end method

.method private ensureAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V
    .locals 1

    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateAuthResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v2

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/auth/AuthState;->getCredentials()Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v3

    sget-object v6, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v7

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_1

    :try_start_0
    invoke-direct {p0, v2, v3, p1, p3}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->doAuth(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    :pswitch_1
    return-void

    :pswitch_2
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->ensureAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    invoke-interface {v2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthOptions()Ljava/util/Queue;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthOption;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthOption;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v2

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/auth/AuthOption;->getCredentials()Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcz/msebera/android/httpclient/auth/AuthState;->update(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Generating response to an authentication challenge using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " scheme"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_3
    :try_start_1
    invoke-direct {p0, v2, v3, p1, p3}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->doAuth(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    invoke-interface {p1, v5}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V
    :try_end_1
    .catch Lcz/msebera/android/httpclient/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " authentication error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->ensureAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isErrorEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " authentication error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->error(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleAuthChallenge(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 9

    :try_start_0
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " requested authentication"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p3, p1, p2, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->getChallenges(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Response contains no authentication challenges"

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v1

    sget-object v6, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v7

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-interface {p3, v3, p1, p2, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->select(Ljava/util/Map;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected authentication options: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_3
    sget-object v6, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v6}, Lcz/msebera/android/httpclient/auth/AuthState;->setState(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    invoke-virtual {p4, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->update(Ljava/util/Queue;)V

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v6, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/auth/MalformedChallengeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed challenge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    const/4 v6, 0x0

    goto :goto_0

    :pswitch_2
    if-nez v1, :cond_5

    :try_start_1
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Auth scheme is null"

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-interface {p3, p1, v6, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->authFailed(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    sget-object v6, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->FAILURE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v6}, Lcz/msebera/android/httpclient/auth/AuthState;->setState(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    :pswitch_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/Header;

    if-eqz v2, :cond_7

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Authorization challenge processed"

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->processChallenge(Lcz/msebera/android/httpclient/Header;)V

    invoke-interface {v1}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Authentication failed"

    invoke-virtual {v6, v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v6

    invoke-interface {p3, p1, v6, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->authFailed(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V

    sget-object v6, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->FAILURE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v6}, Lcz/msebera/android/httpclient/auth/AuthState;->setState(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    sget-object v6, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->HANDSHAKE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v6}, Lcz/msebera/android/httpclient/auth/AuthState;->setState(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->reset()V
    :try_end_1
    .catch Lcz/msebera/android/httpclient/auth/MalformedChallengeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/AuthenticationStrategy;Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 2

    invoke-interface {p3, p1, p2, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->isAuthenticationRequested(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Authentication required"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    invoke-interface {p3, p1, v0, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->authFailed(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->setState(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/HttpAuthenticator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "Authentication succeeded"

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {p4, v0}, Lcz/msebera/android/httpclient/auth/AuthState;->setState(Lcz/msebera/android/httpclient/auth/AuthProtocolState;)V

    invoke-virtual {p4}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v0

    invoke-interface {p3, p1, v0, p5}, Lcz/msebera/android/httpclient/client/AuthenticationStrategy;->authSucceeded(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
