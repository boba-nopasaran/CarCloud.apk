.class Lcom/car/cloud/MessageView$3;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/MessageView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/MessageView;


# direct methods
.method constructor <init>(Lcom/car/cloud/MessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    invoke-virtual {v4}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v4}, Lcom/car/cloud/MessageView;->access$600(Lcom/car/cloud/MessageView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v4, p0, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v4}, Lcom/car/cloud/MessageView;->access$600(Lcom/car/cloud/MessageView;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    invoke-virtual {v4}, Lcom/car/cloud/MessageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060005

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v4, p0, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v4}, Lcom/car/cloud/MessageView;->access$600(Lcom/car/cloud/MessageView;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance v1, Lcom/car/cloud/Type$MsgInfo;

    invoke-direct {v1}, Lcom/car/cloud/Type$MsgInfo;-><init>()V

    iget-object v4, p0, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    invoke-static {v4}, Lcom/car/cloud/MessageView;->access$000(Lcom/car/cloud/MessageView;)Lcom/car/cloud/Type$UserInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    iput-object v4, v1, Lcom/car/cloud/Type$MsgInfo;->to:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/car/cloud/Type$MsgInfo;->msgIndex:J

    iput-object v2, v1, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    const-string v4, "text"

    iput-object v4, v1, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v4

    new-instance v5, Lcom/car/cloud/MessageView$3$1;

    invoke-direct {v5, p0, v1}, Lcom/car/cloud/MessageView$3$1;-><init>(Lcom/car/cloud/MessageView$3;Lcom/car/cloud/Type$MsgInfo;)V

    invoke-virtual {v4, v1, v5}, Lcom/car/cloud/WebSocketUtil;->sendTextMsg(Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/car/cloud/Type$MsgInfo;->responseId:J

    iget-object v4, p0, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/car/cloud/MessageView;->access$700(Lcom/car/cloud/MessageView;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/car/cloud/MessageView$3;->this$0:Lcom/car/cloud/MessageView;

    iget-object v4, v4, Lcom/car/cloud/MessageView;->mSendingList:Ljava/util/HashMap;

    iget-wide v6, v1, Lcom/car/cloud/Type$MsgInfo;->responseId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
