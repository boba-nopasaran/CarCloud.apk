.class final Lcom/qiniu/android/storage/FormUploader;
.super Ljava/lang/Object;
.source "FormUploader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static post([BLjava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;)V
    .locals 17

    move-object/from16 v4, p2

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Lcom/qiniu/android/http/PostArgs;

    invoke-direct {v9}, Lcom/qiniu/android/http/PostArgs;-><init>()V

    if-eqz p2, :cond_1

    const-string v5, "key"

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v9, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    :goto_0
    const-string v5, "token"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_2

    move-object/from16 v3, p5

    :goto_1
    iget-object v5, v3, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v5, v3, Lcom/qiniu/android/storage/UploadOptions;->checkCrc:Z

    if-eqz v5, :cond_0

    const-wide/16 v14, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/qiniu/android/utils/Crc32;->file(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    :goto_2
    const-string v5, "crc32"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v10, Lcom/qiniu/android/storage/FormUploader$1;

    invoke-direct {v10, v3, v4}, Lcom/qiniu/android/storage/FormUploader$1;-><init>(Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v0, v9, Lcom/qiniu/android/http/PostArgs;->data:[B

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/qiniu/android/http/PostArgs;->file:Ljava/io/File;

    iget-object v5, v3, Lcom/qiniu/android/storage/UploadOptions;->mimeType:Ljava/lang/String;

    iput-object v5, v9, Lcom/qiniu/android/http/PostArgs;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/qiniu/android/http/PostArgs;->params:Ljava/util/Map;

    new-instance v2, Lcom/qiniu/android/storage/FormUploader$2;

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lcom/qiniu/android/storage/FormUploader$2;-><init>(Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/http/PostArgs;Lcom/qiniu/android/http/ProgressHandler;)V

    move-object/from16 v0, p7

    iget-object v5, v0, Lcom/qiniu/android/storage/Configuration;->up:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v8, v5, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    iget-object v12, v3, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v7, p6

    move-object v11, v2

    invoke-virtual/range {v7 .. v12}, Lcom/qiniu/android/http/HttpManager;->multipartPost(Ljava/net/URI;Lcom/qiniu/android/http/PostArgs;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    return-void

    :cond_1
    const-string v5, "?"

    iput-object v5, v9, Lcom/qiniu/android/http/PostArgs;->fileName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/qiniu/android/utils/Crc32;->bytes([B)J

    move-result-wide v14

    goto :goto_2
.end method

.method static upload(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;Ljava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 8

    const/4 v0, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/qiniu/android/storage/FormUploader;->post([BLjava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;)V

    return-void
.end method

.method static upload(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;[BLjava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 8

    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/qiniu/android/storage/FormUploader;->post([BLjava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;)V

    return-void
.end method
