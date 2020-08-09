.class public Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final cache:[B

.field private cachePosition:I

.field private closed:Z

.field private final out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

.field private wroteLastChunk:Z


# direct methods
.method public constructor <init>(ILcz/msebera/android/httpclient/io/SessionOutputBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    new-array v0, p1, [B

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;-><init>(ILcz/msebera/android/httpclient/io/SessionOutputBuffer;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2, p1}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;-><init>(ILcz/msebera/android/httpclient/io/SessionOutputBuffer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->finish()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->flush()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->flushCache()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->writeClosingChunk()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->wroteLastChunk:Z

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->flushCache()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method protected flushCache()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-interface {v0, v1, v3, v2}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->write([BII)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    :cond_0
    return-void
.end method

.method protected flushCacheWithAppend([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-interface {v0, v1, v3, v2}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->write([BII)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->write([BII)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->flushCache()V

    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    array-length v0, v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->flushCacheWithAppend([BII)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cache:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->cachePosition:I

    goto :goto_0
.end method

.method protected writeClosingChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedOutputStream;->out:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    return-void
.end method
