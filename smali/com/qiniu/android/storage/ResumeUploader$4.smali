.class Lcom/qiniu/android/storage/ResumeUploader$4;
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

.field final synthetic val$address:Ljava/net/URI;

.field final synthetic val$chunkSize:I

.field final synthetic val$offset:I

.field final synthetic val$retried:I


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;I)V
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iput p2, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iput p3, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iput-object p4, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$address:Ljava/net/URI;

    iput p5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$chunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 9

    const/4 v7, 0x0

    const/high16 v8, 0x400000

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$500(Lcom/qiniu/android/storage/ResumeUploader;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->cancelled()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4, v7}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget v5, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    const/16 v6, 0x2bd

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    div-int/2addr v6, v8

    mul-int/2addr v6, v8

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$address:Ljava/net/URI;

    invoke-static {v5, v6, v7, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v5, p1}, Lcom/qiniu/android/storage/ResumeUploader;->access$600(Lcom/qiniu/android/storage/ResumeUploader;Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v6

    iget v6, v6, Lcom/qiniu/android/storage/Configuration;->retryMax:I

    if-ge v5, v6, :cond_2

    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->needRetry()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$400(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/UpCompletionHandler;

    move-result-object v5

    iget-object v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$200(Lcom/qiniu/android/storage/ResumeUploader;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1, v7}, Lcom/qiniu/android/storage/UpCompletionHandler;->complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v8

    iget-object v8, v8, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v8, v8, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    invoke-static {v5, v6, v7, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    if-nez p2, :cond_5

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v8

    iget-object v8, v8, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v8, v8, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    invoke-static {v5, v6, v7, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x0

    :try_start_0
    const-string v5, "ctx"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "crc32"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_1
    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$1000(Lcom/qiniu/android/storage/ResumeUploader;)J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-eqz v5, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$700(Lcom/qiniu/android/storage/ResumeUploader;)Lcom/qiniu/android/storage/Configuration;

    move-result-object v8

    iget-object v8, v8, Lcom/qiniu/android/storage/Configuration;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    iget-object v8, v8, Lcom/qiniu/android/common/ServiceAddress;->address:Ljava/net/URI;

    invoke-static {v5, v6, v7, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    invoke-static {v5}, Lcom/qiniu/android/storage/ResumeUploader;->access$1100(Lcom/qiniu/android/storage/ResumeUploader;)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    div-int/2addr v6, v8

    aput-object v0, v5, v6

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$chunkSize:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/qiniu/android/storage/ResumeUploader;->access$1200(Lcom/qiniu/android/storage/ResumeUploader;I)V

    iget-object v5, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->this$0:Lcom/qiniu/android/storage/ResumeUploader;

    iget v6, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$offset:I

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$chunkSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$retried:I

    iget-object v8, p0, Lcom/qiniu/android/storage/ResumeUploader$4;->val$address:Ljava/net/URI;

    invoke-static {v5, v6, v7, v8}, Lcom/qiniu/android/storage/ResumeUploader;->access$800(Lcom/qiniu/android/storage/ResumeUploader;IILjava/net/URI;)V

    goto/16 :goto_0
.end method
