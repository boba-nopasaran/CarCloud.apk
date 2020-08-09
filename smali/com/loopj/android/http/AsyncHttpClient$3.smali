.class Lcom/loopj/android/http/AsyncHttpClient$3;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$3;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;-><init>()V

    const-string v6, "Bearer"

    new-instance v7, Lcom/loopj/android/http/BearerAuthSchemeFactory;

    invoke-direct {v7}, Lcom/loopj/android/http/BearerAuthSchemeFactory;-><init>()V

    invoke-virtual {v0, v6, v7}, Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;)V

    const-string v6, "http.authscheme-registry"

    invoke-interface {p2, v6, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "http.auth.target-scope"

    invoke-interface {p2, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/auth/AuthState;

    const-string v6, "http.auth.credentials-provider"

    invoke-interface {p2, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    const-string v6, "http.target_host"

    invoke-interface {p2, v6}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/auth/AuthState;->getAuthScheme()Lcz/msebera/android/httpclient/auth/AuthScheme;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthScope;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v7

    invoke-direct {v1, v6, v7}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v1}, Lcz/msebera/android/httpclient/client/CredentialsProvider;->getCredentials(Lcz/msebera/android/httpclient/auth/AuthScope;)Lcz/msebera/android/httpclient/auth/Credentials;

    move-result-object v3

    instance-of v6, v3, Lcom/loopj/android/http/TokenCredentials;

    if-eqz v6, :cond_1

    new-instance v6, Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;

    invoke-direct {v6}, Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;-><init>()V

    invoke-virtual {v2, v6}, Lcz/msebera/android/httpclient/auth/AuthState;->setAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/auth/AuthState;->setCredentials(Lcz/msebera/android/httpclient/auth/Credentials;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_0

    new-instance v6, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/auth/BasicScheme;-><init>()V

    invoke-virtual {v2, v6}, Lcz/msebera/android/httpclient/auth/AuthState;->setAuthScheme(Lcz/msebera/android/httpclient/auth/AuthScheme;)V

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/auth/AuthState;->setCredentials(Lcz/msebera/android/httpclient/auth/Credentials;)V

    goto :goto_0
.end method
