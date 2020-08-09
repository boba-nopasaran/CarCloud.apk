.class public Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;
.super Ljava/lang/Object;
.source "PreemptiveAuthorizationHttpRequestInterceptor.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v5, "http.auth.target-scope"

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/auth/AuthState;

    const-string v5, "http.auth.credentials-provider"

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    const-string v5, "http.target_host"

    invoke-interface {p2, v5}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->getCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v5, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    invoke-virtual {v1, v5}, Lcz/msebera/android/httpclient/auth/AuthState;->setAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/auth/AuthState;->setCredentials(Lcz/msebera/android/httpclient/auth/Credentials;)V

    :cond_0
    return-void
.end method
