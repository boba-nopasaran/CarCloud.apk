.class public Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    return-void
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;-><init>()V

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    if-lez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_2

    :goto_0
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_1
    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    invoke-interface {v3, p2}, Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    :goto_1
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, p1, v1, v0, p6}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v3

    return-object v3

    :cond_2
    const/4 p5, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    goto :goto_1
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    const-string v4, "Remote address"

    invoke-static {p2, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "HTTP parameters"

    invoke-static {p4, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p1

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/scheme/PlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoReuseaddr(Lcz/msebera/android/httpclient/params/HttpParams;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setReuseAddress(Z)V

    invoke-virtual {v3, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v0

    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v2

    :try_start_0
    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v3, p2, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    new-instance v4, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
