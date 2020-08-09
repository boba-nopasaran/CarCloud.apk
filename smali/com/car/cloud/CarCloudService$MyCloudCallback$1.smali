.class Lcom/car/cloud/CarCloudService$MyCloudCallback$1;
.super Ljava/lang/Object;
.source "CarCloudService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/CarCloudService$MyCloudCallback;->onBondRequest(Lcom/car/cloud/Type$UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

.field final synthetic val$ui:Lcom/car/cloud/Type$UserInfo;


# direct methods
.method constructor <init>(Lcom/car/cloud/CarCloudService$MyCloudCallback;Lcom/car/cloud/Type$UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iput-object p2, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->val$ui:Lcom/car/cloud/Type$UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v11, 0x6e

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/car/common/CarUtil;->isAliYunOS()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$2500()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->val$ui:Lcom/car/cloud/Type$UserInfo;

    iget-object v7, v7, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/car/cloud/WebSocketUtil;->ackBond(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->val$ui:Lcom/car/cloud/Type$UserInfo;

    iget-object v7, v7, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u5df2\u7ed1\u5b9a\u8bbe\u5907"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v6, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v6

    invoke-virtual {v6, v1, v9}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v6}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v6}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "ro.hw.version"

    const-string v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "c6,C6,t6,T6"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v6}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v6, "ro.bund.keyname"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    const/16 v7, 0xa

    iput v7, v6, Lcom/car/cloud/CarCloudService;->mBindCountDown:I

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v6}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v8, v8, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget v8, v8, Lcom/car/cloud/CarCloudService;->mBindCountDown:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v6}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->val$ui:Lcom/car/cloud/Type$UserInfo;

    iget-object v8, v8, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$2600()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "bind.tips"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->val$ui:Lcom/car/cloud/Type$UserInfo;

    iget-object v7, v7, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v8, v8, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v8, v8, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v8}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/car/cloud/CarCloudService$MyCloudCallback$1$2;

    invoke-direct {v9, p0}, Lcom/car/cloud/CarCloudService$MyCloudCallback$1$2;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v8, v8, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-virtual {v8}, Lcom/car/cloud/CarCloudService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/car/cloud/CarCloudService$MyCloudCallback$1$1;

    invoke-direct {v9, p0}, Lcom/car/cloud/CarCloudService$MyCloudCallback$1$1;-><init>(Lcom/car/cloud/CarCloudService$MyCloudCallback$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, v6, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService;->mBindDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Lcom/car/cloud/CarCloudService;->access$2600()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v6}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/car/cloud/CarCloudService$MyCloudCallback$1;->this$1:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    iget-object v6, v6, Lcom/car/cloud/CarCloudService$MyCloudCallback;->this$0:Lcom/car/cloud/CarCloudService;

    invoke-static {v6}, Lcom/car/cloud/CarCloudService;->access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
