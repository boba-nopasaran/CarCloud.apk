.class Lcom/car/cloud/CarCloudService$MyCloudCallback$9$1;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/car/cloud/CarCloudService$MyCloudCallback$9;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService$MyCloudCallback$9;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9$1;->this$2:Lcom/car/cloud/CarCloudService$MyCloudCallback$9;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9$1;->this$2:Lcom/car/cloud/CarCloudService$MyCloudCallback$9;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v0, v0, Lcom/car/cloud/CarCloudService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9$1;->this$2:Lcom/car/cloud/CarCloudService$MyCloudCallback$9;

    iget-object v1, v1, Lcom/car/cloud/CarCloudService$MyCloudCallback$9;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v1, v1, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v1}, Lcom/car/cloud/CarCloudService;->access$3100(Lcom/car/cloud/CarCloudService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$9$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
