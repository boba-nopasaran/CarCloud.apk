.class public Lcz/msebera/android/httpclient/entity/mime/content/StringBody;
.super Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;
.source "StringBody.java"


# instance fields
.field private final content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "text/plain"

    sget-object v1, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V
    .locals 2

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;-><init>(Lcz/msebera/android/httpclient/entity/ContentType;)V

    const-string v1, "Text"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;->content:[B

    return-void

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2, p3}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "text/plain"

    invoke-direct {p0, p1, v0, p2}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/content/StringBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;->create(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/mime/content/StringBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/mime/content/StringBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    new-instance v1, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;

    invoke-direct {v1, p0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/mime/content/StringBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;->create(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/mime/content/StringBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 4

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;->getContentType()Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;->content:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1

    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "8bit"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "Output stream"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;->content:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v3, 0x1000

    new-array v2, v3, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
