.class public Lcom/car/cloud/CarCloudActivity;
.super Landroid/app/Activity;
.source "CarCloudActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/CarCloudActivity$MyCloudCallback;
    }
.end annotation


# static fields
.field private static final MSG_RECEIVE_MESSAGE:I = 0x65

.field private static final MSG_REFRESH_USERLIST:I = 0x64

.field private static final SERIALNO:Ljava/lang/String;


# instance fields
.field TAG:Ljava/lang/String;

.field private mCarCloudService:Lcom/car/common/ICarCloud;

.field private final mCloudCallback:Lcom/car/cloud/CarCloudActivity$MyCloudCallback;

.field private mHandler:Landroid/os/Handler;

.field private mLastMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mLoginWebServer:Z

.field private mMessageView:Lcom/car/cloud/MessageView;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mUserAdapter:Lcom/car/cloud/UserAdapter;

.field private mUserInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudActivity;->SERIALNO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "CarSvc_CarCloudActivity"

    iput-object v0, p0, Lcom/car/cloud/CarCloudActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mUserInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mLastMessage:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/cloud/CarCloudActivity;->mLoginWebServer:Z

    new-instance v0, Lcom/car/cloud/CarCloudActivity$MyCloudCallback;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudActivity$MyCloudCallback;-><init>(Lcom/car/cloud/CarCloudActivity;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mCloudCallback:Lcom/car/cloud/CarCloudActivity$MyCloudCallback;

    new-instance v0, Lcom/car/cloud/CarCloudActivity$1;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudActivity$1;-><init>(Lcom/car/cloud/CarCloudActivity;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/car/cloud/CarCloudActivity$3;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudActivity$3;-><init>(Lcom/car/cloud/CarCloudActivity;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/car/cloud/CarCloudActivity;)Lcom/car/common/ICarCloud;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mCarCloudService:Lcom/car/common/ICarCloud;

    return-object v0
.end method

.method static synthetic access$002(Lcom/car/cloud/CarCloudActivity;Lcom/car/common/ICarCloud;)Lcom/car/common/ICarCloud;
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudActivity;->mCarCloudService:Lcom/car/common/ICarCloud;

    return-object p1
.end method

.method static synthetic access$100(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/CarCloudActivity$MyCloudCallback;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mCloudCallback:Lcom/car/cloud/CarCloudActivity$MyCloudCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/cloud/CarCloudActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudActivity;->refreshLoginWebServer(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/car/cloud/CarCloudActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/cloud/CarCloudActivity;->mLoginWebServer:Z

    return v0
.end method

.method static synthetic access$302(Lcom/car/cloud/CarCloudActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/cloud/CarCloudActivity;->mLoginWebServer:Z

    return p1
.end method

.method static synthetic access$400(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/UserAdapter;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/cloud/CarCloudActivity;)Lcom/car/cloud/MessageView;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mMessageView:Lcom/car/cloud/MessageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/cloud/CarCloudActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mUserInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudActivity;->SERIALNO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/cloud/CarCloudActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mLastMessage:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/car/cloud/CarCloudActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private refreshLoginWebServer(Z)V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/CarCloudActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/car/cloud/CarCloudActivity$2;-><init>(Lcom/car/cloud/CarCloudActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "userInfo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudActivity;->mMessageView:Lcom/car/cloud/MessageView;

    invoke-virtual {v3}, Lcom/car/cloud/MessageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/car/cloud/CarCloudActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/car/cloud/CarCloudActivity;->mMessageView:Lcom/car/cloud/MessageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/car/cloud/MessageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v4, 0x7f060000

    invoke-virtual {p0, v4}, Lcom/car/cloud/CarCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/car/cloud/CarCloudActivity;->mLoginWebServer:Z

    if-eqz v3, :cond_1

    const v3, 0x7f06001e

    :goto_1
    invoke-virtual {p0, v3}, Lcom/car/cloud/CarCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v3, 0x7f06001f

    goto :goto_1

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.httpserver.HttpServerActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/car/cloud/QRActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v4, 0x7f030000

    invoke-virtual {p0, v4}, Lcom/car/cloud/CarCloudActivity;->setContentView(I)V

    const v4, 0x7f090002

    invoke-virtual {p0, v4}, Lcom/car/cloud/CarCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/car/cloud/CarCloudActivity;->mListView:Landroid/widget/ListView;

    const v4, 0x7f090003

    invoke-virtual {p0, v4}, Lcom/car/cloud/CarCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/car/cloud/MessageView;

    iput-object v4, p0, Lcom/car/cloud/CarCloudActivity;->mMessageView:Lcom/car/cloud/MessageView;

    new-instance v4, Lcom/car/cloud/UserAdapter;

    iget-object v5, p0, Lcom/car/cloud/CarCloudActivity;->mUserInfoList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/car/cloud/CarCloudActivity;->mLastMessage:Ljava/util/HashMap;

    invoke-direct {v4, p0, v5, v6}, Lcom/car/cloud/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iput-object v4, p0, Lcom/car/cloud/CarCloudActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    iget-object v4, p0, Lcom/car/cloud/CarCloudActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/car/cloud/CarCloudActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/car/cloud/CarCloudService;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/car/cloud/CarCloudActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v5, 0x7f060000

    invoke-virtual {p0, v5}, Lcom/car/cloud/CarCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Lcom/car/cloud/CarCloudActivity;->mLoginWebServer:Z

    if-eqz v4, :cond_0

    const v4, 0x7f06001e

    :goto_0
    invoke-virtual {p0, v4}, Lcom/car/cloud/CarCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    long-to-int v3, v4

    div-int/lit8 v1, v3, 0x10

    const/high16 v4, 0xa00000

    invoke-static {p0, v1, v4}, Lcom/car/common/ThumbnailCacheManager;->create(Landroid/content/Context;II)V

    invoke-static {}, Lcom/car/common/ThumbnailCacheManager;->instance()Lcom/car/common/ThumbnailCacheManager;

    move-result-object v4

    iget-object v5, p0, Lcom/car/cloud/CarCloudActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    invoke-virtual {v4, v5}, Lcom/car/common/ThumbnailCacheManager;->addThumbnailCacheListener(Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;)V

    return-void

    :cond_0
    const v4, 0x7f06001f

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/car/cloud/CarCloudActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudActivity;->mCloudCallback:Lcom/car/cloud/CarCloudActivity$MyCloudCallback;

    invoke-virtual {v0, v1}, Lcom/car/cloud/WebSocketUtil;->unregisterCallback(Lcom/car/cloud/WebSocketCallback;)V

    invoke-static {}, Lcom/car/common/ThumbnailCacheManager;->destory()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/car/cloud/CarCloudActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    invoke-virtual {v2, p3}, Lcom/car/cloud/UserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/cloud/Type$UserInfo;

    iget-object v2, p0, Lcom/car/cloud/CarCloudActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/car/cloud/Type$UserInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/car/cloud/CarCloudActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/car/cloud/CarCloudActivity;->mMessageView:Lcom/car/cloud/MessageView;

    invoke-virtual {v2, v1}, Lcom/car/cloud/MessageView;->enterMessageByUserInfo(Lcom/car/cloud/Type$UserInfo;)V

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v2, v1, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/car/cloud/CarCloudService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/car/cloud/CarCloudActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {p0, v3, v6, v7}, Lcom/car/cloud/CarCloudActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "userInfo"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/car/cloud/Type$UserInfo;->fromJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/cloud/Type$UserInfo;

    iget-object v6, p0, Lcom/car/cloud/CarCloudActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/car/cloud/CarCloudActivity;->mMessageView:Lcom/car/cloud/MessageView;

    invoke-virtual {v6, v2}, Lcom/car/cloud/MessageView;->enterMessageByUserInfo(Lcom/car/cloud/Type$UserInfo;)V

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v6, v2, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
