.class public Lcom/car/cloud/CarCloudService;
.super Landroid/app/Service;
.source "CarCloudService.java"

# interfaces
.implements Lcom/miramems/carmotion/carMotion$carMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/CarCloudService$LivingClient;,
        Lcom/car/cloud/CarCloudService$MyCloudCallback;,
        Lcom/car/cloud/CarCloudService$FilePathComp;,
        Lcom/car/cloud/CarCloudService$LocalBinder;,
        Lcom/car/cloud/CarCloudService$MyUploadRunnable;,
        Lcom/car/cloud/CarCloudService$MyUpProgressHandler;,
        Lcom/car/cloud/CarCloudService$MyUpProgressHandler2;,
        Lcom/car/cloud/CarCloudService$MyLock;
    }
.end annotation


# static fields
.field static final ACC_ON_ALRAM:I = 0x0

.field public static final ACTION_FORCE_REBOOT:Ljava/lang/String; = "com.car.launcher.FORCE_REBOOT"

.field private static AUTO_BOND:Z = false

.field private static BACK_CAM_RECORD_DISABLED:Z = false

.field private static final CAR_MANUFACTORY:Ljava/lang/String;

.field private static final CAR_MODELTYPE:Ljava/lang/String;

.field private static final CAR_VERSION:Ljava/lang/String;

.field static final FORCE_REBOOT_ALRAM:I = 0x2

.field public static final GPS_PROP_INFO:Ljava/lang/String; = "sys.current.gpsinfo"

.field static final GSENSOR_WAKEUP_ALRAM:I = 0x1

.field static final GSENSOR_WAKEUP_ALRAM2:I = 0xb

.field private static HEADLESS:Z = false

.field static final IMAGE_CAPTURE_ALRAM:I = 0x4

.field static final LOW_VOLTAGE_ALARM:I = 0xd

.field private static final MARKET_PROP_STRING:Ljava/lang/String; = "ro.market.area"

.field private static final MSG_BIND_COUNTDOWN:I = 0x6e

.field private static final MSG_CONNECTION_TIMEOUT:I = 0x70

.field private static final MSG_FLAG_CHECK:I = 0x6f

.field private static final MSG_LIVE_CHECK:I = 0x6d

.field private static final MSG_PICKUP_COUNTDOWN:I = 0x6a

.field private static final MSG_RESEND:I = 0x69

.field private static final MSG_SERVER_PING:I = 0x6c

.field private static final MSG_TRY2SHOW_BUND_DLG:I = 0x6b

.field private static final NETWORK_CHECK:I = 0x64

.field private static final NOTICE_LIST:Ljava/lang/String;

.field private static final OSS_SERVER_LIST:[Ljava/lang/String;

.field static final REBOOT_DONE_ALRAM:I = 0x3

.field private static final REBOOT_DONE_CHECK:I = 0x68

.field private static final RETRY_LOGIN:I = 0x66

.field private static final RETRY_LOGIN_TIME:J = 0xea60L

.field static final SOS_ALARM2:I = 0xc

.field static final SOS_ALRAM:I = 0x6

.field static final SPEED_DOWN_ALRAM:I = 0x7

.field static final SPEED_UP_ALRAM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "CarSvc_CarCloudService"

.field static final TURN_LEFT_ALRAM:I = 0x9

.field static final TURN_RIGHT_ALRAM:I = 0xa

.field private static URL:Ljava/lang/String; = null

.field private static final URL_DEAFULT:Ljava/lang/String;

.field private static final URL_PROP_STRING:Ljava/lang/String; = "persist.sys.carcloud.server"

.field private static final VERSION_CHECK_TIME:J = 0x6ddd00L

.field public static final VERSION_SHOW:I = 0x65

.field private static final VERSION_SHOW_TIME:J = 0x5265c00L

.field static final VIDEO_CAPTURE_ALRAM:I = 0x5

.field private static final WAKELOCK_CHECK:I = 0x67

.field private static mGpsOssServer:Ljava/lang/String;

.field private static mInstance:Lcom/car/cloud/CarCloudService;

.field private static mOSSAccessKeyID:Ljava/lang/String;

.field private static mOSSAccessKeySecret:Ljava/lang/String;

.field private static mOssServers:[Ljava/lang/String;

.field static mRebootDone:Z


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mBindCountDown:I

.field mBindDialog:Landroid/app/AlertDialog;

.field private mBinder:Lcom/car/common/ICarCloud$Stub;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

.field private mCarMotion:Lcom/miramems/carmotion/carMotion;

.field mCarServiceImpl:Lcom/car/common/CarServiceImpl;

.field private mCloud:Z

.field private final mCloudCallback:Lcom/car/cloud/CarCloudService$MyCloudCallback;

.field private mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field mIsCharging:Z

.field mLastAirplaneTime:J

.field mLastOKTime:J

.field mLastTimeOfAccOn:J

.field mLiveCameraList:I

.field mLivingClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/CarCloudService$LivingClient;",
            ">;"
        }
    .end annotation
.end field

.field private mLivingCountMap:Ljava/util/HashMap;
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

.field private mLivingStreamMap:Ljava/util/HashMap;
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

.field private mLoginWebServer:Z

.field mMuteRecover:Z

.field mMyAdManager:Lcom/car/cloud/MyAdManager;

.field mMyWakeLock:Lcom/car/common/util/MyWakeLock;

.field private mNicknameMap:Ljava/util/HashMap;
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

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mOssListFromServer:[Ljava/lang/String;

.field mOssLock:Ljava/lang/Object;

.field mPickupCountDown:I

.field mPickupDialog:Landroid/app/AlertDialog;

.field mReconnectionPromised:Z

.field private final mRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/car/common/ICarCloudCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mShowBundDialogCount:I

.field mSuspendNow:Z

.field mTtsStreamType:I

.field mUploadIndex:I

.field private mUploadMap:Ljava/util/HashMap;
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

.field private mUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWebSocketCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/WebSocketCallback;",
            ">;"
        }
    .end annotation
.end field

.field mWsEverOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "carcloud.server"

    const-string v1, "persist.sys.carcloud.server"

    const-string v2, "ws://ws.carassist.cn:8000"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->URL_DEAFULT:Ljava/lang/String;

    sget-object v0, Lcom/car/cloud/CarCloudService;->URL_DEAFULT:Ljava/lang/String;

    sput-object v0, Lcom/car/cloud/CarCloudService;->URL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.product.manufacturer"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.board.platform"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->CAR_MANUFACTORY:Ljava/lang/String;

    const-string v0, "ro.product.model"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->CAR_MODELTYPE:Ljava/lang/String;

    const-string v0, "ro.product.fw_ver"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->CAR_VERSION:Ljava/lang/String;

    const-string v0, "persist.notice.list"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->NOTICE_LIST:Ljava/lang/String;

    const-string v0, "persist.rear.record.disable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/cloud/CarCloudService;->BACK_CAM_RECORD_DISABLED:Z

    const-string v0, "ro.product.class"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "headless"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/cloud/CarCloudService;->HEADLESS:Z

    const-string v0, "persist.carcloud.auto.bond"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/cloud/CarCloudService;->AUTO_BOND:Z

    const-string v0, "oss.gps.server"

    const-string v1, "gps-dvrassist-com.oss-ap-southeast-1.aliyuncs.com"

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->mGpsOssServer:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "liveshenzhen.oss-cn-shenzhen.aliyuncs.com"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "livehangzhou.oss-cn-hangzhou.aliyuncs.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "liveqingdao.oss-cn-qingdao.aliyuncs.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/car/cloud/CarCloudService;->OSS_SERVER_LIST:[Ljava/lang/String;

    const-string v0, "oss.servers"

    sget-object v1, Lcom/car/cloud/CarCloudService;->OSS_SERVER_LIST:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->mOssServers:[Ljava/lang/String;

    const-string v0, "oss.access.key.id"

    const-string v1, "LTAIKe1Jrhpitzc4"

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->mOSSAccessKeyID:Ljava/lang/String;

    const-string v0, "oss.access.key.secret"

    const-string v1, "aEhBl5nkj0CvY4Wz1c5XalOa5Xpi9Q"

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->mOSSAccessKeySecret:Ljava/lang/String;

    sput-boolean v3, Lcom/car/cloud/CarCloudService;->mRebootDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/16 v3, 0xa

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserStatus:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mNicknameMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mUploadMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mWebSocketCallbackList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mOssLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;

    iput-object v1, p0, Lcom/car/cloud/CarCloudService;->mMyAdManager:Lcom/car/cloud/MyAdManager;

    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mWsEverOk:Z

    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mReconnectionPromised:Z

    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/car/cloud/CarCloudService$1;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$1;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mBinder:Lcom/car/common/ICarCloud$Stub;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingStreamMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingCountMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/cloud/CarCloudService;->mLiveCameraList:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mCloud:Z

    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    iput v2, p0, Lcom/car/cloud/CarCloudService;->mUploadIndex:I

    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mIsCharging:Z

    iput-wide v4, p0, Lcom/car/cloud/CarCloudService;->mLastTimeOfAccOn:J

    iput v3, p0, Lcom/car/cloud/CarCloudService;->mPickupCountDown:I

    iput v3, p0, Lcom/car/cloud/CarCloudService;->mBindCountDown:I

    iput-wide v4, p0, Lcom/car/cloud/CarCloudService;->mLastOKTime:J

    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    iput-wide v4, p0, Lcom/car/cloud/CarCloudService;->mLastAirplaneTime:J

    new-instance v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$MyCloudCallback;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mCloudCallback:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    new-instance v0, Lcom/car/cloud/CarCloudService$2;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$2;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/cloud/CarCloudService$9;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$9;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    iput v2, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    new-instance v0, Lcom/car/cloud/CarCloudService$12;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$12;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/cloud/CarCloudService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/car/cloud/CarCloudService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUploadMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/car/cloud/CarCloudService;->BACK_CAM_RECORD_DISABLED:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/car/cloud/CarCloudService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/car/cloud/CarCloudService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudService;->mUserList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/car/cloud/CarCloudService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isAccOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudService;->mOssServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/car/cloud/CarCloudService;->mOssServers:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/car/cloud/CarCloudService;I)I
    .locals 0

    iput p1, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    return p1
.end method

.method static synthetic access$1900(Lcom/car/cloud/CarCloudService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->getWakeLockPackageName()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/cloud/CarCloudService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/car/cloud/CarCloudService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->checkIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudService;->URL_DEAFULT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/car/cloud/CarCloudService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->broadcastDeviceStatusChanged(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/car/cloud/CarCloudService;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->broadcastUserChanged(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mNicknameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Lcom/car/cloud/CarCloudService;->AUTO_BOND:Z

    return v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lcom/car/cloud/CarCloudService;->HEADLESS:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/car/cloud/CarCloudService;Lcom/car/cloud/Type$MsgInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->broadcastUserMessage(Lcom/car/cloud/Type$MsgInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/car/cloud/CarCloudService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/cloud/CarCloudService;->broadcastUserStatus(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudService;->mOSSAccessKeyID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudService;->URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudService;->mOSSAccessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/car/cloud/CarCloudService;->URL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/car/cloud/CarCloudService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/car/cloud/CarCloudService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->generateRandomName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingStreamMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingCountMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/cloud/CarCloudService;Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/car/cloud/CarCloudService;->startAlarmClock(Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudService;->CAR_MANUFACTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudService;->CAR_MODELTYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudService;->CAR_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/cloud/CarCloudService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    return v0
.end method

.method static synthetic access$802(Lcom/car/cloud/CarCloudService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    return p1
.end method

.method static synthetic access$900(Lcom/car/cloud/CarCloudService;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->showBundDialogIfNeed()V

    return-void
.end method

.method private broadcastDeviceStatusChanged(Z)V
    .locals 5

    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/car/common/ICarCloudCallback;

    invoke-interface {v3, p1}, Lcom/car/common/ICarCloudCallback;->onDeviceStatusChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CarSvc_CarCloudService"

    const-string v4, "onDeviceStatusChanged error:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private broadcastUserChanged(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/car/cloud/Type$UserInfo;->toJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/car/common/ICarCloudCallback;

    invoke-interface {v4, v3}, Lcom/car/common/ICarCloudCallback;->onUserChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "onUserChanged error:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private broadcastUserMessage(Lcom/car/cloud/Type$MsgInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/car/cloud/Type$MsgInfo;->toJson()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/car/common/ICarCloudCallback;

    invoke-interface {v4, v3}, Lcom/car/common/ICarCloudCallback;->onMessageReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "onUserChanged error:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private broadcastUserStatus(Ljava/lang/String;Z)V
    .locals 5

    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/car/common/ICarCloudCallback;

    invoke-interface {v3, p1, p2}, Lcom/car/common/ICarCloudCallback;->onUserStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CarSvc_CarCloudService"

    const-string v4, "onUserStatusChanged error:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x64

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIntent() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private generateRandomName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/car/cloud/CarCloudService;->getRandom(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/car/cloud/CarCloudService;
    .locals 1

    sget-object v0, Lcom/car/cloud/CarCloudService;->mInstance:Lcom/car/cloud/CarCloudService;

    return-object v0
.end method

.method private getWakeLockPackageName()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    :try_start_0
    const-string v5, "android.os.PowerManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getWakeLockPackageName"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    const-string v5, "CarSvc_CarCloudService"

    const-string v6, "failed to call getWakeLockPackageName()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PowerManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v4, "android.os.PowerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getWakeLockPackageName"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "failed to call getWakeLockPackageName()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private initCarMotion()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "/sys/bus/platform/drivers/gsensor/read_reg"

    invoke-direct {p0, v0}, Lcom/car/cloud/CarCloudService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CarSvc_CarCloudService"

    const-string v1, "unsupport car motion"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "CarSvc_CarCloudService"

    const-string v1, "initCarMotion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miramems/carmotion/carMotion;

    invoke-direct {v0}, Lcom/miramems/carmotion/carMotion;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/miramems/carmotion/carMotion;->Init(IIII)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    invoke-virtual {v0, v2}, Lcom/miramems/carmotion/carMotion;->Set_Debug_Level(I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miramems/carmotion/carMotion;->Control(II)V

    sget-boolean v0, Lcom/car/cloud/CarCloudService;->HEADLESS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/miramems/carmotion/carMotion;->Direction_Set_Parma(I)V

    :goto_1
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miramems/carmotion/carMotion;->Violent_Set_Parma(I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    invoke-virtual {v0, p0}, Lcom/miramems/carmotion/carMotion;->RegisteOncarMotionEventListener(Lcom/miramems/carmotion/carMotion$carMotionEventListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/miramems/carmotion/carMotion;->Direction_Set_Parma(I)V

    goto :goto_1
.end method

.method private isAccOn()Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/car/cloud/CarCloudService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isValidNetworkConnected()Z
    .locals 1

    invoke-static {p0}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isValidNetworkConnected(I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isValidNetworkConnected(Landroid/content/Context;)Z
    .locals 4

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isValidNetworkConnected(Landroid/content/Context;I)Z
    .locals 4

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWifiApEnabled()Z
    .locals 2

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    return v1
.end method

.method private showBundDialogIfNeed()V
    .locals 10

    const-string v6, "persist.hide.bund.dlg"

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v4

    const-wide/32 v8, 0x240c8400

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v6, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    if-lez v6, :cond_1

    const-string v6, "CarSvc_CarCloudService"

    const-string v7, "show bund dialog only 1 time after wakeup."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.car.bund.dialog"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/car/cloud/CarCloudService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "CarSvc_CarCloudService"

    const-string v7, "show bund dialog fail."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAlarmClock(Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p1, v3, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v4, v6, p2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startRepeatAlarmClock(Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v1, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, p2

    const/4 v1, 0x3

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private stopRepeatAlarmClock(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method ADisplay(ZLjava/lang/String;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v3}, Lcom/car/common/CarServiceImpl;->requestScreen(ZZLjava/lang/String;)Z

    move-result v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/car/cloud/AdActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "video"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "path"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "timeout"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "recover"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public OncarMotionEvent(II)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarMotionEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v3}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v3}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v3}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v3}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method addLivingClient(Ljava/lang/String;JI)V
    .locals 8

    iget-object v7, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    monitor-enter v7

    :try_start_0
    new-instance v1, Lcom/car/cloud/CarCloudService$LivingClient;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/car/cloud/CarCloudService$LivingClient;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;JI)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "CarSvc_CarCloudService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add Living Client unionId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " camid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Total "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Clients Connectted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method alarmNotify(ILjava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;JII)V

    return-void
.end method

.method alarmNotify(ILjava/lang/String;JII)V
    .locals 11

    const/4 v7, 0x0

    if-nez p6, :cond_0

    const/16 v8, 0xa

    :goto_0
    const-string v9, ""

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v9}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;JIIILjava/lang/String;)V

    return-void

    :cond_0
    move/from16 v8, p6

    goto :goto_0
.end method

.method alarmNotify(ILjava/lang/String;JIIILjava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v0, :cond_0

    const-string v0, "sys.car.sleep"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/cloud/CarCloudService$5;

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p8

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p7

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/car/cloud/CarCloudService$5;-><init>(Lcom/car/cloud/CarCloudService;ILjava/lang/String;Ljava/lang/String;JIII)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method clearLivingClient()V
    .locals 3

    iget-object v1, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    const-string v0, "CarSvc_CarCloudService"

    const-string v2, "clearLivingClient"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->forceWakeLockReleased()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method delLivingClient(Ljava/lang/String;I)V
    .locals 6

    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    const-string v2, "CarSvc_CarCloudService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delLivingClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " camid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/cloud/CarCloudService$LivingClient;

    const-string v2, "CarSvc_CarCloudService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delLivingClient: client.mUnionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$LivingClient;->mUnionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " client.mCamID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/car/cloud/CarCloudService$LivingClient;->mCamID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " i: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/car/cloud/CarCloudService$LivingClient;->mUnionId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/car/cloud/CarCloudService$LivingClient;->mCamID:I

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v2, "CarSvc_CarCloudService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove Living Client unionId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Left "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Clients Connectted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->doStopLive()V

    :cond_2
    return-void
.end method

.method devReportSuspend(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    new-instance v1, Lcom/car/cloud/CarCloudService$6;

    invoke-direct {v1, p0, p1}, Lcom/car/cloud/CarCloudService$6;-><init>(Lcom/car/cloud/CarCloudService;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/car/cloud/WebSocketUtil;->deviceSuspend(ZLcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    :cond_0
    return-void
.end method

.method doStopLive()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingStreamMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v1, ""

    invoke-virtual {v0, v1, v3, v3}, Lcom/car/common/CameraServiceImpl;->onlinePreviewRequest(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/car/common/CameraServiceImpl;->onlinePreviewRequest(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/car/common/CameraServiceImpl;->onlinePreviewRequest(Ljava/lang/String;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->clearLivingClient()V

    return-void
.end method

.method filesClean()V
    .locals 17

    const-string v10, "/sdcard/Pictures/"

    const-string v13, "/sdcard/Movies/"

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v14, v7

    const/16 v15, 0xa

    if-le v14, v15, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    array-length v6, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x5

    if-le v14, v15, :cond_1

    const-string v14, "F"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "B"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "I"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v14, Lcom/car/cloud/CarCloudService$FilePathComp;

    invoke-direct {v14}, Lcom/car/cloud/CarCloudService$FilePathComp;-><init>()V

    invoke-static {v8, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0xa

    const/4 v5, 0x0

    :goto_1
    if-lez v2, :cond_4

    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/cloud/CarCloudService;->mUploadMap:Ljava/util/HashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    array-length v14, v7

    const/4 v15, 0x6

    if-le v14, v15, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    array-length v6, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_7

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x5

    if-le v14, v15, :cond_6

    const-string v14, "F"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "B"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "I"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    new-instance v14, Lcom/car/cloud/CarCloudService$FilePathComp;

    invoke-direct {v14}, Lcom/car/cloud/CarCloudService$FilePathComp;-><init>()V

    invoke-static {v8, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v14, "CarSvc_CarCloudService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0x6

    const/4 v5, 0x0

    :goto_3
    if-lez v2, :cond_9

    new-instance v11, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_8
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method forceWakeLockReleased()V
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v0}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

    return-void
.end method

.method public getLoginWebServer()Z
    .locals 2

    iget-object v1, p0, Lcom/car/cloud/CarCloudService;->mWebSocketCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOssList()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/cloud/CarCloudService$7;

    invoke-direct {v1, p0}, Lcom/car/cloud/CarCloudService$7;-><init>(Lcom/car/cloud/CarCloudService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public getRandom(I)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    div-int/lit8 v1, p1, 0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    if-nez v2, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method getUserOnlineStatus(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insideOfDualCVBSisWorking()Z
    .locals 2

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->isDualCVBS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/power/utxd2_switch_control"

    invoke-static {v0}, Lcom/car/common/Util;->readSysValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDualCVBS()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "ro.func.flag"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method isEasyAccessed(Ljava/lang/String;)J
    .locals 10

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/16 v8, 0x50

    invoke-direct {v2, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    const/16 v8, 0x1388

    invoke-virtual {v5, v2, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    const-string v5, "CarSvc_CarCloudService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ping "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " delay is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method keepAwake(Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v0, p1}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    return-void
.end method

.method needRelogin()Z
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "sys.register.done"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    return v6

    :cond_0
    const-string v8, "persist.device.flag"

    const-string v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    const-string v8, "E:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    :goto_1
    move v6, v7

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_4

    move v4, v6

    :goto_2
    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "login_flag"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_5

    move v3, v6

    :goto_3
    if-eq v4, v3, :cond_1

    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "login_flag"

    if-eqz v4, :cond_6

    or-int/lit8 v6, v2, 0x1

    :goto_4
    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "login_firmware"

    const-string v9, "-"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v6, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/cloud/WebSocketUtil;->closeWebSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v6, v7

    goto :goto_0

    :cond_4
    move v4, v7

    goto :goto_2

    :cond_5
    move v3, v7

    goto :goto_3

    :cond_6
    and-int/lit8 v6, v2, -0x2

    goto :goto_4

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method notifyLivingCameraStatus()V
    .locals 7

    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v3}, Lcom/car/common/CameraServiceImpl;->getCameraList()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarSvc_CarCloudService"

    const-string v4, "notifyLivingCameraStatus:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    monitor-enter v4

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/cloud/CarCloudService$LivingClient;

    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v3

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$LivingClient;->mUnionId:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lcom/car/cloud/WebSocketUtil;->notifyCameraChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CarSvc_CarCloudService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notify unionId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/car/cloud/CarCloudService$LivingClient;->mUnionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Camera List "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mBinder:Lcom/car/common/ICarCloud$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, AUTO_BOND="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/car/cloud/CarCloudService;->AUTO_BOND:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/car/cloud/CarCloudService;->mInstance:Lcom/car/cloud/CarCloudService;

    new-instance v0, Lcom/car/common/CarServiceImpl;

    invoke-direct {v0, p0}, Lcom/car/common/CarServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mCloud:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/car/cloud/CloudMsgProvider;->URI_MSG:Landroid/net/Uri;

    sget-object v1, Lcom/car/cloud/CloudMsgProvider;->URI_USER:Landroid/net/Uri;

    const-string v2, "com.car.cloud.cloudmsgprovider"

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/car/cloud/WebSocketUtil;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService;->mCloudCallback:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    invoke-virtual {v0, v1}, Lcom/car/cloud/WebSocketUtil;->registerCallback(Lcom/car/cloud/WebSocketCallback;)V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.gotosleep"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.syswakeup"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.dvr.start_succeed"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.launcher.FORCE_REBOOT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.ad.show"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.ping"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.fakebtn.first"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.uploadgps"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.usersdel"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.lowvoltage"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.car.videorecorder.recording_time_changed"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "CarSvc_CarCloudService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.notice.list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/car/cloud/CarCloudService;->NOTICE_LIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/car/cloud/CarCloudService;->NOTICE_LIST:Ljava/lang/String;

    const-string v1, "sos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.car.f10.pressed"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v0, "com.car.feeddog"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/car/cloud/CarCloudService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-direct {p0, v9}, Lcom/car/cloud/CarCloudService;->checkIntent(Landroid/content/Intent;)V

    :cond_1
    const-string v0, "ro.car.ad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/car/cloud/CarCloudService;->HEADLESS:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/car/cloud/MyAdManager;

    invoke-direct {v0}, Lcom/car/cloud/MyAdManager;-><init>()V

    invoke-virtual {v0, p0}, Lcom/car/cloud/MyAdManager;->init(Landroid/content/Context;)Lcom/car/cloud/MyAdManager;

    move-result-object v0

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mMyAdManager:Lcom/car/cloud/MyAdManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/32 v0, 0x493e0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_2

    const-string v0, "cloud"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/car/cloud/CarCloudService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adid"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/car/ad/ADManager;->instance()Lcom/car/ad/ADManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v7, v1}, Lcom/car/ad/ADManager;->reportAD(JI)V

    :cond_2
    sget-object v0, Lcom/car/cloud/CarCloudService;->NOTICE_LIST:Ljava/lang/String;

    const-string v1, "carMotion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->initCarMotion()V

    :cond_3
    invoke-static {}, Lcom/car/cloud/HttpRequestManager;->create()V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/car/cloud/UpgradeManager;->create(Landroid/content/Context;Landroid/os/Handler;)V

    const-class v0, Lcom/car/cloud/CarCloudService;

    const-string v1, "com.car.cloud.CheckVersion"

    invoke-direct {p0, p0, v0, v1}, Lcom/car/cloud/CarCloudService;->stopRepeatAlarmClock(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const-wide/32 v2, 0x6ddd00

    const-class v4, Lcom/car/cloud/CarCloudService;

    const-string v5, "com.car.cloud.CheckVersion"

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/car/cloud/CarCloudService;->startRepeatAlarmClock(Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V

    new-instance v0, Lcom/car/common/CameraServiceImpl;

    invoke-direct {v0, p0}, Lcom/car/common/CameraServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    new-instance v0, Lcom/car/common/util/MyWakeLock;

    const-wide/32 v2, 0x493e0

    invoke-direct {v0, p0, v2, v3}, Lcom/car/common/util/MyWakeLock;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    new-instance v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mCloud:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-static {}, Lcom/car/cloud/HttpRequestManager;->destory()V

    const-class v0, Lcom/car/cloud/CarCloudService;

    const-string v1, "com.car.cloud.CheckVersion"

    invoke-direct {p0, p0, v0, v1}, Lcom/car/cloud/CarCloudService;->stopRepeatAlarmClock(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-virtual {v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    :cond_1
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "com.car.cloud.CheckVersion"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/car/cloud/UpgradeManager;->instance()Lcom/car/cloud/UpgradeManager;

    move-result-object v0

    const-string v1, "force_ui"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/car/cloud/UpgradeManager;->checkVersion(Z)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.car.cloud.RemindVersion"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/cloud/UpgradeManager;->instance()Lcom/car/cloud/UpgradeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/cloud/UpgradeManager;->showUpgradeUI()Z

    goto :goto_0
.end method

.method progressReport(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 8

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/car/cloud/WebSocketUtil;->notifyUserCapturing(Ljava/lang/String;JLjava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.car.monitor.notify"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "id"

    invoke-virtual {v7, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "operation"

    invoke-virtual {v7, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "percent"

    invoke-virtual {v7, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method reSendAlarmMsg()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "alarm"

    const/16 v3, 0xa

    new-instance v4, Lcom/car/cloud/CarCloudService$11;

    invoke-direct {v4, p0}, Lcom/car/cloud/CarCloudService$11;-><init>(Lcom/car/cloud/CarCloudService;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/car/cloud/WebSocketUtil;->getUnsentMsgList(Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V

    return-void
.end method

.method declared-synchronized registerRemoteCallback(Lcom/car/common/ICarCloudCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CarSvc_CarCloudService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " setCallback  to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method sendWakeLockInfo2Server()V
    .locals 20

    const/16 v18, 0x2800

    :try_start_0
    move/from16 v0, v18

    new-array v4, v0, [B

    const/16 v18, 0x2800

    move/from16 v0, v18

    new-array v5, v0, [B

    new-instance v7, Ljava/io/File;

    const-string v18, "/sys/kernel/debug/wakeup_sources"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    const-wide/16 v18, 0x1f4

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    new-instance v8, Ljava/io/File;

    const-string v18, "/sys/kernel/debug/wakeup_sources"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v18, 0x0

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v5, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    const-string v18, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    invoke-static/range {v17 .. v17}, Lcom/car/cloud/CarCloudService;->getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;

    move-result-object v16

    const-string v18, "CarSvc_CarCloudService"

    const-string v19, "These packages hold a wakelock:"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v18, "CarSvc_CarCloudService"

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    add-int v2, v2, v18

    goto :goto_0

    :cond_0
    const v9, 0x574b4900

    add-int v18, v13, v14

    add-int/lit8 v18, v18, 0x4

    add-int v18, v18, v2

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v5, v0, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v18

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/car/cloud/WebSocketUtil;->sendRawBinary([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method testServer(Ljava/lang/String;)J
    .locals 12

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    const/16 v6, 0xa

    new-array v2, v6, [J

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_2

    invoke-virtual {p0, p1}, Lcom/car/cloud/CarCloudService;->isEasyAccessed(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    :goto_2
    if-ge v3, v6, :cond_5

    aget-wide v8, v2, v3

    aget-wide v10, v2, v4

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    move v4, v3

    :cond_3
    aget-wide v8, v2, v3

    aget-wide v10, v2, v5

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    move v5, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_7

    if-eq v3, v4, :cond_6

    if-eq v3, v5, :cond_6

    aget-wide v8, v2, v3

    add-long/2addr v0, v8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    const/16 v7, 0x8

    int-to-long v8, v7

    div-long/2addr v0, v8

    goto :goto_0
.end method

.method testServers()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingStreamMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/cloud/CarCloudService$8;

    invoke-direct {v1, p0}, Lcom/car/cloud/CarCloudService$8;-><init>(Lcom/car/cloud/CarCloudService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method try2SendMsgAlarm(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/car/cloud/CarCloudService;->try2SendMsgAlarm(Ljava/util/List;Ljava/lang/String;J)V

    return-void
.end method

.method try2SendMsgAlarm(Ljava/util/List;Ljava/lang/String;J)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/cloud/Type$MsgInfo;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    const-string v8, "imgurl"

    aput-object v8, v23, v5

    const/4 v5, 0x1

    const-string v8, "imgurlrear"

    aput-object v8, v23, v5

    const/4 v5, 0x2

    const-string v8, "videourl"

    aput-object v8, v23, v5

    const/4 v5, 0x3

    const-string v8, "videourlrear"

    aput-object v8, v23, v5

    const/16 v26, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/car/cloud/Type$MsgInfo;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    move-object/from16 v0, v25

    iput-wide v8, v0, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    const/16 v26, 0x1

    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v23

    array-length v0, v4

    move/from16 v24, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    aget-object v22, v4, v20

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "CarSvc_CarCloudService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'s path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "/sdcard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v8, "alarm"

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_0

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    const-string v8, "alarm"

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v28

    :cond_0
    if-nez v28, :cond_1

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    const-string v8, "alarm"

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v28

    :cond_1
    const-string v5, "CarSvc_CarCloudService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v28, :cond_2

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p0 .. p0}, Lcom/car/cloud/CarCloudService;->filesClean()V

    :cond_2
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v5, "CarSvc_CarCloudService"

    const-string v8, "File missed?"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    if-eqz v26, :cond_8

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v8

    const-string v12, "capd"

    const/16 v13, 0x64

    const/4 v14, 0x0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v8 .. v14}, Lcom/car/cloud/WebSocketUtil;->notifyUserCapturing(Ljava/lang/String;JLjava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    :cond_6
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v5

    new-instance v8, Lcom/car/cloud/CarCloudService$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Lcom/car/cloud/CarCloudService$10;-><init>(Lcom/car/cloud/CarCloudService;Lcom/car/cloud/Type$MsgInfo;)V

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v8}, Lcom/car/cloud/WebSocketUtil;->sendTextMsg(Lcom/car/cloud/Type$MsgInfo;Lcom/car/cloud/WebSocketUtil$ReplyHandler;)J

    goto/16 :goto_0

    :cond_7
    :try_start_1
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x69

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x69

    const-wide/16 v10, 0xbb8

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    return-void
.end method

.method try2Upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 21

    const-string v5, "CarSvc_CarCloudService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : filepath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " keyString="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/car/cloud/CarCloudService$MyLock;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/car/cloud/CarCloudService$MyLock;-><init>(Lcom/car/cloud/CarCloudService;)V

    const/4 v5, 0x0

    iput-boolean v5, v13, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    const-string v5, "live"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/car/cloud/CarCloudService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "server"

    sget-object v7, Lcom/car/cloud/CarCloudService;->mOssServers:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "gps"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v15, Lcom/car/cloud/CarCloudService;->mGpsOssServer:Ljava/lang/String;

    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x2e

    invoke-virtual {v15, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v5, 0x2e

    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    new-instance v4, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    sget-object v5, Lcom/car/cloud/CarCloudService;->mOSSAccessKeyID:Ljava/lang/String;

    sget-object v6, Lcom/car/cloud/CarCloudService;->mOSSAccessKeySecret:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/alibaba/sdk/android/oss/OSSClient;

    invoke-virtual/range {p0 .. p0}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v10, v5, v15, v4}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/oss_record/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CarSvc_CarCloudService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try2UploadOss: recordDir.mkdirs() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v18, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/car/cloud/MyResumableUpProgHandler;

    move-object/from16 v0, p4

    move-wide/from16 v1, p5

    invoke-direct {v5, v0, v1, v2}, Lcom/car/cloud/MyResumableUpProgHandler;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    new-instance v5, Lcom/car/cloud/CarCloudService$3;

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v12, p2

    invoke-direct/range {v5 .. v13}, Lcom/car/cloud/CarCloudService$3;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;JLcom/alibaba/sdk/android/oss/OSS;Ljava/lang/String;Ljava/lang/String;Lcom/car/cloud/CarCloudService$MyLock;)V

    move-object/from16 v0, v18

    invoke-interface {v10, v0, v5}, Lcom/alibaba/sdk/android/oss/OSS;->asyncResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v19

    monitor-enter v13

    :try_start_0
    iget-boolean v5, v13, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    if-nez v5, :cond_2

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, v13, Lcom/car/cloud/CarCloudService$MyLock;->validUrl:Ljava/lang/String;

    return-object v5

    :catch_0
    move-exception v14

    :try_start_2
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method try2UploadQiniu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 11

    const-string v1, "CarSvc_CarCloudService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : filepath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " keyString="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/car/cloud/CarCloudService$MyLock;

    invoke-direct {v3, p0}, Lcom/car/cloud/CarCloudService$MyLock;-><init>(Lcom/car/cloud/CarCloudService;)V

    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v8

    iget v1, p0, Lcom/car/cloud/CarCloudService;->mUploadIndex:I

    add-int/lit8 v9, v1, 0x1

    iput v9, p0, Lcom/car/cloud/CarCloudService;->mUploadIndex:I

    new-instance v1, Lcom/car/cloud/CarCloudService$4;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/car/cloud/CarCloudService$4;-><init>(Lcom/car/cloud/CarCloudService;Lcom/car/cloud/CarCloudService$MyLock;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v8, p2, p3, v9, v1}, Lcom/car/cloud/WebSocketUtil;->getUploadToken(Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    monitor-enter v3

    :try_start_0
    iget-boolean v1, v3, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    if-nez v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v3, Lcom/car/cloud/CarCloudService$MyLock;->validUrl:Ljava/lang/String;

    return-object v1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method declared-synchronized unregisterRemoteCallback(Lcom/car/common/ICarCloudCallback;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
