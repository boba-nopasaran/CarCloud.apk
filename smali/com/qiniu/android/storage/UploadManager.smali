.class public final Lcom/qiniu/android/storage/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# instance fields
.field private final config:Lcom/qiniu/android/storage/Configuration;

.field private final httpManager:Lcom/qiniu/android/http/HttpManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {v0}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/storage/Configuration;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    new-instance v0, Lcom/qiniu/android/http/HttpManager;

    iget-object v1, p1, Lcom/qiniu/android/storage/Configuration;->proxy:Lcom/qiniu/android/http/Proxy;

    new-instance v2, Lcom/qiniu/android/http/StatReport;

    invoke-direct {v2}, Lcom/qiniu/android/http/StatReport;-><init>()V

    iget v3, p1, Lcom/qiniu/android/storage/Configuration;->connectTimeout:I

    iget v4, p1, Lcom/qiniu/android/storage/Configuration;->responseTimeout:I

    iget-object v5, p1, Lcom/qiniu/android/storage/Configuration;->urlConverter:Lcom/qiniu/android/http/UrlConverter;

    iget-object v6, p1, Lcom/qiniu/android/storage/Configuration;->dns:Lcom/qiniu/android/dns/DnsManager;

    invoke-direct/range {v0 .. v6}, Lcom/qiniu/android/http/HttpManager;-><init>(Lcom/qiniu/android/http/Proxy;Lcom/qiniu/android/http/IReport;IILcom/qiniu/android/http/UrlConverter;Lcom/qiniu/android/dns/DnsManager;)V

    iput-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->httpManager:Lcom/qiniu/android/http/HttpManager;

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/storage/Recorder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Recorder;Lcom/qiniu/android/storage/KeyGenerator;)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/storage/Recorder;Lcom/qiniu/android/storage/KeyGenerator;)V
    .locals 1

    new-instance v0, Lcom/qiniu/android/storage/Configuration$Builder;

    invoke-direct {v0}, Lcom/qiniu/android/storage/Configuration$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/storage/Configuration$Builder;->recorder(Lcom/qiniu/android/storage/Recorder;Lcom/qiniu/android/storage/KeyGenerator;)Lcom/qiniu/android/storage/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qiniu/android/storage/Configuration$Builder;->build()Lcom/qiniu/android/storage/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qiniu/android/storage/UploadManager;-><init>(Lcom/qiniu/android/storage/Configuration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/UploadManager;)Lcom/qiniu/android/http/HttpManager;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->httpManager:Lcom/qiniu/android/http/HttpManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/storage/UploadManager;)Lcom/qiniu/android/storage/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    return-object v0
.end method

.method private static areInvalidArg(Ljava/lang/String;[BLjava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;)Z
    .locals 8

    if-nez p4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "no UpCompletionHandler"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_6

    if-nez p1, :cond_6

    const-string v2, "no input data"

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/qiniu/android/http/ResponseInfo;->invalidArgument(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    array-length v3, p1

    if-nez v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->zeroSize()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_8

    move-object v1, v0

    new-instance v3, Lcom/qiniu/android/storage/UploadManager$1;

    invoke-direct {v3, p4, p0, v1}, Lcom/qiniu/android/storage/UploadManager$1;-><init>(Lcom/qiniu/android/storage/UpCompletionHandler;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;)V

    invoke-static {v3}, Lcom/qiniu/android/utils/AsyncRun;->run(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_6
    if-eqz p3, :cond_7

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_7
    const-string v2, "no token"

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 22

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v4, v1, v2, v3}, Lcom/qiniu/android/storage/UploadManager;->areInvalidArg(Ljava/lang/String;[BLjava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v4, "invalid token"

    invoke-static {v4}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v18

    new-instance v4, Lcom/qiniu/android/storage/UploadManager$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/qiniu/android/storage/UploadManager$4;-><init>(Lcom/qiniu/android/storage/UploadManager;Lcom/qiniu/android/storage/UpCompletionHandler;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;)V

    invoke-static {v4}, Lcom/qiniu/android/utils/AsyncRun;->run(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget v4, v4, Lcom/qiniu/android/storage/Configuration;->putThreshold:I

    int-to-long v4, v4

    cmp-long v4, v20, v4

    if-gtz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/UploadManager;->httpManager:Lcom/qiniu/android/http/HttpManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Lcom/qiniu/android/storage/FormUploader;->upload(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;Ljava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    iget-object v4, v4, Lcom/qiniu/android/storage/Configuration;->keyGen:Lcom/qiniu/android/storage/KeyGenerator;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v4, v0, v1}, Lcom/qiniu/android/storage/KeyGenerator;->gen(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v17

    new-instance v9, Lcom/qiniu/android/storage/ResumeUploader;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/qiniu/android/storage/UploadManager;->httpManager:Lcom/qiniu/android/http/HttpManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qiniu/android/storage/UploadManager;->config:Lcom/qiniu/android/storage/Configuration;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v8

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v9 .. v17}, Lcom/qiniu/android/storage/ResumeUploader;-><init>(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;Ljava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/qiniu/android/utils/AsyncRun;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 6

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    return-void
.end method

.method public put([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3, p4}, Lcom/qiniu/android/storage/UploadManager;->areInvalidArg(Ljava/lang/String;[BLjava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lcom/qiniu/android/storage/UpToken;->parse(Ljava/lang/String;)Lcom/qiniu/android/storage/UpToken;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "invalid token"

    invoke-static {v0}, Lcom/qiniu/android/http/ResponseInfo;->invalidToken(Ljava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v7

    new-instance v0, Lcom/qiniu/android/storage/UploadManager$2;

    invoke-direct {v0, p0, p4, p2, v7}, Lcom/qiniu/android/storage/UploadManager$2;-><init>(Lcom/qiniu/android/storage/UploadManager;Lcom/qiniu/android/storage/UpCompletionHandler;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->run(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/qiniu/android/storage/UploadManager$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qiniu/android/storage/UploadManager$3;-><init>(Lcom/qiniu/android/storage/UploadManager;[BLjava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
