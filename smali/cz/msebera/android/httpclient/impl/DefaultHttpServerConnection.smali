.class public Lcz/msebera/android/httpclient/impl/DefaultHttpServerConnection;
.super Lcz/msebera/android/httpclient/impl/SocketHttpServerConnection;
.source "DefaultHttpServerConnection.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpServerConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "Socket"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP parameters"

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultHttpServerConnection;->assertNotOpen()V

    const-string v1, "http.tcp.nodelay"

    invoke-interface {p2, v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const-string v1, "http.socket.timeout"

    invoke-interface {p2, v1, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string v1, "http.socket.keepalive"

    invoke-interface {p2, v1, v3}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    const-string v1, "http.socket.linger"

    const/4 v4, -0x1

    invoke-interface {p2, v1, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    if-lez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_0
    if-ltz v0, :cond_1

    if-lez v0, :cond_3

    :goto_1
    invoke-virtual {p1, v2, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpServerConnection;->bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method
