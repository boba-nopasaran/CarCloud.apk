.class abstract Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
.super Ljava/lang/Object;
.source "AbstractMultipartForm.java"


# static fields
.field private static final CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private static final FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;


# instance fields
.field final boundary:Ljava/lang/String;

.field final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Multipart boundary"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->charset:Ljava/nio/charset/Charset;

    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->boundary:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    .locals 5

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v2}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    return-object v0
.end method

.method private static writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v1, p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method protected static writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method protected static writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method doWriteTo(Ljava/io/OutputStream;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->charset:Ljava/nio/charset/Charset;

    iget-object v4, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->boundary:Ljava/lang/String;

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->getBodyParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V

    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    move-result-object v3

    invoke-interface {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method protected abstract formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBodyParts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end method

.method public getTotalLength()J
    .locals 14

    const-wide/16 v10, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->getBodyParts()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_1

    add-long/2addr v2, v6

    goto :goto_0

    :cond_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {p0, v8, v12}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->doWriteTo(Ljava/io/OutputStream;Z)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v10, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v10, v10

    add-long/2addr v10, v2

    :cond_1
    :goto_1
    return-wide v10

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->doWriteTo(Ljava/io/OutputStream;Z)V

    return-void
.end method
