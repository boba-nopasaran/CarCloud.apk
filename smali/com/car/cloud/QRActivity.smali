.class public Lcom/car/cloud/QRActivity;
.super Landroid/app/Activity;
.source "QRActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/QRActivity$MyCloudCallback;
    }
.end annotation


# static fields
.field private static final CARASSIST_URL:Ljava/lang/String; = "http://web.carassist.cn/download.html"

.field private static final MSG_RECEIVE_MESSAGE:I = 0x65

.field private static final MSG_REFRESH_USERLIST:I = 0x64

.field private static final SERIALNO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CarSvc_QRActivity"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCarCloudService:Lcom/car/common/ICarCloud;

.field private final mCloudCallback:Lcom/car/cloud/QRActivity$MyCloudCallback;

.field private mDeviceID:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

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

.field private mLastUrl:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mLoginWebServer:Z

.field private mLogoBmp:Landroid/graphics/Bitmap;

.field private mMessageView:Lcom/car/cloud/MessageView;

.field private mNoneTip:Landroid/widget/TextView;

.field private mQrcodeUpdater:Ljava/lang/Runnable;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mStatus:Landroid/widget/TextView;

.field private mTip:Landroid/widget/TextView;

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

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/QRActivity;->SERIALNO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/QRActivity;->mUserInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/QRActivity;->mLastMessage:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/cloud/QRActivity;->mLoginWebServer:Z

    new-instance v0, Lcom/car/cloud/QRActivity$MyCloudCallback;

    invoke-direct {v0, p0}, Lcom/car/cloud/QRActivity$MyCloudCallback;-><init>(Lcom/car/cloud/QRActivity;)V

    iput-object v0, p0, Lcom/car/cloud/QRActivity;->mCloudCallback:Lcom/car/cloud/QRActivity$MyCloudCallback;

    new-instance v0, Lcom/car/cloud/QRActivity$1;

    invoke-direct {v0, p0}, Lcom/car/cloud/QRActivity$1;-><init>(Lcom/car/cloud/QRActivity;)V

    iput-object v0, p0, Lcom/car/cloud/QRActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/car/cloud/QRActivity$3;

    invoke-direct {v0, p0}, Lcom/car/cloud/QRActivity$3;-><init>(Lcom/car/cloud/QRActivity;)V

    iput-object v0, p0, Lcom/car/cloud/QRActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/cloud/QRActivity$4;

    invoke-direct {v0, p0}, Lcom/car/cloud/QRActivity$4;-><init>(Lcom/car/cloud/QRActivity;)V

    iput-object v0, p0, Lcom/car/cloud/QRActivity;->mQrcodeUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/car/cloud/QRActivity;)Lcom/car/common/ICarCloud;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mCarCloudService:Lcom/car/common/ICarCloud;

    return-object v0
.end method

.method static synthetic access$002(Lcom/car/cloud/QRActivity;Lcom/car/common/ICarCloud;)Lcom/car/common/ICarCloud;
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/QRActivity;->mCarCloudService:Lcom/car/common/ICarCloud;

    return-object p1
.end method

.method static synthetic access$100(Lcom/car/cloud/QRActivity;)Lcom/car/cloud/QRActivity$MyCloudCallback;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mCloudCallback:Lcom/car/cloud/QRActivity$MyCloudCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/cloud/QRActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mNoneTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/car/cloud/QRActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/car/cloud/QRActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mLogoBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/car/cloud/QRActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/QRActivity;->mLogoBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/car/cloud/QRActivity;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/car/cloud/QRActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mLastUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/car/cloud/QRActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/QRActivity;->mLastUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/car/cloud/QRActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/car/cloud/QRActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/QRActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/car/cloud/QRActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/car/cloud/QRActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/car/cloud/QRActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mQrcodeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/cloud/QRActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/QRActivity;->refreshLoginWebServer(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/car/cloud/QRActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/cloud/QRActivity;->mLoginWebServer:Z

    return v0
.end method

.method static synthetic access$302(Lcom/car/cloud/QRActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/cloud/QRActivity;->mLoginWebServer:Z

    return p1
.end method

.method static synthetic access$400(Lcom/car/cloud/QRActivity;)Lcom/car/cloud/UserAdapter;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/cloud/QRActivity;)Lcom/car/cloud/MessageView;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mMessageView:Lcom/car/cloud/MessageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/cloud/QRActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mUserInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/QRActivity;->SERIALNO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/cloud/QRActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mLastMessage:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/car/cloud/QRActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private refreshLoginWebServer(Z)V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/QRActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/car/cloud/QRActivity$2;-><init>(Lcom/car/cloud/QRActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    iget-object v1, p0, Lcom/car/cloud/QRActivity;->mMessageView:Lcom/car/cloud/MessageView;

    invoke-virtual {v1}, Lcom/car/cloud/MessageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/car/cloud/QRActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/car/cloud/QRActivity;->mMessageView:Lcom/car/cloud/MessageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/car/cloud/MessageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/car/cloud/QRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/car/cloud/QRActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/car/cloud/QRActivity;->mLoginWebServer:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06001e

    :goto_0
    invoke-virtual {p0, v1}, Lcom/car/cloud/QRActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const v1, 0x7f06001f

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
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

    invoke-virtual {p0, v0}, Lcom/car/cloud/QRActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/car/cloud/QRActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/car/cloud/QRActivity;->startActivity(Landroid/content/Intent;)V

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

    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/car/cloud/QRActivity;->setContentView(I)V

    const v4, 0x7f090011

    invoke-virtual {p0, v4}, Lcom/car/cloud/QRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/car/cloud/QRActivity;->mImageView:Landroid/widget/ImageView;

    const v4, 0x7f09000e

    invoke-virtual {p0, v4}, Lcom/car/cloud/QRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/car/cloud/QRActivity;->mNoneTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/car/cloud/QRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/cloud/QRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v4, 0x7f09000f

    invoke-virtual {p0, v4}, Lcom/car/cloud/QRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/car/cloud/QRActivity;->mDeviceID:Landroid/widget/TextView;

    const v4, 0x7f090010

    invoke-virtual {p0, v4}, Lcom/car/cloud/QRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/car/cloud/QRActivity;->mStatus:Landroid/widget/TextView;

    const v4, 0x7f090012

    invoke-virtual {p0, v4}, Lcom/car/cloud/QRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/car/cloud/QRActivity;->mTip:Landroid/widget/TextView;

    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/car/cloud/QRActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/car/cloud/QRActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/car/cloud/QRActivity;->mDeviceID:Landroid/widget/TextView;

    sget-object v5, Lcom/car/cloud/QRActivity;->SERIALNO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f090002

    invoke-virtual {p0, v4}, Lcom/car/cloud/QRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/car/cloud/QRActivity;->mListView:Landroid/widget/ListView;

    const v4, 0x7f090003

    invoke-virtual {p0, v4}, Lcom/car/cloud/QRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/car/cloud/MessageView;

    iput-object v4, p0, Lcom/car/cloud/QRActivity;->mMessageView:Lcom/car/cloud/MessageView;

    new-instance v4, Lcom/car/cloud/UserAdapter;

    iget-object v5, p0, Lcom/car/cloud/QRActivity;->mUserInfoList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/car/cloud/QRActivity;->mLastMessage:Ljava/util/HashMap;

    invoke-direct {v4, p0, v5, v6}, Lcom/car/cloud/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iput-object v4, p0, Lcom/car/cloud/QRActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    iget-object v4, p0, Lcom/car/cloud/QRActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/car/cloud/QRActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/car/cloud/QRActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/car/cloud/CarCloudService;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/car/cloud/QRActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

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

    iget-object v5, p0, Lcom/car/cloud/QRActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    invoke-virtual {v4, v5}, Lcom/car/common/ThumbnailCacheManager;->addThumbnailCacheListener(Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/car/cloud/QRActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/QRActivity;->mCloudCallback:Lcom/car/cloud/QRActivity$MyCloudCallback;

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

    iget-object v2, p0, Lcom/car/cloud/QRActivity;->mUserAdapter:Lcom/car/cloud/UserAdapter;

    invoke-virtual {v2, p3}, Lcom/car/cloud/UserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/cloud/Type$UserInfo;

    const-string v2, "CarSvc_QRActivity"

    invoke-virtual {v1}, Lcom/car/cloud/Type$UserInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/car/cloud/QRActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/car/cloud/QRActivity;->mMessageView:Lcom/car/cloud/MessageView;

    invoke-virtual {v2, v1}, Lcom/car/cloud/MessageView;->enterMessageByUserInfo(Lcom/car/cloud/Type$UserInfo;)V

    invoke-virtual {p0}, Lcom/car/cloud/QRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v2, v1, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/car/cloud/QRActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/cloud/QRActivity;->mQrcodeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 11

    const/4 v10, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v6, p0, Lcom/car/cloud/QRActivity;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/car/cloud/QRActivity;->mQrcodeUpdater:Ljava/lang/Runnable;

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/car/cloud/CarCloudService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/car/cloud/QRActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {p0, v3, v6, v7}, Lcom/car/cloud/QRActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0}, Lcom/car/cloud/QRActivity;->getIntent()Landroid/content/Intent;

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

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/cloud/Type$UserInfo;

    iget-object v6, p0, Lcom/car/cloud/QRActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v6, p0, Lcom/car/cloud/QRActivity;->mMessageView:Lcom/car/cloud/MessageView;

    invoke-virtual {v6, v2}, Lcom/car/cloud/MessageView;->enterMessageByUserInfo(Lcom/car/cloud/Type$UserInfo;)V

    invoke-virtual {p0}, Lcom/car/cloud/QRActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v6, v2, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
