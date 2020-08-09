.class public Lcom/loopj/android/http/MySSLSocketFactory;
.super Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
.source "MySSLSocketFactory.java"


# instance fields
.field final sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/MySSLSocketFactory$1;-><init>(Lcom/loopj/android/http/MySSLSocketFactory;)V

    iget-object v1, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public static getFixedSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory;

    invoke-static {}, Lcom/loopj/android/http/MySSLSocketFactory;->getKeystore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/loopj/android/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    sget-object v2, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0
.end method

.method public static getKeystore()Ljava/security/KeyStore;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKeystoreOfCA(Ljava/io/InputStream;)Ljava/security/KeyStore;
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    :try_start_3
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v8, "ca"

    invoke-virtual {v6, v8, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_1
    return-object v6

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v5

    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v8

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v8

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v5

    move-object v1, v2

    goto :goto_2
.end method

.method public static getNewHttpClient(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;
    .locals 9

    :try_start_0
    new-instance v4, Lcom/loopj/android/http/MySSLSocketFactory;

    invoke-direct {v4, p0}, Lcom/loopj/android/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    new-instance v3, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v5, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    new-instance v5, Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1bb

    invoke-direct {v5, v6, v4, v7}, Lcz/msebera/android/httpclient/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;->register(Lcz/msebera/android/httpclient/conn/scheme/Scheme;)Lcz/msebera/android/httpclient/conn/scheme/Scheme;

    new-instance v2, Lcz/msebera/android/httpclient/params/BasicHttpParams;

    invoke-direct {v2}, Lcz/msebera/android/httpclient/params/BasicHttpParams;-><init>()V

    sget-object v5, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-static {v2, v5}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->setVersion(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Lcz/msebera/android/httpclient/params/HttpProtocolParams;->setContentCharset(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/lang/String;)V

    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lcz/msebera/android/httpclient/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    new-instance v5, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v5, v0, v2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    new-instance v5, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public fixHttpsURLConnection()V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method
