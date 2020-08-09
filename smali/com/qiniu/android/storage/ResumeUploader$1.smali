.class Lcom/qiniu/android/storage/ResumeUploader$1;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/ResumeUploader;-><init>(Lcom/qiniu/android/http/HttpManager;Lcom/qiniu/android/storage/Configuration;Ljava/io/File;Ljava/lang/String;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/ResumeUploader;

.field final synthetic val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/storage/UpCompletionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iput-object p2, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$000(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/io/RandomAccessFile;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$000(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$1;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    invoke-interface {v1, p1, p2, p3}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
