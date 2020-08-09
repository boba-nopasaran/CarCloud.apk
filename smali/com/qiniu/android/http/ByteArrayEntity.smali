.class public final Lcom/qiniu/android/http/ByteArrayEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final progressStep:I = 0x2000


# instance fields
.field private final b:[B

.field private final cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

.field private final len:I

.field private final offset:I

.field private final progressHandler:Lcom/qiniu/android/http/ProgressHandler;


# direct methods
.method public constructor <init>([BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 3

    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/qiniu/android/http/ByteArrayEntity;->b:[B

    iput p2, p0, Lcom/qiniu/android/http/ByteArrayEntity;->offset:I

    iput p3, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    iput-object p4, p0, Lcom/qiniu/android/http/ByteArrayEntity;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    iput-object p5, p0, Lcom/qiniu/android/http/ByteArrayEntity;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    return-void
.end method

.method public constructor <init>([BLcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V
    .locals 6

    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/android/http/ByteArrayEntity;-><init>([BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/ByteArrayEntity;)I
    .locals 1

    iget v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    return v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/http/ByteArrayEntity;)Lcom/qiniu/android/http/ProgressHandler;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    return-object v0
.end method

.method private writeWithNotify(Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x2000

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    if-ge v3, v6, :cond_3

    iget-object v6, p0, Lcom/qiniu/android/http/ByteArrayEntity;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/qiniu/android/http/ByteArrayEntity;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    invoke-interface {v6}, Lcom/qiniu/android/http/CancellationHandler;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v5, Lcom/qiniu/android/http/CancellationHandler$CancellationException;

    invoke-direct {v5}, Lcom/qiniu/android/http/CancellationHandler$CancellationException;-><init>()V

    throw v5

    :cond_0
    iget v6, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    sub-int v1, v6, v3

    if-ge v1, v5, :cond_2

    move v2, v1

    :goto_2
    iget-object v6, p0, Lcom/qiniu/android/http/ByteArrayEntity;->b:[B

    iget v7, p0, Lcom/qiniu/android/http/ByteArrayEntity;->offset:I

    add-int/2addr v7, v3

    invoke-virtual {p1, v6, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v6, p0, Lcom/qiniu/android/http/ByteArrayEntity;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    if-eqz v6, :cond_1

    move v4, v3

    move-object v0, p0

    new-instance v6, Lcom/qiniu/android/http/ByteArrayEntity$1;

    invoke-direct {v6, p0, v4, v0}, Lcom/qiniu/android/http/ByteArrayEntity$1;-><init>(Lcom/qiniu/android/http/ByteArrayEntity;ILcom/qiniu/android/http/ByteArrayEntity;)V

    invoke-static {v6}, Lcom/qiniu/android/utils/AsyncRun;->run(Ljava/lang/Runnable;)V

    :cond_1
    add-int/2addr v3, v2

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/qiniu/android/http/ByteArrayEntity;->b:[B

    iget v2, p0, Lcom/qiniu/android/http/ByteArrayEntity;->offset:I

    iget v3, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->progressHandler:Lcom/qiniu/android/http/ProgressHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->cancellationHandler:Lcom/qiniu/android/http/CancellationHandler;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/ByteArrayEntity;->writeWithNotify(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/qiniu/android/http/ByteArrayEntity;->b:[B

    iget v1, p0, Lcom/qiniu/android/http/ByteArrayEntity;->offset:I

    iget v2, p0, Lcom/qiniu/android/http/ByteArrayEntity;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
