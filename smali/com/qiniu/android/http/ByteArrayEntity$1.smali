.class Lcom/qiniu/android/http/ByteArrayEntity$1;
.super Ljava/lang/Object;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/ByteArrayEntity;->writeWithNotify(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/ByteArrayEntity;

.field final synthetic val$b:Lcom/qiniu/android/http/ByteArrayEntity;

.field final synthetic val$off2:I


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/ByteArrayEntity;ILcom/qiniu/android/http/ByteArrayEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/qiniu/android/http/ByteArrayEntity$1;->this$0:Lcom/qiniu/android/http/ByteArrayEntity;

    iput p2, p0, Lcom/qiniu/android/http/ByteArrayEntity$1;->val$off2:I

    iput-object p3, p0, Lcom/qiniu/android/http/ByteArrayEntity$1;->val$b:Lcom/qiniu/android/http/ByteArrayEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/qiniu/android/http/ByteArrayEntity$1;->this$0:Lcom/qiniu/android/http/ByteArrayEntity;

    invoke-static {v0}, Lcom/qiniu/android/http/ByteArrayEntity;->access$100(Lcom/qiniu/android/http/ByteArrayEntity;)Lcom/qiniu/android/http/ProgressHandler;

    move-result-object v0

    iget v1, p0, Lcom/qiniu/android/http/ByteArrayEntity$1;->val$off2:I

    iget-object v2, p0, Lcom/qiniu/android/http/ByteArrayEntity$1;->val$b:Lcom/qiniu/android/http/ByteArrayEntity;

    invoke-static {v2}, Lcom/qiniu/android/http/ByteArrayEntity;->access$000(Lcom/qiniu/android/http/ByteArrayEntity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/qiniu/android/http/ProgressHandler;->onProgress(II)V

    return-void
.end method
