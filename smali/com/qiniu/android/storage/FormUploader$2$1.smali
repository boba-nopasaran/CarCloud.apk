.class Lcom/qiniu/android/storage/FormUploader$2$1;
.super Ljava/lang/Object;
.source "FormUploader.java"

# interfaces
.implements Lcom/qiniu/android/http/CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/FormUploader$2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/FormUploader$2;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/FormUploader$2;)V
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/storage/FormUploader$2$1;->this$0:Lcom/qiniu/android/storage/FormUploader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 4

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/android/storage/FormUploader$2$1;->this$0:Lcom/qiniu/android/storage/FormUploader$2;

    iget-object v0, v0, Lcom/qiniu/android/storage/FormUploader$2;->val$options:Lcom/qiniu/android/storage/UploadOptions;

    iget-object v0, v0, Lcom/qiniu/android/storage/UploadOptions;->progressHandler:Lcom/qiniu/android/storage/UpProgressHandler;

    iget-object v1, p0, Lcom/qiniu/android/storage/FormUploader$2$1;->this$0:Lcom/qiniu/android/storage/FormUploader$2;

    iget-object v1, v1, Lcom/qiniu/android/storage/FormUploader$2;->val$key:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/qiniu/android/storage/UpProgressHandler;->progress(Ljava/lang/String;D)V

    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/storage/FormUploader$2$1;->this$0:Lcom/qiniu/android/storage/FormUploader$2;

    iget-object v0, v0, Lcom/qiniu/android/storage/FormUploader$2;->val$completionHandler:Lcom/qiniu/android/storage/UpCompletionHandler;

    iget-object v1, p0, Lcom/qiniu/android/storage/FormUploader$2$1;->this$0:Lcom/qiniu/android/storage/FormUploader$2;

    iget-object v1, v1, Lcom/qiniu/android/storage/FormUploader$2;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method
