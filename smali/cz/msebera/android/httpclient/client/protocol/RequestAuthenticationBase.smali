.class abstract Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;
.super Ljava/lang/Object;
.source "RequestAuthenticationBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method

.method private authenticate(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

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
.method process(Lcz/msebera/android/httpclient/auth/AuthState;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 9

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->getCredentials()Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v3

    sget-object v6, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase$1;->$SwitchMap$cz$msebera$android$httpclient$auth$AuthProtocolState:[I

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->getState()Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    move-result-object v7

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    invoke-direct {p0, v2, v3, p2, p3}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->authenticate(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V
    :try_end_0
    .catch Lcz/msebera/android/httpclient/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->ensureAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    invoke-interface {v2}, Lcz/msebera/android/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthOptions()Ljava/util/Queue;

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

    invoke-virtual {p1, v2, v3}, Lcz/msebera/android/httpclient/auth/AuthState;->update(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;)V

    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

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
    invoke-direct {p0, v2, v3, p2, p3}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->authenticate(Lcz/msebera/android/httpclient/auth/AuthScheme;Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/HttpRequest;->addHeader(Lcz/msebera/android/httpclient/Header;)V
    :try_end_1
    .catch Lcz/msebera/android/httpclient/auth/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

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
    invoke-direct {p0, v2}, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->ensureAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isErrorEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcz/msebera/android/httpclient/client/protocol/RequestAuthenticationBase;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

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
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
