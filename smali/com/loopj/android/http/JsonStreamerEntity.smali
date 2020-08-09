.class public Lcom/loopj/android/http/JsonStreamerEntity;
.super Ljava/lang/Object;
.source "JsonStreamerEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

.field private static final HEADER_GZIP_ENCODING:Lcz/msebera/android/httpclient/Header;

.field private static final HEADER_JSON_CONTENT:Lcz/msebera/android/httpclient/Header;

.field private static final JSON_FALSE:[B

.field private static final JSON_NULL:[B

.field private static final JSON_TRUE:[B

.field private static final LOG_TAG:Ljava/lang/String; = "JsonStreamerEntity"

.field private static final STREAM_CONTENTS:[B

.field private static final STREAM_NAME:[B

.field private static final STREAM_TYPE:[B


# instance fields
.field private final buffer:[B

.field private final contentEncoding:Lcz/msebera/android/httpclient/Header;

.field private final elapsedField:[B

.field private final jsonParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation in this implementation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_TRUE:[B

    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_FALSE:[B

    const-string v0, "null"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    const-string v0, "name"

    invoke-static {v0}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_NAME:[B

    const-string v0, "type"

    invoke-static {v0}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_TYPE:[B

    const-string v0, "contents"

    invoke-static {v0}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lcz/msebera/android/httpclient/Header;

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lcz/msebera/android/httpclient/Header;

    return-void
.end method

.method public constructor <init>(Lcom/loopj/android/http/ResponseHandlerInterface;ZLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    iput-object p1, p0, Lcom/loopj/android/http/JsonStreamerEntity;->progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->HEADER_GZIP_ENCODING:Lcz/msebera/android/httpclient/Header;

    :goto_0
    iput-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1
.end method

.method private endMetaData(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static escape(Ljava/lang/String;)[B
    .locals 9

    const/16 v8, 0x22

    if-nez p0, :cond_0

    sget-object v7, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    :goto_0
    return-object v7

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v7, 0x80

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/16 v7, 0x1f

    if-le v0, v7, :cond_2

    const/16 v7, 0x7f

    if-lt v0, v7, :cond_1

    const/16 v7, 0x9f

    if-le v0, v7, :cond_2

    :cond_1
    const/16 v7, 0x2000

    if-lt v0, v7, :cond_4

    const/16 v7, 0x20ff

    if-gt v0, v7, :cond_4

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "\\u"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v1, v7, 0x4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_3

    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :sswitch_0
    const-string v7, "\\\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v7, "\\\\"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v7, "\\b"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v7, "\\f"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v7, "\\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string v7, "\\r"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string v7, "\\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x2c

    const/16 v1, 0x3a

    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_NAME:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p2}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_TYPE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p3}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->STREAM_CONTENTS:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeToFromFile(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$FileWrapper;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v8}, Lcom/loopj/android/http/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    iget-object v5, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Lcom/loopj/android/http/Base64OutputStream;

    const/16 v5, 0x12

    invoke-direct {v0, p1, v5}, Lcom/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    iget-object v5, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    iget-object v5, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v1}, Lcom/loopj/android/http/Base64OutputStream;->write([BII)V

    int-to-long v8, v1

    add-long/2addr v2, v8

    iget-object v5, p0, Lcom/loopj/android/http/JsonStreamerEntity;->progressHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v5, v2, v3, v6, v7}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendProgressMessage(JJ)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/loopj/android/http/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method private writeToFromStream(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$StreamWrapper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/loopj/android/http/JsonStreamerEntity;->writeMetaData(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loopj/android/http/Base64OutputStream;

    const/16 v2, 0x12

    invoke-direct {v0, p1, v2}, Lcom/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    iget-object v2, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/loopj/android/http/JsonStreamerEntity;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/loopj/android/http/Base64OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/loopj/android/http/JsonStreamerEntity;->endMetaData(Ljava/io/OutputStream;)V

    iget-boolean v2, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->ERR_UNSUPPORTED:Ljava/lang/UnsupportedOperationException;

    throw v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .locals 1

    sget-object v0, Lcom/loopj/android/http/JsonStreamerEntity;->HEADER_JSON_CONTENT:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "Output stream cannot be null."

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loopj/android/http/JsonStreamerEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    new-instance v14, Ljava/util/zip/GZIPOutputStream;

    const/16 v16, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v14, v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_0
    const/16 v16, 0x7b

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_15

    const/4 v11, 0x0

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v11, v11, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loopj/android/http/JsonStreamerEntity;->jsonParams:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v8}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write(I)V

    if-nez v15, :cond_4

    sget-object v16, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_NULL:[B

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    if-ge v11, v10, :cond_1

    :cond_2
    const/16 v16, 0x2c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_3
    move-object/from16 v14, p1

    goto :goto_0

    :cond_4
    :try_start_1
    instance-of v7, v15, Lcom/loopj/android/http/RequestParams$FileWrapper;

    if-nez v7, :cond_5

    instance-of v0, v15, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    :cond_5
    const/16 v16, 0x7b

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write(I)V

    if-eqz v7, :cond_8

    check-cast v15, Lcom/loopj/android/http/RequestParams$FileWrapper;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/loopj/android/http/JsonStreamerEntity;->writeToFromFile(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$FileWrapper;)V

    :goto_3
    const/16 v16, 0x7d

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    if-ge v11, v10, :cond_7

    :cond_6
    const/16 v17, 0x2c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_7
    throw v16

    :cond_8
    :try_start_2
    check-cast v15, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/loopj/android/http/JsonStreamerEntity;->writeToFromStream(Ljava/io/OutputStream;Lcom/loopj/android/http/RequestParams$StreamWrapper;)V

    goto :goto_3

    :cond_9
    instance-of v0, v15, Lcom/loopj/android/http/JsonValueInterface;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    check-cast v15, Lcom/loopj/android/http/JsonValueInterface;

    invoke-interface {v15}, Lcom/loopj/android/http/JsonValueInterface;->getEscapedJsonValue()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_a
    instance-of v0, v15, Lorg/json/JSONObject;

    move/from16 v16, v0

    if-eqz v16, :cond_b

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_b
    instance-of v0, v15, Lorg/json/JSONArray;

    move/from16 v16, v0

    if-eqz v16, :cond_c

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_c
    instance-of v0, v15, Ljava/lang/Boolean;

    move/from16 v16, v0

    if-eqz v16, :cond_e

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_d

    sget-object v16, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_TRUE:[B

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_d
    sget-object v16, Lcom/loopj/android/http/JsonStreamerEntity;->JSON_FALSE:[B

    goto :goto_4

    :cond_e
    instance-of v0, v15, Ljava/lang/Long;

    move/from16 v16, v0

    if-eqz v16, :cond_f

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_f
    instance-of v0, v15, Ljava/lang/Double;

    move/from16 v16, v0

    if-eqz v16, :cond_10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_10
    instance-of v0, v15, Ljava/lang/Float;

    move/from16 v16, v0

    if-eqz v16, :cond_11

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_11
    instance-of v0, v15, Ljava/lang/Integer;

    move/from16 v16, v0

    if-eqz v16, :cond_12

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/loopj/android/http/JsonStreamerEntity;->escape(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v4, v16, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    move-object/from16 v16, v0

    if-eqz v16, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loopj/android/http/JsonStreamerEntity;->elapsedField:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write(I)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_14
    sget-object v16, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v17, "JsonStreamerEntity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Uploaded JSON in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-wide/16 v20, 0x3e8

    div-long v20, v4, v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " seconds"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Lcom/loopj/android/http/LogInterface;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/16 v16, 0x7d

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    invoke-static {v14}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method
