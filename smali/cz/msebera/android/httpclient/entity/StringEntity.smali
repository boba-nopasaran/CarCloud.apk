.class public Lcz/msebera/android/httpclient/entity/StringEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "StringEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_TEXT:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    const-string v1, "Source string"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcz/msebera/android/httpclient/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcz/msebera/android/httpclient/entity/StringEntity;->content:[B

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->TEXT_PLAIN:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    const-string v2, "Source string"

    invoke-static {p1, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    if-eqz p3, :cond_1

    move-object v0, p3

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcz/msebera/android/httpclient/entity/StringEntity;->content:[B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "text/plain"

    goto :goto_0

    :cond_1
    const-string v0, "ISO-8859-1"

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->TEXT_PLAIN:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/StringEntity;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/StringEntity;->content:[B

    array-length v0, v0

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/StringEntity;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
