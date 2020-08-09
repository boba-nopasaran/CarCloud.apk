.class public final Lcz/msebera/android/httpclient/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static consumeQuietly(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getContentCharSet(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v3, "Entity"

    invoke-static {p0, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-interface {v3, v4}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getContentMimeType(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v2, "Entity"

    invoke-static {p0, v2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toByteArray(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string v6, "Entity"

    invoke-static {p0, v6}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    const-string v6, "HTTP entity too large to be buffered in memory"

    invoke-static {v5, v6}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v1, v6

    if-gez v1, :cond_2

    const/16 v1, 0x1000

    :cond_2
    new-instance v0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    const/16 v5, 0x1000

    new-array v4, v5, [B

    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v5

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static toString(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Lcz/msebera/android/httpclient/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const/4 v9, 0x0

    const-string v10, "Entity"

    invoke-static {p0, v10}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    const-string v10, "HTTP entity too large to be buffered in memory"

    invoke-static {v9, v10}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    long-to-int v4, v10

    if-gez v4, :cond_2

    const/16 v4, 0x1000

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->get(Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    move-object v1, p1

    :cond_4
    if-nez v1, :cond_5

    :try_start_2
    sget-object v1, Lcz/msebera/android/httpclient/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    :cond_5
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-direct {v0, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    const/16 v9, 0x400

    new-array v8, v9, [C

    :goto_1
    invoke-virtual {v7, v8}, Ljava/io/Reader;->read([C)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9

    :catch_0
    move-exception v3

    if-nez p1, :cond_3

    :try_start_3
    new-instance v9, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {v3}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static updateEntity(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Response"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {p0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method
