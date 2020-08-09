.class public Lcz/msebera/android/httpclient/impl/io/SocketOutputBuffer;
.super Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;
.source "SocketOutputBuffer.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILcz/msebera/android/httpclient/params/HttpParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/AbstractSessionOutputBuffer;-><init>()V

    const-string v1, "Socket"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move v0, p2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    :cond_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    const/16 v0, 0x400

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lcz/msebera/android/httpclient/impl/io/SocketOutputBuffer;->init(Ljava/io/OutputStream;ILcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method
