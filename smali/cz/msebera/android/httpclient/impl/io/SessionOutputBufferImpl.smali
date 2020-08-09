.class public Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;
.super Ljava/lang/Object;
.source "SessionOutputBufferImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/io/SessionOutputBuffer;
.implements Lcz/msebera/android/httpclient/io/BufferInfo;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final CRLF:[B


# instance fields
.field private bbuf:Ljava/nio/ByteBuffer;

.field private final buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final fragementSizeHint:I

.field private final metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

.field private outstream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p2, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;-><init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILjava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;IILjava/nio/charset/CharsetEncoder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    const-string v0, "HTTP transport metrcis"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    new-instance v0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {v0, p2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    if-ltz p3, :cond_0

    :goto_0
    iput p3, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->fragementSizeHint:I

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    return-void

    :cond_0
    const/4 p3, 0x0

    goto :goto_0
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->streamWrite([BII)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->clear()V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_0
    return-void
.end method

.method private flushStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    return-void
.end method

.method private handleEncodingResult(Ljava/nio/charset/CoderResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method private streamWrite([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    const-string v1, "Output stream"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private writeEncoded(Ljava/nio/CharBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    :goto_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->handleEncodingResult(Ljava/nio/charset/CoderResult;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->handleEncodingResult(Ljava/nio/charset/CoderResult;)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bind(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    return-void
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushStream()V

    return-void
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->fragementSizeHint:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->outstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write([BII)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->fragementSizeHint:I

    if-gt p3, v1, :cond_1

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->capacity()I

    move-result v1

    if-le p3, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->streamWrite([BII)V

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->metrics:Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Lcz/msebera/android/httpclient/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v2

    sub-int v0, v1, v2

    if-le p3, v0, :cond_3

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    :cond_3
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public writeLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v4, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v3

    :goto_1
    if-lez v3, :cond_4

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->capacity()I

    move-result v4

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v5

    sub-int v1, v4, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v4, p1, v2, v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V

    :cond_1
    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->buffer:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->isFull()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->flushBuffer()V

    :cond_2
    add-int/2addr v2, v1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->writeEncoded(Ljava/nio/CharBuffer;)V

    :cond_4
    sget-object v4, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->CRLF:[B

    invoke-virtual {p0, v4}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write([B)V

    goto :goto_0
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->writeEncoded(Ljava/nio/CharBuffer;)V

    :cond_2
    sget-object v2, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->CRLF:[B

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/impl/io/SessionOutputBufferImpl;->write([B)V

    goto :goto_0
.end method