.class public Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
.super Ljava/lang/Object;
.source "RequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/client/config/RequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private authenticationEnabled:Z

.field private circularRedirectsAllowed:Z

.field private connectTimeout:I

.field private connectionRequestTimeout:I

.field private cookieSpec:Ljava/lang/String;

.field private decompressionEnabled:Z

.field private expectContinueEnabled:Z

.field private localAddress:Ljava/net/InetAddress;

.field private maxRedirects:I

.field private proxy:Lcz/msebera/android/httpclient/HttpHost;

.field private proxyPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectsEnabled:Z

.field private relativeRedirectsAllowed:Z

.field private socketTimeout:I

.field private staleConnectionCheckEnabled:Z

.field private targetPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->staleConnectionCheckEnabled:Z

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->redirectsEnabled:Z

    const/16 v0, 0x32

    iput v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->maxRedirects:I

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->relativeRedirectsAllowed:Z

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->authenticationEnabled:Z

    iput v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->connectionRequestTimeout:I

    iput v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->connectTimeout:I

    iput v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->socketTimeout:I

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->decompressionEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .locals 18

    new-instance v1, Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->expectContinueEnabled:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->localAddress:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->staleConnectionCheckEnabled:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->cookieSpec:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->redirectsEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->relativeRedirectsAllowed:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->circularRedirectsAllowed:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->maxRedirects:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->authenticationEnabled:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->targetPreferredAuthSchemes:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget v14, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->connectionRequestTimeout:I

    move-object/from16 v0, p0

    iget v15, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->connectTimeout:I

    move-object/from16 v0, p0

    iget v0, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->socketTimeout:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->decompressionEnabled:Z

    move/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcz/msebera/android/httpclient/client/config/RequestConfig;-><init>(ZLcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;IIIZ)V

    return-object v1
.end method

.method public setAuthenticationEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->authenticationEnabled:Z

    return-object p0
.end method

.method public setCircularRedirectsAllowed(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->circularRedirectsAllowed:Z

    return-object p0
.end method

.method public setConnectTimeout(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->connectTimeout:I

    return-object p0
.end method

.method public setConnectionRequestTimeout(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->connectionRequestTimeout:I

    return-object p0
.end method

.method public setCookieSpec(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->cookieSpec:Ljava/lang/String;

    return-object p0
.end method

.method public setDecompressionEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->decompressionEnabled:Z

    return-object p0
.end method

.method public setExpectContinueEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->expectContinueEnabled:Z

    return-object p0
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->localAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public setMaxRedirects(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->maxRedirects:I

    return-object p0
.end method

.method public setProxy(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    return-object p0
.end method

.method public setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    return-object p0
.end method

.method public setRedirectsEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->redirectsEnabled:Z

    return-object p0
.end method

.method public setRelativeRedirectsAllowed(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->relativeRedirectsAllowed:Z

    return-object p0
.end method

.method public setSocketTimeout(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->socketTimeout:I

    return-object p0
.end method

.method public setStaleConnectionCheckEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->staleConnectionCheckEnabled:Z

    return-object p0
.end method

.method public setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->targetPreferredAuthSchemes:Ljava/util/Collection;

    return-object p0
.end method
