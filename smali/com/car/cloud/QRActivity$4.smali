.class Lcom/car/cloud/QRActivity$4;
.super Ljava/lang/Object;
.source "QRActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/cloud/QRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/QRActivity;


# direct methods
.method constructor <init>(Lcom/car/cloud/QRActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1200(Lcom/car/cloud/QRActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    iget-object v6, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-virtual {v6}, Lcom/car/cloud/QRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020008

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/car/cloud/QRActivity;->access$1202(Lcom/car/cloud/QRActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/car/cloud/CarCloudService;->getInstance()Lcom/car/cloud/CarCloudService;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://web.carassist.cn/download.html?sn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/car/cloud/QRActivity;->access$700()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/car/cloud/CarCloudService;->getLoginWebServer()Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&online="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1300(Lcom/car/cloud/QRActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1300(Lcom/car/cloud/QRActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&ssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&pwd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v5, "ro.market.area"

    const-string v6, "china"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "china"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&f=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1400(Lcom/car/cloud/QRActivity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1400(Lcom/car/cloud/QRActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const-string v5, "CarSvc_QRActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "qrcode url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5, v3}, Lcom/car/cloud/QRActivity;->access$1402(Lcom/car/cloud/QRActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    const/16 v6, 0x140

    const/16 v7, 0x140

    iget-object v8, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v8}, Lcom/car/cloud/QRActivity;->access$1200(Lcom/car/cloud/QRActivity;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v3, v6, v7, v8}, Lcom/car/cloud/QRBitmapGenerator;->createQREncodeBitmap(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/car/cloud/QRActivity;->access$1502(Lcom/car/cloud/QRActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1600(Lcom/car/cloud/QRActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v6}, Lcom/car/cloud/QRActivity;->access$1500(Lcom/car/cloud/QRActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1700(Lcom/car/cloud/QRActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f060022

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1700(Lcom/car/cloud/QRActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1100(Lcom/car/cloud/QRActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v6}, Lcom/car/cloud/QRActivity;->access$1800(Lcom/car/cloud/QRActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1100(Lcom/car/cloud/QRActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v6}, Lcom/car/cloud/QRActivity;->access$1800(Lcom/car/cloud/QRActivity;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1700(Lcom/car/cloud/QRActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f060023

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/car/cloud/QRActivity$4;->this$0:Lcom/car/cloud/QRActivity;

    invoke-static {v5}, Lcom/car/cloud/QRActivity;->access$1700(Lcom/car/cloud/QRActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, -0x7f7f80

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v5, "CarSvc_QRActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mQrcodeUpdater error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
