.class public Lcom/car/cloud/HttpRequestManager;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/HttpRequestManager$OnHttpResponseListener;,
        Lcom/car/cloud/HttpRequestManager$MyTrustManager;,
        Lcom/car/cloud/HttpRequestManager$MyHostnameVerifier;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSvc_HttpRequestManager"

.field private static sIns:Lcom/car/cloud/HttpRequestManager;


# instance fields
.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "http work"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/cloud/HttpRequestManager;->mWorkThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/car/cloud/HttpRequestManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/cloud/HttpRequestManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/car/cloud/HttpRequestManager;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method public static create()V
    .locals 1

    new-instance v0, Lcom/car/cloud/HttpRequestManager;

    invoke-direct {v0}, Lcom/car/cloud/HttpRequestManager;-><init>()V

    sput-object v0, Lcom/car/cloud/HttpRequestManager;->sIns:Lcom/car/cloud/HttpRequestManager;

    return-void
.end method

.method public static destory()V
    .locals 1

    sget-object v0, Lcom/car/cloud/HttpRequestManager;->sIns:Lcom/car/cloud/HttpRequestManager;

    iget-object v0, v0, Lcom/car/cloud/HttpRequestManager;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public static instance()Lcom/car/cloud/HttpRequestManager;
    .locals 1

    sget-object v0, Lcom/car/cloud/HttpRequestManager;->sIns:Lcom/car/cloud/HttpRequestManager;

    return-object v0
.end method

.method public static requestHttp(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v7, "https"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p0}, Lcom/car/cloud/HttpRequestManager;->requestHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    const/16 v7, 0x7530

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Ljava/util/Scanner;

    invoke-direct {v7, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v8, "\\A"

    invoke-virtual {v7, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Scanner;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v7, "CarSvc_HttpRequestManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v7

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v7
.end method

.method public static requestHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v3, ""

    const/4 v8, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljavax/net/ssl/TrustManager;

    const/4 v11, 0x0

    new-instance v12, Lcom/car/cloud/HttpRequestManager$MyTrustManager;

    invoke-direct {v12}, Lcom/car/cloud/HttpRequestManager$MyTrustManager;-><init>()V

    aput-object v12, v10, v11

    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v9, v10, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v8, v0

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v9, Lcom/car/cloud/HttpRequestManager$MyHostnameVerifier;

    invoke-direct {v9}, Lcom/car/cloud/HttpRequestManager$MyHostnameVerifier;-><init>()V

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const/16 v9, 0x7530

    invoke-virtual {v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v9, "\\A"

    invoke-virtual {v6, v9}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/util/Scanner;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_0
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    move-object v5, v6

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    :try_start_2
    const-string v3, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    const-string v9, "CarSvc_HttpRequestManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_1

    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_5
    throw v9

    :catchall_1
    move-exception v9

    move-object v5, v6

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v5, v6

    goto :goto_2

    :cond_6
    move-object v5, v6

    goto :goto_1
.end method


# virtual methods
.method public requestHttp(Ljava/lang/String;Lcom/car/cloud/HttpRequestManager$OnHttpResponseListener;)V
    .locals 2

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/car/cloud/HttpRequestManager;->requestHttps(Ljava/lang/String;Lcom/car/cloud/HttpRequestManager$OnHttpResponseListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/cloud/HttpRequestManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/HttpRequestManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/car/cloud/HttpRequestManager$1;-><init>(Lcom/car/cloud/HttpRequestManager;Ljava/lang/String;Lcom/car/cloud/HttpRequestManager$OnHttpResponseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public requestHttps(Ljava/lang/String;Lcom/car/cloud/HttpRequestManager$OnHttpResponseListener;)V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/HttpRequestManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/HttpRequestManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/car/cloud/HttpRequestManager$2;-><init>(Lcom/car/cloud/HttpRequestManager;Ljava/lang/String;Lcom/car/cloud/HttpRequestManager$OnHttpResponseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
