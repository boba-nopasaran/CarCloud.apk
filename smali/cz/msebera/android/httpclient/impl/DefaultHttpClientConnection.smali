.class public Lcz/msebera/android/httpclient/impl/DefaultHttpClientConnection;
.super Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;
.source "DefaultHttpClientConnection.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;-><init>()V

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Socket"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "HTTP parameters"

    invoke-static {p2, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultHttpClientConnection;->assertNotOpen()V

    const-string v3, "http.tcp.nodelay"

    invoke-interface {p2, v3, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const-string v3, "http.socket.timeout"

    invoke-interface {p2, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string v3, "http.socket.keepalive"

    invoke-interface {p2, v3, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    const-string v3, "http.socket.linger"

    const/4 v4, -0x1

    invoke-interface {p2, v3, v4}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    if-lez v0, :cond_1

    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/SocketHttpClientConnection;->bind(Ljava/net/Socket;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method
