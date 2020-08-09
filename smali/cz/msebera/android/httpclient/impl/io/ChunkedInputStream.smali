.class public Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final CHUNK_CRLF:I = 0x3

.field private static final CHUNK_DATA:I = 0x2

.field private static final CHUNK_INVALID:I = 0x7fffffff

.field private static final CHUNK_LEN:I = 0x1


# instance fields
.field private final buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private final constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

.field private eof:Z

.field private footers:[Lcz/msebera/android/httpclient/Header;

.field private final in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field private pos:I

.field private state:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    new-array v0, v1, [Lcz/msebera/android/httpclient/Header;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->footers:[Lcz/msebera/android/httpclient/Header;

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    const/4 v0, 0x1

    iput v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    return-void

    :cond_0
    sget-object p2, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    goto :goto_0
.end method

.method private getChunkSize()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x1

    iget v4, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Inconsistent codec state"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v5, v6}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v0

    if-ne v0, v7, :cond_0

    new-instance v5, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v6, "CRLF expected at end of chunk"

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v6, "Unexpected content at the end of chunk"

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v5, 0x1

    iput v5, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    :pswitch_2
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v5, v6}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v1

    if-ne v1, v7, :cond_2

    new-instance v5, Lcz/msebera/android/httpclient/ConnectionClosedException;

    const-string v6, "Premature end of chunk coded message body: closing chunk expected"

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v3

    :cond_3
    :try_start_0
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->buffer:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    :catch_0
    move-exception v2

    new-instance v5, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v6, "Bad chunk header"

    invoke-direct {v5, v6}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextChunk()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v3, 0x7fffffff

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    if-ne v1, v3, :cond_0

    new-instance v1, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v2, "Corrupt data stream"

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->getChunkSize()I

    move-result v1

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    if-gez v1, :cond_1

    new-instance v1, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    const-string v2, "Negative chunk size"

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcz/msebera/android/httpclient/MalformedChunkCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    throw v0

    :cond_1
    const/4 v1, 0x2

    :try_start_1
    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const/4 v1, 0x0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->parseTrailerHeaders()V
    :try_end_1
    .catch Lcz/msebera/android/httpclient/MalformedChunkCodingException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void
.end method

.method private parseTrailerHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v3

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->constraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/config/MessageConstraints;->getMaxLineLength()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;->parseHeaders(Lcz/msebera/android/httpclient/io/SessionInputBuffer;IILcz/msebera/android/httpclient/message/LineParser;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->footers:[Lcz/msebera/android/httpclient/Header;
    :try_end_0
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcz/msebera/android/httpclient/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    instance-of v1, v1, Lcz/msebera/android/httpclient/io/BufferInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    check-cast v1, Lcz/msebera/android/httpclient/io/BufferInfo;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/io/BufferInfo;->length()I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    if-nez v1, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    const/16 v1, 0x800

    new-array v0, v1, [B

    :cond_0
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    :cond_1
    iput-boolean v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    iput-boolean v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    iput-boolean v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    throw v1
.end method

.method public getFooters()[Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->footers:[Lcz/msebera/android/httpclient/Header;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->nextChunk()V

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->read()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->closed:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->nextChunk()V

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->in:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    iget v4, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->read([BII)I

    move-result v0

    if-eq v0, v1, :cond_4

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    iget v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->state:I

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->eof:Z

    new-instance v1, Lcz/msebera/android/httpclient/TruncatedChunkException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated chunk ( expected size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->chunkSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; actual size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/TruncatedChunkException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
