.class Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;
.super Ljava/lang/Object;
.source "SSLContextBuilder.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyManagerDelegate"
.end annotation


# instance fields
.field private final aliasStrategy:Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;

.field private final keyManager:Ljavax/net/ssl/X509KeyManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509KeyManager;

    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 12

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v2, p1

    array-length v7, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v6, v2, v5

    iget-object v10, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v10, v6, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v3, v1

    array-length v8, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v0, v3, v4

    new-instance v10, Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyDetails;

    iget-object v11, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v11, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v11

    invoke-direct {v10, v6, v11}, Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyDetails;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    invoke-interface {v9, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;

    invoke-interface {v10, v9, p3}, Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v6, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    new-instance v6, Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyDetails;

    iget-object v7, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v7, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyDetails;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;

    invoke-interface {v6, v5, p3}, Lcz/msebera/android/httpclient/conn/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509KeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
