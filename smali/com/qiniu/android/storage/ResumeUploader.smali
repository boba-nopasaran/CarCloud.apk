.class final Lcom/qiniu/android/storage/ResumeUploader;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final chunkBuffer:[B

.field private final completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

.field private final config:Lcom/qiniu/android/storage/Configuration;

.field private final contexts:[Ljava/lang/String;

.field private crc32:J

.field private f:Ljava/io/File;

.field private file:Ljava/io/RandomAccessFile;

.field private final headers:[Lcz/msebera/android/httpclient/Header;

.field private final httpManager:Lcom/qiniu/android/http/HttpManager;

.field private final key:Ljava/lang/String;

.field private final modifyTime:J

.field private final options:Lcom/qiniu/android/storage/UploadOptions;

.field private final recorderKey:Ljava/lang/String;

.field private final size:I

.field private token:Lcom/qiniu/android/storage/UpToken;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;Ljava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader;->httpManager:Lcom/qiniu/android/http/HttpManager;

    iput-object p2, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iput-object p3, p0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    iput-object p4, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Lcz/msebera/android/httpclient/Header;

    iput-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:[Lcz/msebera/android/httpclient/Header;

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:[Lcz/msebera/android/httpclient/Header;

    const/4 v5, 0x0

    new-instance v6, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v7, "Authorization"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p5, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    new-instance v4, Lcom/qiniu/android/storage/ResumeUploader$1;

    move-object/from16 v0, p6

    invoke-direct {v4, p0, v0}, Lcom/qiniu/android/storage/ResumeUploader$1;-><init>(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/storage/UpCompletionHandler;)V

    iput-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    if-eqz p7, :cond_0

    :goto_0
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget v4, p2, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    iget v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    const/high16 v5, 0x400000

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    const/high16 v5, 0x400000

    div-int/2addr v4, v5

    int-to-long v2, v4

    long-to-int v4, v2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    iput-object p5, p0, Lcom/qiniu/android/storage/ResumeUploader;->token:Lcom/qiniu/android/storage/UpToken;

    return-void

    :cond_0
    invoke-static {}, Lcom/qiniu/android/storage/UploadOptions;->defaultOptions()Lcom/qiniu/android/storage/UploadOptions;

    move-result-object p7

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/io/RandomAccessFile;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/ResumeUploader;)V
    .locals 0

    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->removeRecord()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qiniu/android/storage/ResumeUploader;)J
    .locals 2

    iget-wide v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/qiniu/android/storage/ResumeUploader;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qiniu/android/storage/ResumeUploader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/ResumeUploader;->record(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UploadOptions;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qiniu/android/storage/ResumeUploader;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->isCancelled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/qiniu/android/storage/ResumeUploader;->isNotQiniu(Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qiniu/android/storage/ResumeUploader;)I
    .locals 1

    iget v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    return v0
.end method

.method private calcBlockSize(I)I
    .locals 3

    const/high16 v1, 0x400000

    iget v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    sub-int v0, v2, p1

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private calcPutSize(I)I
    .locals 2

    iget v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    sub-int v0, v1, p1

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget v1, v1, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget v0, v1, Lcom/qiniu/android/storage/Configuration;->chunkSize:I

    goto :goto_0
.end method

.method private isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v0, v0, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    invoke-interface {v0}, Lcom/qiniu/android/storage/UpCancellationSignal;->isCancelled()Z

    move-result v0

    return v0
.end method

.method private isNotQiniu(Lcom/qiniu/android/http/ResponseInfo;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isNotQiniu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->token:Lcom/qiniu/android/storage/UpToken;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/UpToken;->hasReturnUrl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBlock(Ljava/net/URI;IIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 10

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "/mkblk/%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, p4}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    invoke-direct {p0, p1, v9}, Lcom/qiniu/android/storage/ResumeUploader;->newURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v8}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private makeFile(Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 21

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "/mimeType/%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v7, v7, Lcom/qiniu/android/storage/UploadOptions;->mimeType:Ljava/lang/String;

    invoke-static {v7}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "/key/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v6}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :cond_0
    const-string v18, ""

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->params:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    add-int/lit8 v15, v14, 0x1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "%s/%s"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v20, v14

    move v14, v15

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "/mkfile/%d%s%s%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v17, v5, v6

    const/4 v6, 0x2

    aput-object v16, v5, v6

    const/4 v6, 0x3

    aput-object v18, v5, v6

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v2, p1

    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-direct {v9, v1, v4, v0, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v9

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    const-string v4, ","

    invoke-static {v1, v4}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    return-void

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private newURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 9

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, p1

    goto :goto_0
.end method

.method private nextTask(IILjava/net/URI;)V
    .locals 18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    new-instance v3, Lcom/qiniu/android/storage/ResumeUploader$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v3, v0, v1, v2}, Lcom/qiniu/android/storage/ResumeUploader$2;-><init>(Lcom/qiniu/android/storage/ResumeUploader;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v4, v4, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/qiniu/android/storage/ResumeUploader;->makeFile(Ljava/net/URI;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/qiniu/android/storage/ResumeUploader;->calcPutSize(I)I

    move-result v8

    new-instance v9, Lcom/qiniu/android/storage/ResumeUploader$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v9, v0, v1}, Lcom/qiniu/android/storage/ResumeUploader$3;-><init>(Lcom/qiniu/android/storage/ResumeUploader;I)V

    new-instance v3, Lcom/qiniu/android/storage/ResumeUploader$4;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/qiniu/android/storage/ResumeUploader$4;-><init>(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;I)V

    const/high16 v4, 0x400000

    rem-int v4, p1, v4

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/qiniu/android/storage/ResumeUploader;->calcBlockSize(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v11, v4, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move/from16 v6, p1

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Lcom/qiniu/android/storage/ResumeUploader;->makeBlock(Ljava/net/URI;IIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    const/high16 v5, 0x400000

    div-int v5, p1, v5

    aget-object v14, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/ResumeUploader;->options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v0, v4, Lcom/qiniu/android/storage/UploadOptions;->cancellationSignal:Lcom/qiniu/android/storage/UpCancellationSignal;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move/from16 v12, p1

    move v13, v8

    move-object v15, v9

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v17}, Lcom/qiniu/android/storage/ResumeUploader;->putChunk(Ljava/net/URI;IILjava/lang/String;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    goto :goto_0
.end method

.method private post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 9

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->httpManager:Lcom/qiniu/android/http/HttpManager;

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->headers:[Lcz/msebera/android/httpclient/Header;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/qiniu/android/http/HttpManager;->postData(Ljava/net/URI;[BII[Lcz/msebera/android/httpclient/Header;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/http/CancellationHandler;)V

    return-void
.end method

.method private putChunk(Ljava/net/URI;IILjava/lang/String;Lcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V
    .locals 11

    const/high16 v0, 0x400000

    rem-int v8, p2, v0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "/bput/%s/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :try_start_0
    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2, p3}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->crc32:J

    invoke-direct {p0, p1, v10}, Lcom/qiniu/android/storage/ResumeUploader;->newURI(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->chunkBuffer:[B

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/qiniu/android/storage/ResumeUploader;->post(Ljava/net/URI;[BIILcom/qiniu/android/http/ProgressHandler;Lcom/qiniu/android/http/CompletionHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    :goto_0
    return-void

    :catch_0
    move-exception v9

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v9}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private record(I)V
    .locals 8

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v1, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "{\"size\":%d,\"offset\":%d, \"modify_time\":%d, \"contexts\":[%s]}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    invoke-static {v5}, Lcom/qiniu/android/utils/StringUtils;->jsonJoin([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v1, v1, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/qiniu/android/storage/Recorder;->set(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private recoveryFromRecord()I
    .locals 14

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v11, v11, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-nez v11, :cond_1

    move v9, v10

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget-object v11, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v11, v11, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v12, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-interface {v11, v12}, Lcom/qiniu/android/storage/Recorder;->get(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    move v9, v10

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "offset"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v11, "modify_time"

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v11, "size"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v11, "contexts"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v9, :cond_3

    iget-wide v12, p0, Lcom/qiniu/android/storage/ResumeUploader;->modifyTime:J

    cmp-long v11, v6, v12

    if-nez v11, :cond_3

    iget v11, p0, Lcom/qiniu/android/storage/ResumeUploader;->size:I

    if-ne v3, v11, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    move v9, v10

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move v9, v10

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_0

    iget-object v10, p0, Lcom/qiniu/android/storage/ResumeUploader;->contexts:[Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private removeRecord()V
    .locals 2

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v0, v0, Lcom/qiniu/android/storage/Configuration;->recorder:Lcom/qiniu/android/storage/Recorder;

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader;->recorderKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/qiniu/android/storage/Recorder;->del(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-direct {p0}, Lcom/qiniu/android/storage/ResumeUploader;->recoveryFromRecord()I

    move-result v1

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader;->f:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->file:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v3, v3, Lcom/qiniu/android/storage/Configuration;->up:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v3, v3, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    invoke-direct {p0, v1, v2, v3}, Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader;->completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v3, p0, Lcom/qiniu/android/storage/ResumeUploader;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->fileError(Ljava/lang/Exception;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
