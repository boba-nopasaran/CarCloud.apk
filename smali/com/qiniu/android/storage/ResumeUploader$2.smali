.class Lcom/qiniu/android/storage/ResumeUploader$2;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Lcom/qiniu/android/http/CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/ResumeUploader;->nextTask(IILjava/net/URI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/ResumeUploader;

.field final synthetic val$offset:I

.field final synthetic val$retried:I


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ResumeUploader;II)V
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iput p2, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$retried:I

    iput p3, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 6

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$100(Lcom/qiniu/android/storage/ResumeUploader;)V

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$300(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UploadOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/qiniu/android/storage/UploadOptions;->progressHandler:Lcom/qiniu/android/storage/UpProgressHandler;

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v2, v4, v5}, Lcom/qiniu/android/storage/UpProgressHandler;->progress(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$500(Lcom/qiniu/android/storage/ResumeUploader;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->cancelled()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1, p1}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->needRetry()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$retried:I

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v2

    iget v2, v2, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v2, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$offset:I

    iget v3, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->val$retried:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v4

    iget-object v4, v4, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v4, v4, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    invoke-static {v1, v2, v3, v4}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v1}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/android/storage/ResumeUploader$2;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v2}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
