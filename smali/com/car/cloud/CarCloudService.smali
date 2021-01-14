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

    .prologue
    const/4 v3, 0x0

    .line 104
    const-string v0, "carcloud.server"

    const-string v1, "persist.sys.carcloud.server"

    const-string v2, "ws://ws.carassist.cn:8000"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->URL_DEAFULT:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/car/cloud/CarCloudService;->URL_DEAFULT:Ljava/lang/String;

    sput-object v0, Lcom/car/cloud/CarCloudService;->URL:Ljava/lang/String;

    .line 106
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

    .line 108
    const-string v0, "ro.product.model"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->CAR_MODELTYPE:Ljava/lang/String;

    .line 109
    const-string v0, "ro.product.fw_ver"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->CAR_VERSION:Ljava/lang/String;

    .line 110
    const-string v0, "persist.notice.list"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->NOTICE_LIST:Ljava/lang/String;

    .line 133
    const-string v0, "persist.rear.record.disable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/cloud/CarCloudService;->BACK_CAM_RECORD_DISABLED:Z

    .line 135
    const-string v0, "ro.product.class"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "headless"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/cloud/CarCloudService;->HEADLESS:Z

    .line 136
    const-string v0, "persist.carcloud.auto.bond"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/cloud/CarCloudService;->AUTO_BOND:Z

    .line 146
    const-string v0, "oss.gps.server"

    const-string v1, "gps-dvrassist-com.oss-ap-southeast-1.aliyuncs.com"

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->mGpsOssServer:Ljava/lang/String;

    .line 147
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

    .line 149
    const-string v0, "oss.servers"

    sget-object v1, Lcom/car/cloud/CarCloudService;->OSS_SERVER_LIST:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->mOssServers:[Ljava/lang/String;

    .line 150
    const-string v0, "oss.access.key.id"

    const-string v1, "LTAIKe1Jrhpitzc4"

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->mOSSAccessKeyID:Ljava/lang/String;

    .line 151
    const-string v0, "oss.access.key.secret"

    const-string v1, "aEhBl5nkj0CvY4Wz1c5XalOa5Xpi9Q"

    invoke-static {v0, v1}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/CarCloudService;->mOSSAccessKeySecret:Ljava/lang/String;

    .line 330
    sput-boolean v3, Lcom/car/cloud/CarCloudService;->mRebootDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v3, 0xa

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserList:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserStatus:Ljava/util/HashMap;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mNicknameMap:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mUploadMap:Ljava/util/HashMap;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mWebSocketCallbackList:Ljava/util/ArrayList;

    .line 144
    iput-object v1, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mOssLock:Ljava/lang/Object;

    .line 155
    iput-object v1, p0, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/car/cloud/CarCloudService;->mMyAdManager:Lcom/car/cloud/MyAdManager;

    .line 161
    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mWsEverOk:Z

    .line 165
    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mReconnectionPromised:Z

    .line 168
    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    .line 169
    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/car/cloud/CarCloudService;->mTtsStreamType:I

    .line 172
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 244
    new-instance v0, Lcom/car/cloud/CarCloudService$1;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$1;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mBinder:Lcom/car/common/ICarCloud$Stub;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingStreamMap:Ljava/util/HashMap;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingCountMap:Ljava/util/HashMap;

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/car/cloud/CarCloudService;->mLiveCameraList:I

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mCloud:Z

    .line 309
    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    .line 327
    iput v2, p0, Lcom/car/cloud/CarCloudService;->mUploadIndex:I

    .line 328
    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mIsCharging:Z

    .line 329
    iput-wide v4, p0, Lcom/car/cloud/CarCloudService;->mLastTimeOfAccOn:J

    .line 333
    iput v3, p0, Lcom/car/cloud/CarCloudService;->mPickupCountDown:I

    .line 334
    iput v3, p0, Lcom/car/cloud/CarCloudService;->mBindCountDown:I

    .line 335
    iput-wide v4, p0, Lcom/car/cloud/CarCloudService;->mLastOKTime:J

    .line 336
    iput-boolean v2, p0, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    .line 337
    iput-wide v4, p0, Lcom/car/cloud/CarCloudService;->mLastAirplaneTime:J

    .line 344
    new-instance v0, Lcom/car/cloud/CarCloudService$MyCloudCallback;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$MyCloudCallback;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mCloudCallback:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    .line 346
    new-instance v0, Lcom/car/cloud/CarCloudService$2;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$2;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    .line 1384
    new-instance v0, Lcom/car/cloud/CarCloudService$9;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$9;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    .line 2669
    iput v2, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    .line 2712
    new-instance v0, Lcom/car/cloud/CarCloudService$12;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudService$12;-><init>(Lcom/car/cloud/CarCloudService;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void

    .line 169
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/cloud/CarCloudService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/car/cloud/CarCloudService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUploadMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/car/cloud/CarCloudService;->BACK_CAM_RECORD_DISABLED:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/car/cloud/CarCloudService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/car/cloud/CarCloudService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/car/cloud/CarCloudService;->mUserList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/car/cloud/CarCloudService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isAccOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/car/cloud/CarCloudService;)Lcom/car/cloud/CarCloudGPSDataUploadThread;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    return-object v0
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/car/cloud/CarCloudService;->mOssServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 99
    sput-object p0, Lcom/car/cloud/CarCloudService;->mOssServers:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/car/cloud/CarCloudService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/car/cloud/CarCloudService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    return p1
.end method

.method static synthetic access$1900(Lcom/car/cloud/CarCloudService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->getWakeLockPackageName()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/cloud/CarCloudService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/car/cloud/CarCloudService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->checkIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/car/cloud/CarCloudService;->URL_DEAFULT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/car/cloud/CarCloudService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->broadcastDeviceStatusChanged(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/car/cloud/CarCloudService;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->broadcastUserChanged(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mNicknameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/car/cloud/CarCloudService;->AUTO_BOND:Z

    return v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/car/cloud/CarCloudService;->HEADLESS:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/car/cloud/CarCloudService;Lcom/car/cloud/Type$MsgInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # Lcom/car/cloud/Type$MsgInfo;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudService;->broadcastUserMessage(Lcom/car/cloud/Type$MsgInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/car/cloud/CarCloudService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/car/cloud/CarCloudService;->broadcastUserStatus(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/car/cloud/CarCloudService;->mOSSAccessKeyID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/car/cloud/CarCloudService;->URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/car/cloud/CarCloudService;->mOSSAccessKeySecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 99
    sput-object p0, Lcom/car/cloud/CarCloudService;->URL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/car/cloud/CarCloudService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/car/cloud/CarCloudService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->generateRandomName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingStreamMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/car/cloud/CarCloudService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingCountMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/cloud/CarCloudService;Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/Class;
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/car/cloud/CarCloudService;->startAlarmClock(Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/car/cloud/CarCloudService;->CAR_MANUFACTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/car/cloud/CarCloudService;->CAR_MODELTYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/car/cloud/CarCloudService;->CAR_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/cloud/CarCloudService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    return v0
.end method

.method static synthetic access$802(Lcom/car/cloud/CarCloudService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    return p1
.end method

.method static synthetic access$900(Lcom/car/cloud/CarCloudService;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/cloud/CarCloudService;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->showBundDialogIfNeed()V

    return-void
.end method

.method private broadcastDeviceStatusChanged(Z)V
    .locals 5
    .param p1, "isOnline"    # Z

    .prologue
    .line 233
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 234
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 236
    :try_start_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/car/common/ICarCloudCallback;

    invoke-interface {v3, p1}, Lcom/car/common/ICarCloudCallback;->onDeviceStatusChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CarSvc_CarCloudService"

    const-string v4, "onDeviceStatusChanged error:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 241
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 242
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

    .prologue
    .line 191
    .local p1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/car/cloud/Type$UserInfo;>;"
    invoke-static {p1}, Lcom/car/cloud/Type$UserInfo;->toJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "jsonResult":Ljava/lang/String;
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 193
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 197
    :try_start_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/car/common/ICarCloudCallback;

    invoke-interface {v4, v3}, Lcom/car/common/ICarCloudCallback;->onUserChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "onUserChanged error:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 202
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 203
    return-void
.end method

.method private broadcastUserMessage(Lcom/car/cloud/Type$MsgInfo;)V
    .locals 6
    .param p1, "mi"    # Lcom/car/cloud/Type$MsgInfo;

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/car/cloud/Type$MsgInfo;->toJson()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "jsonMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 208
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/car/common/ICarCloudCallback;

    invoke-interface {v4, v3}, Lcom/car/common/ICarCloudCallback;->onMessageReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "onUserChanged error:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 217
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 218
    return-void
.end method

.method private broadcastUserStatus(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "unionId"    # Ljava/lang/String;
    .param p2, "online"    # Z

    .prologue
    .line 221
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 222
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/car/common/ICarCloudCallback;

    invoke-interface {v3, p1, p2}, Lcom/car/common/ICarCloudCallback;->onUserStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CarSvc_CarCloudService"

    const-string v4, "onUserStatusChanged error:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 229
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 230
    return-void
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x64

    .line 1742
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

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1754
    :cond_1
    :goto_0
    return-void

    .line 1746
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

    .line 1747
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1748
    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1749
    :cond_3
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1751
    :cond_4
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private generateRandomName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2005
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

    .prologue
    .line 1571
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

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 1962
    .local v3, "pm":Landroid/os/PowerManager;
    :try_start_0
    const-string v5, "android.os.PowerManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1964
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getWakeLockPackageName"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1965
    .local v2, "meth":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 1966
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1967
    .local v4, "retobj":Ljava/lang/Object;
    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1973
    .end local v0    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    .end local v4    # "retobj":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 1969
    :catch_0
    move-exception v1

    .line 1970
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CarSvc_CarCloudService"

    const-string v6, "failed to call getWakeLockPackageName()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;
    .locals 6
    .param p0, "pm"    # Landroid/os/PowerManager;
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

    .prologue
    .line 760
    :try_start_0
    const-string v4, "android.os.PowerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 762
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getWakeLockPackageName"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 763
    .local v2, "meth":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 764
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 765
    .local v3, "retobj":Ljava/lang/Object;
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .end local v0    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    .end local v3    # "retobj":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CarSvc_CarCloudService"

    const-string v5, "failed to call getWakeLockPackageName()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private initCarMotion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2734
    const-string v0, "/sys/bus/platform/drivers/gsensor/read_reg"

    invoke-direct {p0, v0}, Lcom/car/cloud/CarCloudService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2735
    const-string v0, "CarSvc_CarCloudService"

    const-string v1, "unsupport car motion"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :goto_0
    return-void

    .line 2738
    :cond_0
    const-string v0, "CarSvc_CarCloudService"

    const-string v1, "initCarMotion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    new-instance v0, Lcom/miramems/carmotion/carMotion;

    invoke-direct {v0}, Lcom/miramems/carmotion/carMotion;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    .line 2740
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/miramems/carmotion/carMotion;->Init(IIII)I

    .line 2743
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    invoke-virtual {v0, v2}, Lcom/miramems/carmotion/carMotion;->Set_Debug_Level(I)V

    .line 2744
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miramems/carmotion/carMotion;->Control(II)V

    .line 2764
    sget-boolean v0, Lcom/car/cloud/CarCloudService;->HEADLESS:Z

    if-eqz v0, :cond_1

    .line 2765
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/miramems/carmotion/carMotion;->Direction_Set_Parma(I)V

    .line 2779
    :goto_1
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miramems/carmotion/carMotion;->Violent_Set_Parma(I)V

    .line 2780
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    invoke-virtual {v0, p0}, Lcom/miramems/carmotion/carMotion;->RegisteOncarMotionEventListener(Lcom/miramems/carmotion/carMotion$carMotionEventListener;)V

    goto :goto_0

    .line 2767
    :cond_1
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarMotion:Lcom/miramems/carmotion/carMotion;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/miramems/carmotion/carMotion;->Direction_Set_Parma(I)V

    goto :goto_1
.end method

.method private isAccOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2701
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2702
    .local v1, "ifilter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/car/cloud/CarCloudService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2703
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2704
    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2705
    .local v3, "status":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 2709
    .end local v3    # "status":I
    :cond_1
    return v2
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2729
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2730
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isValidNetworkConnected()Z
    .locals 1

    .prologue
    .line 1727
    invoke-static {p0}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isValidNetworkConnected(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1712
    invoke-static {p0, p1}, Lcom/car/cloud/CarCloudService;->isValidNetworkConnected(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isValidNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1731
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1732
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1733
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1734
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 1735
    const/4 v2, 0x1

    .line 1738
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isValidNetworkConnected(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 1716
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1717
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1718
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1719
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

#by boba 26.11.2020
#remote over wifi
#    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 1720
    const/4 v2, 0x1

    .line 1723
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWifiApEnabled()Z
    .locals 2

    .prologue
    .line 1707
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1708
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    return v1
.end method

.method private showBundDialogIfNeed()V
    .locals 10

    .prologue
    .line 2677
    const-string v6, "persist.hide.bund.dlg"

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2678
    .local v4, "lastPromptTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2679
    .local v0, "curTime":J
    sub-long v6, v0, v4

    const-wide/32 v8, 0x240c8400

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 2698
    :goto_0
    return-void

    .line 2685
    :cond_0
    iget v6, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    if-lez v6, :cond_1

    .line 2686
    const-string v6, "CarSvc_CarCloudService"

    const-string v7, "show bund dialog only 1 time after wakeup."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2689
    :cond_1
    iget v6, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/car/cloud/CarCloudService;->mShowBundDialogCount:I

    .line 2692
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.car.bund.dialog"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2693
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2694
    invoke-virtual {p0, v3}, Lcom/car/cloud/CarCloudService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2695
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 2696
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "CarSvc_CarCloudService"

    const-string v7, "show bund dialog fail."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAlarmClock(Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "millis"    # J
    .param p5, "action"    # Ljava/lang/String;
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

    .prologue
    .line 1698
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1699
    .local v1, "manager":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1700
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1701
    const/4 v3, 0x0

    const/high16 v6, 0x8000000

    invoke-static {p1, v3, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1702
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v4, v6, p2

    .line 1703
    .local v4, "triggerAtTime":J
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1704
    return-void
.end method

.method private startRepeatAlarmClock(Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "millis"    # J
    .param p5, "action"    # Ljava/lang/String;
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

    .prologue
    .line 1680
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1682
    .local v0, "manager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1683
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1684
    const/4 v1, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v1, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1685
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, p2

    .line 1686
    .local v2, "triggerAtTime":J
    const/4 v1, 0x3

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1687
    return-void
.end method

.method private stopRepeatAlarmClock(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "action"    # Ljava/lang/String;
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

    .prologue
    .line 1690
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1691
    .local v1, "manager":Landroid/app/AlarmManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1692
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1693
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1694
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1695
    return-void
.end method


# virtual methods
.method ADisplay(ZLjava/lang/String;I)V
    .locals 5
    .param p1, "isVideo"    # Z
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    const/4 v4, 0x1

    .line 2659
    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v3}, Lcom/car/common/CarServiceImpl;->requestScreen(ZZLjava/lang/String;)Z

    move-result v1

    .line 2660
    .local v1, "needRecover":Z
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/car/cloud/AdActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2661
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "video"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2662
    const-string v2, "path"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2663
    const-string v2, "timeout"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2664
    const-string v2, "recover"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2665
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2666
    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->startActivity(Landroid/content/Intent;)V

    .line 2667
    return-void
.end method

.method public OncarMotionEvent(II)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 2790
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

    .line 2791
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2792
    packed-switch p2, :pswitch_data_0

    .line 2813
    :cond_0
    :goto_0
    return-void

    .line 2794
    :pswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v3}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_0

    .line 2798
    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v3}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_0

    .line 2802
    :pswitch_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v3}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_0

    .line 2806
    :pswitch_3
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v3}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;)V

    goto :goto_0

    .line 2792
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
    .param p1, "unionId"    # Ljava/lang/String;
    .param p2, "relayid"    # J
    .param p4, "camid"    # I

    .prologue
    .line 2621
    iget-object v7, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    monitor-enter v7

    .line 2622
    :try_start_0
    new-instance v1, Lcom/car/cloud/CarCloudService$LivingClient;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/car/cloud/CarCloudService$LivingClient;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;JI)V

    .line 2623
    .local v1, "client":Lcom/car/cloud/CarCloudService$LivingClient;
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2624
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

    .line 2626
    monitor-exit v7

    .line 2627
    return-void

    .line 2626
    .end local v1    # "client":Lcom/car/cloud/CarCloudService$LivingClient;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method alarmNotify(ILjava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 755
    const-wide/16 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/car/cloud/CarCloudService;->alarmNotify(ILjava/lang/String;JII)V

    .line 756
    return-void
.end method

.method alarmNotify(ILjava/lang/String;JII)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "relayid"    # J
    .param p5, "camid"    # I
    .param p6, "length"    # I

    .prologue
    .line 853
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

    .line 854
    return-void

    :cond_0
    move/from16 v8, p6

    .line 853
    goto :goto_0
.end method

.method alarmNotify(ILjava/lang/String;JIIILjava/lang/String;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "relayid"    # J
    .param p5, "camid"    # I
    .param p6, "lengthForward"    # I
    .param p7, "lengthBackward"    # I
    .param p8, "passback"    # Ljava/lang/String;

    .prologue
    .line 858
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    .line 859
    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mSuspendNow:Z

    if-eqz v0, :cond_0

    .line 860
    const-string v0, "sys.car.sleep"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
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

    .line 1231
    return-void
.end method

.method clearLivingClient()V
    .locals 3

    .prologue
    .line 2651
    iget-object v1, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    monitor-enter v1

    .line 2652
    :try_start_0
    const-string v0, "CarSvc_CarCloudService"

    const-string v2, "clearLivingClient"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2654
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2655
    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->forceWakeLockReleased()V

    .line 2656
    return-void

    .line 2654
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
    .param p1, "unionId"    # Ljava/lang/String;
    .param p2, "camid"    # I

    .prologue
    .line 2630
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    monitor-enter v3

    .line 2631
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

    .line 2632
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2633
    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/cloud/CarCloudService$LivingClient;

    .line 2634
    .local v0, "client":Lcom/car/cloud/CarCloudService$LivingClient;
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

    .line 2635
    iget-object v2, v0, Lcom/car/cloud/CarCloudService$LivingClient;->mUnionId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/car/cloud/CarCloudService$LivingClient;->mCamID:I

    if-ne p2, v2, :cond_0

    .line 2636
    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2637
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

    .line 2643
    .end local v0    # "client":Lcom/car/cloud/CarCloudService$LivingClient;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2641
    .restart local v0    # "client":Lcom/car/cloud/CarCloudService$LivingClient;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2642
    goto/16 :goto_0

    .line 2643
    .end local v0    # "client":Lcom/car/cloud/CarCloudService$LivingClient;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2645
    iget-object v2, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2646
    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->doStopLive()V

    .line 2648
    :cond_2
    return-void
.end method

.method devReportSuspend(Z)V
    .locals 2
    .param p1, "suspend"    # Z

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    if-eqz v0, :cond_0

    .line 1235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    .line 1236
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    new-instance v1, Lcom/car/cloud/CarCloudService$6;

    invoke-direct {v1, p0, p1}, Lcom/car/cloud/CarCloudService$6;-><init>(Lcom/car/cloud/CarCloudService;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/car/cloud/WebSocketUtil;->deviceSuspend(ZLcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    .line 1258
    :cond_0
    return-void
.end method

.method doStopLive()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1977
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingStreamMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1978
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1980
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v1, ""

    invoke-virtual {v0, v1, v3, v3}, Lcom/car/common/CameraServiceImpl;->onlinePreviewRequest(Ljava/lang/String;II)V

    .line 1982
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/car/common/CameraServiceImpl;->onlinePreviewRequest(Ljava/lang/String;II)V

    .line 1983
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    const-string v1, ""

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lcom/car/common/CameraServiceImpl;->onlinePreviewRequest(Ljava/lang/String;II)V

    .line 1986
    :cond_0
    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->clearLivingClient()V

    .line 1987
    return-void
.end method

.method filesClean()V
    .locals 17

    .prologue
    .line 1764
    const-string v10, "/sdcard/Pictures/"

    .line 1765
    .local v10, "picPath":Ljava/lang/String;
    const-string v13, "/sdcard/Movies/"

    .line 1767
    .local v13, "videoPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1768
    .local v9, "picFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1769
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 1770
    .local v7, "list":[Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 1771
    array-length v14, v7

    const/16 v15, 0xa

    if-le v14, v15, :cond_4

    .line 1772
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1773
    .local v8, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v3, v1, v4

    .line 1774
    .local v3, "fn":Ljava/lang/String;
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

    .line 1775
    :cond_0
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1773
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1777
    .end local v3    # "fn":Ljava/lang/String;
    :cond_2
    new-instance v14, Lcom/car/cloud/CarCloudService$FilePathComp;

    invoke-direct {v14}, Lcom/car/cloud/CarCloudService$FilePathComp;-><init>()V

    invoke-static {v8, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1779
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0xa

    .line 1780
    .local v2, "delNum":I
    const/4 v5, 0x0

    .line 1781
    .local v5, "index":I
    :goto_1
    if-lez v2, :cond_4

    .line 1782
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

    .line 1783
    .local v11, "tempFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1784
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1785
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

    .line 1787
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 1788
    add-int/lit8 v5, v5, 0x1

    .line 1789
    goto :goto_1

    .line 1794
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "delNum":I
    .end local v4    # "i$":I
    .end local v5    # "index":I
    .end local v6    # "len$":I
    .end local v7    # "list":[Ljava/lang/String;
    .end local v8    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "tempFile":Ljava/io/File;
    :cond_4
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v12, "videoFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1796
    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 1797
    .restart local v7    # "list":[Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 1798
    array-length v14, v7

    const/4 v15, 0x6

    if-le v14, v15, :cond_9

    .line 1799
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1800
    .restart local v8    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, v7

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v6, :cond_7

    aget-object v3, v1, v4

    .line 1801
    .restart local v3    # "fn":Ljava/lang/String;
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

    .line 1802
    :cond_5
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1804
    .end local v3    # "fn":Ljava/lang/String;
    :cond_7
    new-instance v14, Lcom/car/cloud/CarCloudService$FilePathComp;

    invoke-direct {v14}, Lcom/car/cloud/CarCloudService$FilePathComp;-><init>()V

    invoke-static {v8, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1805
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

    .line 1806
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0x6

    .line 1807
    .restart local v2    # "delNum":I
    const/4 v5, 0x0

    .line 1808
    .restart local v5    # "index":I
    :goto_3
    if-lez v2, :cond_9

    .line 1809
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

    .line 1810
    .restart local v11    # "tempFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1811
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1812
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 1813
    add-int/lit8 v5, v5, 0x1

    .line 1814
    goto :goto_3

    .line 1818
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "delNum":I
    .end local v4    # "i$":I
    .end local v5    # "index":I
    .end local v6    # "len$":I
    .end local v7    # "list":[Ljava/lang/String;
    .end local v8    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "tempFile":Ljava/io/File;
    :cond_9
    return-void
.end method

.method forceWakeLockReleased()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v0}, Lcom/car/common/util/MyWakeLock;->forceWakeLockReleased()V

    .line 495
    return-void
.end method

.method public getLoginWebServer()Z
    .locals 2

    .prologue
    .line 1565
    iget-object v1, p0, Lcom/car/cloud/CarCloudService;->mWebSocketCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1566
    :try_start_0
    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    monitor-exit v1

    return v0

    .line 1567
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOssList()V
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mOssListFromServer:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/cloud/CarCloudService$7;

    invoke-direct {v1, p0}, Lcom/car/cloud/CarCloudService$7;-><init>(Lcom/car/cloud/CarCloudService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1309
    :cond_0
    return-void
.end method

.method public getRandom(I)Ljava/lang/String;
    .locals 8
    .param p1, "counts"    # I

    .prologue
    .line 1990
    const/4 v2, 0x0

    .line 1991
    .local v2, "random":Ljava/lang/String;
    div-int/lit8 v1, p1, 0x2

    .line 1992
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1993
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4022000000000000L    # 9.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 1994
    .local v3, "val":I
    if-nez v2, :cond_0

    .line 1995
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1992
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1997
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

    .line 2001
    .end local v3    # "val":I
    :cond_1
    return-object v2
.end method

.method getUserOnlineStatus(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1956
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insideOfDualCVBSisWorking()Z
    .locals 2

    .prologue
    .line 2825
    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->isDualCVBS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2826
    const/4 v0, 0x0

    .line 2829
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

    .prologue
    const/4 v1, 0x0

    .line 2816
    const-string v2, "ro.func.flag"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2818
    .local v0, "flag":I
    and-int/lit8 v2, v0, 0x2

    if-lez v2, :cond_0

    .line 2819
    const/4 v1, 0x1

    .line 2821
    :cond_0
    return v1
.end method

.method isEasyAccessed(Ljava/lang/String;)J
    .locals 10
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 1370
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1371
    .local v6, "startTime":J
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/16 v8, 0x50

    invoke-direct {v2, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1372
    .local v2, "ia":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    .line 1373
    .local v4, "sc":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    const/16 v8, 0x1388

    invoke-virtual {v5, v2, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 1375
    .local v0, "delay":J
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

    .line 1381
    .end local v0    # "delay":J
    .end local v2    # "ia":Ljava/net/InetSocketAddress;
    .end local v4    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v6    # "startTime":J
    :goto_0
    return-wide v0

    .line 1378
    :catch_0
    move-exception v3

    .line 1379
    .local v3, "ie":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1381
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method keepAwake(Z)V
    .locals 1
    .param p1, "wake"    # Z

    .prologue
    .line 498
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    invoke-virtual {v0, p1}, Lcom/car/common/util/MyWakeLock;->keepAwake(Z)V

    .line 499
    return-void
.end method

.method needRelogin()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 461
    const-string v8, "sys.register.done"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 490
    :goto_0
    return v6

    .line 464
    :cond_0
    const-string v8, "persist.device.flag"

    const-string v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "flag":Ljava/lang/String;
    const/4 v5, 0x1

    .line 466
    .local v5, "noLive":Z
    const-string v8, "E:"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    :goto_1
    move v6, v7

    .line 490
    goto :goto_0

    .line 469
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 470
    .local v1, "flagVal":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 471
    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_4

    move v4, v6

    .line 472
    .local v4, "liveEnable":Z
    :goto_2
    invoke-virtual {p0}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "login_flag"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 474
    .local v2, "lastFlag":I
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_5

    move v3, v6

    .line 475
    .local v3, "lastLiveEnable":Z
    :goto_3
    if-eq v4, v3, :cond_1

    .line 476
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

    .line 481
    iget-boolean v6, p0, Lcom/car/cloud/CarCloudService;->mLoginWebServer:Z

    if-eqz v6, :cond_3

    .line 482
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/cloud/WebSocketUtil;->closeWebSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v6, v7

    .line 483
    goto :goto_0

    .end local v2    # "lastFlag":I
    .end local v3    # "lastLiveEnable":Z
    .end local v4    # "liveEnable":Z
    :cond_4
    move v4, v7

    .line 471
    goto :goto_2

    .restart local v2    # "lastFlag":I
    .restart local v4    # "liveEnable":Z
    :cond_5
    move v3, v7

    .line 474
    goto :goto_3

    .line 476
    .restart local v3    # "lastLiveEnable":Z
    :cond_6
    and-int/lit8 v6, v2, -0x2

    goto :goto_4

    .line 486
    .end local v1    # "flagVal":I
    .end local v2    # "lastFlag":I
    .end local v3    # "lastLiveEnable":Z
    .end local v4    # "liveEnable":Z
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method notifyLivingCameraStatus()V
    .locals 7

    .prologue
    .line 2607
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    invoke-virtual {v3}, Lcom/car/common/CameraServiceImpl;->getCameraList()Ljava/lang/String;

    move-result-object v2

    .line 2608
    .local v2, "list":Ljava/lang/String;
    const-string v3, "CarSvc_CarCloudService"

    const-string v4, "notifyLivingCameraStatus:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v4, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    monitor-enter v4

    .line 2610
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2611
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mLivingClientList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/cloud/CarCloudService$LivingClient;

    .line 2612
    .local v0, "client":Lcom/car/cloud/CarCloudService$LivingClient;
    iget-object v3, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    if-eqz v3, :cond_0

    .line 2613
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v3

    iget-object v5, v0, Lcom/car/cloud/CarCloudService$LivingClient;->mUnionId:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lcom/car/cloud/WebSocketUtil;->notifyCameraChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
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

    .line 2610
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2617
    .end local v0    # "client":Lcom/car/cloud/CarCloudService$LivingClient;
    :cond_1
    monitor-exit v4

    .line 2618
    return-void

    .line 2617
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mBinder:Lcom/car/common/ICarCloud$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    .line 1576
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1577
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

    .line 1578
    sput-object p0, Lcom/car/cloud/CarCloudService;->mInstance:Lcom/car/cloud/CarCloudService;

    .line 1579
    new-instance v0, Lcom/car/common/CarServiceImpl;

    invoke-direct {v0, p0}, Lcom/car/common/CarServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    .line 1580
    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mCloud:Z

    if-eqz v0, :cond_3

    .line 1581
    sget-object v0, Lcom/car/cloud/CloudMsgProvider;->URI_MSG:Landroid/net/Uri;

    sget-object v1, Lcom/car/cloud/CloudMsgProvider;->URI_USER:Landroid/net/Uri;

    const-string v2, "com.car.cloud.cloudmsgprovider"

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/car/cloud/WebSocketUtil;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 1583
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudService;->mCloudCallback:Lcom/car/cloud/CarCloudService$MyCloudCallback;

    invoke-virtual {v0, v1}, Lcom/car/cloud/WebSocketUtil;->registerCallback(Lcom/car/cloud/WebSocketCallback;)V

    .line 1584
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1585
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1586
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1587
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1588
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1589
    const-string v0, "com.car.gotosleep"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1590
    const-string v0, "com.car.syswakeup"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1591
    const-string v0, "com.car.dvr.start_succeed"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1592
    const-string v0, "com.car.launcher.FORCE_REBOOT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1593
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1594
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1596
    const-string v0, "com.car.ad.show"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1597
    const-string v0, "com.car.ping"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1598
    const-string v0, "com.car.fakebtn.first"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1599
    const-string v0, "com.car.uploadgps"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1600
    const-string v0, "com.car.usersdel"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1601
    const-string v0, "com.car.lowvoltage"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1602
    const-string v0, "com.car.videorecorder.recording_time_changed"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1604
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

    .line 1605
    sget-object v0, Lcom/car/cloud/CarCloudService;->NOTICE_LIST:Ljava/lang/String;

    const-string v1, "sos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    const-string v0, "com.car.f10.pressed"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1609
    :cond_0
    const-string v0, "com.car.feeddog"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/car/cloud/CarCloudService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    .line 1612
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_1

    .line 1613
    invoke-direct {p0, v9}, Lcom/car/cloud/CarCloudService;->checkIntent(Landroid/content/Intent;)V

    .line 1615
    :cond_1
    const-string v0, "ro.car.ad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/car/cloud/CarCloudService;->HEADLESS:Z

    if-nez v0, :cond_2

    .line 1616
    new-instance v0, Lcom/car/cloud/MyAdManager;

    invoke-direct {v0}, Lcom/car/cloud/MyAdManager;-><init>()V

    invoke-virtual {v0, p0}, Lcom/car/cloud/MyAdManager;->init(Landroid/content/Context;)Lcom/car/cloud/MyAdManager;

    move-result-object v0

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mMyAdManager:Lcom/car/cloud/MyAdManager;

    .line 1617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1618
    .local v10, "runningTime":J
    const-wide/32 v0, 0x493e0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_2

    .line 1619
    const-string v0, "cloud"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/car/cloud/CarCloudService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "adid"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1620
    .local v6, "adid":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    .line 1621
    invoke-static {}, Lcom/car/ad/ADManager;->instance()Lcom/car/ad/ADManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v7, v1}, Lcom/car/ad/ADManager;->reportAD(JI)V

    .line 1626
    .end local v6    # "adid":J
    .end local v10    # "runningTime":J
    :cond_2
    sget-object v0, Lcom/car/cloud/CarCloudService;->NOTICE_LIST:Ljava/lang/String;

    const-string v1, "carMotion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1627
    invoke-direct {p0}, Lcom/car/cloud/CarCloudService;->initCarMotion()V

    .line 1630
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/car/cloud/HttpRequestManager;->create()V

    .line 1631
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/car/cloud/UpgradeManager;->create(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1633
    const-class v0, Lcom/car/cloud/CarCloudService;

    const-string v1, "com.car.cloud.CheckVersion"

    invoke-direct {p0, p0, v0, v1}, Lcom/car/cloud/CarCloudService;->stopRepeatAlarmClock(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1634
    const-wide/32 v2, 0x6ddd00

    const-class v4, Lcom/car/cloud/CarCloudService;

    const-string v5, "com.car.cloud.CheckVersion"

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/car/cloud/CarCloudService;->startRepeatAlarmClock(Landroid/content/Context;JLjava/lang/Class;Ljava/lang/String;)V

    .line 1635
    new-instance v0, Lcom/car/common/CameraServiceImpl;

    invoke-direct {v0, p0}, Lcom/car/common/CameraServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mCameraServiceImpl:Lcom/car/common/CameraServiceImpl;

    .line 1636
    new-instance v0, Lcom/car/common/util/MyWakeLock;

    const-wide/32 v2, 0x493e0

    invoke-direct {v0, p0, v2, v3}, Lcom/car/common/util/MyWakeLock;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mMyWakeLock:Lcom/car/common/util/MyWakeLock;

    .line 1638
    new-instance v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    .line 1639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mMuteRecover:Z

    .line 1640
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mAudioManager:Landroid/media/AudioManager;

    .line 1641
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1656
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1657
    iget-boolean v0, p0, Lcom/car/cloud/CarCloudService;->mCloud:Z

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1659
    :cond_0
    invoke-static {}, Lcom/car/cloud/HttpRequestManager;->destory()V

    .line 1660
    const-class v0, Lcom/car/cloud/CarCloudService;

    const-string v1, "com.car.cloud.CheckVersion"

    invoke-direct {p0, p0, v0, v1}, Lcom/car/cloud/CarCloudService;->stopRepeatAlarmClock(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    if-eqz v0, :cond_1

    .line 1662
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    invoke-virtual {v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->destroy()V

    .line 1663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/cloud/CarCloudService;->mGPSUploadThread:Lcom/car/cloud/CarCloudGPSDataUploadThread;

    .line 1665
    :cond_1
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1666
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1645
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

    .line 1646
    invoke-static {}, Lcom/car/cloud/UpgradeManager;->instance()Lcom/car/cloud/UpgradeManager;

    move-result-object v0

    const-string v1, "force_ui"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/car/cloud/UpgradeManager;->checkVersion(Z)V

    .line 1651
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1647
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

    .line 1649
    invoke-static {}, Lcom/car/cloud/UpgradeManager;->instance()Lcom/car/cloud/UpgradeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/cloud/UpgradeManager;->showUpgradeUI()Z

    goto :goto_0
.end method

.method progressReport(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 8
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "opId"    # J
    .param p4, "op"    # Ljava/lang/String;
    .param p5, "percent"    # I

    .prologue
    .line 817
    if-eqz p1, :cond_1

    .line 818
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/car/cloud/WebSocketUtil;->notifyUserCapturing(Ljava/lang/String;JLjava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 820
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 821
    .local v7, "i":Landroid/content/Intent;
    const-string v0, "com.car.monitor.notify"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string v0, "id"

    invoke-virtual {v7, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 823
    const-string v0, "operation"

    invoke-virtual {v7, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v0, "percent"

    invoke-virtual {v7, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    invoke-virtual {p0, v7}, Lcom/car/cloud/CarCloudService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method reSendAlarmMsg()V
    .locals 5

    .prologue
    .line 1936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    .line 1937
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "alarm"

    const/16 v3, 0xa

    new-instance v4, Lcom/car/cloud/CarCloudService$11;

    invoke-direct {v4, p0}, Lcom/car/cloud/CarCloudService$11;-><init>(Lcom/car/cloud/CarCloudService;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/car/cloud/WebSocketUtil;->getUnsentMsgList(Ljava/lang/String;Ljava/lang/String;ILcom/car/cloud/WebSocketUtil$MsgListener;)V

    .line 1951
    return-void
.end method

.method declared-synchronized registerRemoteCallback(Lcom/car/common/ICarCloudCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/car/common/ICarCloudCallback;

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 177
    .local v0, "pid":Ljava/lang/Integer;
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

    .line 178
    if-eqz p1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    .end local v0    # "pid":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method sendWakeLockInfo2Server()V
    .locals 20

    .prologue
    .line 777
    const/16 v18, 0x2800

    :try_start_0
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 778
    .local v4, "bytes":[B
    const/16 v18, 0x2800

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 781
    .local v5, "bytes2":[B
    new-instance v7, Ljava/io/File;

    const-string v18, "/sys/kernel/debug/wakeup_sources"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    .local v7, "f":Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 783
    .local v11, "is":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13

    .line 784
    .local v13, "len":I
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 785
    const-wide/16 v18, 0x1f4

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    .line 787
    new-instance v8, Ljava/io/File;

    const-string v18, "/sys/kernel/debug/wakeup_sources"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    .local v8, "f2":Ljava/io/File;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 789
    .local v12, "is2":Ljava/io/FileInputStream;
    const/16 v18, 0x0

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v5, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    .line 790
    .local v14, "len2":I
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 792
    const-string v18, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/car/cloud/CarCloudService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    .line 793
    .local v17, "pm":Landroid/os/PowerManager;
    invoke-static/range {v17 .. v17}, Lcom/car/cloud/CarCloudService;->getWakeLockPackageName(Landroid/os/PowerManager;)Ljava/util/List;

    move-result-object v16

    .line 794
    .local v16, "packagenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v18, "CarSvc_CarCloudService"

    const-string v19, "These packages hold a wakelock:"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v2, 0x0

    .line 796
    .local v2, "addSize":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 797
    .local v15, "name":Ljava/lang/String;
    const-string v18, "CarSvc_CarCloudService"

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    add-int v2, v2, v18

    .line 799
    goto :goto_0

    .line 802
    .end local v15    # "name":Ljava/lang/String;
    :cond_0
    const v9, 0x574b4900

    .line 803
    .local v9, "head":I
    add-int v18, v13, v14

    add-int/lit8 v18, v18, 0x4

    add-int v18, v18, v2

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 804
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 805
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 806
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v5, v0, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 807
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 808
    .restart local v15    # "name":Ljava/lang/String;
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

    .line 811
    .end local v2    # "addSize":I
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v4    # "bytes":[B
    .end local v5    # "bytes2":[B
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "f2":Ljava/io/File;
    .end local v9    # "head":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "is":Ljava/io/FileInputStream;
    .end local v12    # "is2":Ljava/io/FileInputStream;
    .end local v13    # "len":I
    .end local v14    # "len2":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "packagenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v6

    .line 812
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 814
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 810
    .restart local v2    # "addSize":I
    .restart local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "bytes":[B
    .restart local v5    # "bytes2":[B
    .restart local v7    # "f":Ljava/io/File;
    .restart local v8    # "f2":Ljava/io/File;
    .restart local v9    # "head":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "is2":Ljava/io/FileInputStream;
    .restart local v13    # "len":I
    .restart local v14    # "len2":I
    .restart local v16    # "packagenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "pm":Landroid/os/PowerManager;
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
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 1343
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 1365
    :goto_0
    return-wide v0

    .line 1344
    :cond_1
    const-wide/16 v0, 0x0

    .line 1345
    .local v0, "aveTime":J
    const/16 v6, 0xa

    .line 1346
    .local v6, "retryTimes":I
    new-array v2, v6, [J

    .line 1347
    .local v2, "aveTimes":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 1348
    invoke-virtual {p0, p1}, Lcom/car/cloud/CarCloudService;->isEasyAccessed(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v2, v3

    .line 1347
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1350
    :cond_2
    const/4 v4, 0x0

    .local v4, "maxTimeIndex":I
    const/4 v5, 0x0

    .line 1352
    .local v5, "minTimeIndex":I
    const/4 v3, 0x1

    :goto_2
    if-ge v3, v6, :cond_5

    .line 1353
    aget-wide v8, v2, v3

    aget-wide v10, v2, v4

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    .line 1354
    move v4, v3

    .line 1355
    :cond_3
    aget-wide v8, v2, v3

    aget-wide v10, v2, v5

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 1356
    move v5, v3

    .line 1352
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1359
    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_7

    .line 1360
    if-eq v3, v4, :cond_6

    if-eq v3, v5, :cond_6

    .line 1361
    aget-wide v8, v2, v3

    add-long/2addr v0, v8

    .line 1359
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1363
    :cond_7
    const/16 v7, 0x8

    int-to-long v8, v7

    div-long/2addr v0, v8

    .line 1365
    goto :goto_0
.end method

.method testServers()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mLivingStreamMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1340
    :goto_0
    return-void

    .line 1314
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

    .prologue
    .line 1932
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/car/cloud/Type$MsgInfo;>;"
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/car/cloud/CarCloudService;->try2SendMsgAlarm(Ljava/util/List;Ljava/lang/String;J)V

    .line 1933
    return-void
.end method

.method try2SendMsgAlarm(Ljava/util/List;Ljava/lang/String;J)V
    .locals 29
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "relayid"    # J
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

    .prologue
    .line 1821
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/car/cloud/Type$MsgInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    .line 1822
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    .line 1823
    .local v16, "count":I
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 1824
    .local v27, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
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

    .line 1825
    .local v23, "keyWords":[Ljava/lang/String;
    const/16 v26, 0x1

    .line 1826
    .local v26, "ready2Send":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/car/cloud/Type$MsgInfo;

    .line 1827
    .local v25, "mi":Lcom/car/cloud/Type$MsgInfo;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/car/cloud/CarCloudService;->keepAwake(Z)V

    .line 1828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    move-object/from16 v0, v25

    iput-wide v8, v0, Lcom/car/cloud/Type$MsgInfo;->sendTime:J

    .line 1829
    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    .line 1830
    .local v15, "content":Ljava/lang/String;
    const/16 v26, 0x1

    .line 1832
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1833
    .local v21, "jso":Lorg/json/JSONObject;
    move-object/from16 v4, v23

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    aget-object v22, v4, v20

    .line 1834
    .local v22, "key":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1835
    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1836
    .local v6, "path":Ljava/lang/String;
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

    .line 1838
    const-string v5, "/sdcard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1839
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1841
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

    .line 1842
    .local v7, "objKey":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1843
    .local v18, "f":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1844
    const-string v8, "alarm"

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v28

    .line 1846
    .local v28, "url":Ljava/lang/String;
    if-nez v28, :cond_0

    .line 1847
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1848
    const-string v8, "alarm"

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v28

    .line 1851
    :cond_0
    if-nez v28, :cond_1

    .line 1852
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1853
    const-string v8, "alarm"

    move-object/from16 v5, p0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v28

    .line 1856
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

    .line 1857
    if-eqz v28, :cond_2

    .line 1858
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1861
    invoke-virtual/range {p0 .. p0}, Lcom/car/cloud/CarCloudService;->filesClean()V

    .line 1874
    .end local v7    # "objKey":Ljava/lang/String;
    .end local v18    # "f":Ljava/io/File;
    .end local v28    # "url":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    .line 1833
    .end local v6    # "path":Ljava/lang/String;
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 1868
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "objKey":Ljava/lang/String;
    .restart local v18    # "f":Ljava/io/File;
    :cond_4
    const-string v5, "CarSvc_CarCloudService"

    const-string v8, "File missed?"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const-string v5, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1878
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "objKey":Ljava/lang/String;
    .end local v18    # "f":Ljava/io/File;
    .end local v20    # "i$":I
    .end local v21    # "jso":Lorg/json/JSONObject;
    .end local v22    # "key":Ljava/lang/String;
    .end local v24    # "len$":I
    :catch_0
    move-exception v17

    .line 1879
    .local v17, "e":Lorg/json/JSONException;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->printStackTrace()V

    .line 1882
    .end local v17    # "e":Lorg/json/JSONException;
    :cond_5
    if-eqz v26, :cond_8

    .line 1883
    if-eqz p2, :cond_6

    .line 1884
    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v8

    const-string v12, "capd"

    const/16 v13, 0x64

    const/4 v14, 0x0

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v8 .. v14}, Lcom/car/cloud/WebSocketUtil;->notifyUserCapturing(Ljava/lang/String;JLjava/lang/String;ILcom/car/cloud/WebSocketUtil$ReplyHandler;)V

    .line 1886
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

    .line 1872
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v20    # "i$":I
    .restart local v21    # "jso":Lorg/json/JSONObject;
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v24    # "len$":I
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

    .line 1921
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v21    # "jso":Lorg/json/JSONObject;
    .end local v22    # "key":Ljava/lang/String;
    .end local v24    # "len$":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x69

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/cloud/CarCloudService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x69

    const-wide/16 v10, 0xbb8

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1928
    .end local v15    # "content":Ljava/lang/String;
    .end local v16    # "count":I
    .end local v23    # "keyWords":[Ljava/lang/String;
    .end local v25    # "mi":Lcom/car/cloud/Type$MsgInfo;
    .end local v26    # "ready2Send":Z
    .end local v27    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    return-void
.end method

.method try2Upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "keyString"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 751
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
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "keyString"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "relayid"    # J

    .prologue
    .line 549
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

    .line 550
    new-instance v13, Lcom/car/cloud/CarCloudService$MyLock;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/car/cloud/CarCloudService$MyLock;-><init>(Lcom/car/cloud/CarCloudService;)V

    .line 551
    .local v13, "uploadLock":Lcom/car/cloud/CarCloudService$MyLock;
    const/4 v5, 0x0

    iput-boolean v5, v13, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    .line 553
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

    .line 555
    .local v15, "endpoint":Ljava/lang/String;
    const-string v5, "gps"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    sget-object v15, Lcom/car/cloud/CarCloudService;->mGpsOssServer:Ljava/lang/String;

    .line 559
    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x2e

    invoke-virtual {v15, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 560
    .local v11, "bucket":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 564
    new-instance v4, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    sget-object v5, Lcom/car/cloud/CarCloudService;->mOSSAccessKeyID:Ljava/lang/String;

    sget-object v6, Lcom/car/cloud/CarCloudService;->mOSSAccessKeySecret:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .local v4, "credentialProvider":Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
    new-instance v10, Lcom/alibaba/sdk/android/oss/OSSClient;

    invoke-virtual/range {p0 .. p0}, Lcom/car/cloud/CarCloudService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v10, v5, v15, v4}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    .line 616
    .local v10, "oss":Lcom/alibaba/sdk/android/oss/OSS;
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

    .line 619
    .local v17, "recordDirectory":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 622
    .local v16, "recordDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 623
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

    .line 627
    :cond_1
    new-instance v18, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .local v18, "request":Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    new-instance v5, Lcom/car/cloud/MyResumableUpProgHandler;

    move-object/from16 v0, p4

    move-wide/from16 v1, p5

    invoke-direct {v5, v0, v1, v2}, Lcom/car/cloud/MyResumableUpProgHandler;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    .line 633
    new-instance v5, Lcom/car/cloud/CarCloudService$3;

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v12, p2

    invoke-direct/range {v5 .. v13}, Lcom/car/cloud/CarCloudService$3;-><init>(Lcom/car/cloud/CarCloudService;Ljava/lang/String;JLcom/alibaba/sdk/android/oss/OSS;Ljava/lang/String;Ljava/lang/String;Lcom/car/cloud/CarCloudService$MyLock;)V

    move-object/from16 v0, v18

    invoke-interface {v10, v0, v5}, Lcom/alibaba/sdk/android/oss/OSS;->asyncResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v19

    .line 678
    .local v19, "resumableTask":Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    monitor-enter v13

    .line 680
    :try_start_0
    iget-boolean v5, v13, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    if-nez v5, :cond_2

    .line 681
    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    iget-object v5, v13, Lcom/car/cloud/CarCloudService$MyLock;->validUrl:Ljava/lang/String;

    return-object v5

    .line 682
    :catch_0
    move-exception v14

    .line 683
    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 685
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method try2UploadQiniu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 11
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "keyString"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "relayid"    # J

    .prologue
    .line 691
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

    .line 692
    new-instance v3, Lcom/car/cloud/CarCloudService$MyLock;

    invoke-direct {v3, p0}, Lcom/car/cloud/CarCloudService$MyLock;-><init>(Lcom/car/cloud/CarCloudService;)V

    .line 693
    .local v3, "uploadLock":Lcom/car/cloud/CarCloudService$MyLock;
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    .line 694
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

    .line 738
    monitor-enter v3

    .line 740
    :try_start_0
    iget-boolean v1, v3, Lcom/car/cloud/CarCloudService$MyLock;->isNotify:Z

    if-nez v1, :cond_0

    .line 741
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    iget-object v1, v3, Lcom/car/cloud/CarCloudService$MyLock;->validUrl:Ljava/lang/String;

    return-object v1

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 745
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method declared-synchronized unregisterRemoteCallback(Lcom/car/common/ICarCloudCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/car/common/ICarCloudCallback;

    .prologue
    .line 185
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudService;->mRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
