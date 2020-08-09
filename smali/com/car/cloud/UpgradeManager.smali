.class public Lcom/car/cloud/UpgradeManager;
.super Ljava/lang/Object;
.source "UpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;
    }
.end annotation


# static fields
.field private static final CAR_MANUFACTORY:Ljava/lang/String;

.field private static final CAR_MODELTYPE:Ljava/lang/String;

.field private static final CAR_SERIALNO:Ljava/lang/String;

.field private static final CAR_VERSION:Ljava/lang/String;

.field private static final KEY_HISTORY_TIP:Ljava/lang/String; = "history_tip"

.field private static final KEY_IGNORE_VERSION:Ljava/lang/String; = "ignore_version"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "http://car.carassist.cn/upgrade/"

.field private static final TAG:Ljava/lang/String; = "CarCloud_UpgradeManager"

.field private static sIns:Lcom/car/cloud/UpgradeManager;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.manufacturer"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/UpgradeManager;->CAR_MANUFACTORY:Ljava/lang/String;

    const-string v0, "ro.product.typeid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/UpgradeManager;->CAR_MODELTYPE:Ljava/lang/String;

    const-string v0, "ro.product.fw_ver"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/UpgradeManager;->CAR_VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/cloud/UpgradeManager;->CAR_SERIALNO:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/cloud/UpgradeManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/cloud/UpgradeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/car/cloud/UpgradeManager;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/UpgradeManager;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/car/cloud/UpgradeManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/UpgradeManager;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/car/cloud/UpgradeManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/UpgradeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/cloud/UpgradeManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/UpgradeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/cloud/UpgradeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/cloud/UpgradeManager;->showLatestVersion()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/UpgradeManager;->CAR_SERIALNO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/cloud/UpgradeManager;->CAR_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/cloud/UpgradeManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/car/cloud/UpgradeManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/car/cloud/UpgradeManager;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/car/cloud/UpgradeManager;->getHistoryTip(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/cloud/UpgradeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/car/cloud/UpgradeManager;->showUpgradeUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v5, "\\."

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v5, v6, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gt v5, v6, :cond_0

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gt v5, v6, :cond_0

    :goto_1
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v3, "CarCloud_UpgradeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/car/cloud/UpgradeManager;

    invoke-direct {v0, p0, p1}, Lcom/car/cloud/UpgradeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/car/cloud/UpgradeManager;->sIns:Lcom/car/cloud/UpgradeManager;

    return-void
.end method

.method private getHistoryTip(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/car/cloud/UpgradeManager;->CAR_VERSION:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/car/cloud/UpgradeManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static instance()Lcom/car/cloud/UpgradeManager;
    .locals 1

    sget-object v0, Lcom/car/cloud/UpgradeManager;->sIns:Lcom/car/cloud/UpgradeManager;

    return-object v0
.end method

.method private showLatestVersion()V
    .locals 3

    invoke-virtual {p0}, Lcom/car/cloud/UpgradeManager;->showUpgradeUI()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/cloud/UpgradeManager;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/cloud/UpgradeManager;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/car/cloud/UpgradeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000a

    new-instance v2, Lcom/car/cloud/UpgradeManager$2;

    invoke-direct {v2, p0}, Lcom/car/cloud/UpgradeManager$2;-><init>(Lcom/car/cloud/UpgradeManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/car/cloud/UpgradeManager;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/car/cloud/UpgradeManager;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/car/cloud/UpgradeManager;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showUpgradeUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/UpgradeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/cloud/UpgradeManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/car/cloud/UpgradeManager$1;-><init>(Lcom/car/cloud/UpgradeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public checkVersion(Z)V
    .locals 4

    sget-object v1, Lcom/car/cloud/UpgradeManager;->CAR_MANUFACTORY:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/car/cloud/UpgradeManager;->CAR_MODELTYPE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/car/cloud/UpgradeManager;->CAR_VERSION:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://car.carassist.cn/upgrade/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/car/cloud/UpgradeManager;->CAR_MANUFACTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/car/cloud/UpgradeManager;->CAR_MODELTYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarCloud_UpgradeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/cloud/HttpRequestManager;->instance()Lcom/car/cloud/HttpRequestManager;

    move-result-object v1

    new-instance v2, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;

    invoke-direct {v2, p0, p1}, Lcom/car/cloud/UpgradeManager$MyHttpResponseListener;-><init>(Lcom/car/cloud/UpgradeManager;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/car/cloud/HttpRequestManager;->requestHttp(Ljava/lang/String;Lcom/car/cloud/HttpRequestManager$OnHttpResponseListener;)V

    goto :goto_0
.end method

.method public showUpgradeUI()Z
    .locals 8

    const/4 v5, 0x0

    const-string v6, "CarCloud_UpgradeManager"

    const-string v7, "showUpgradeUI"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/car/cloud/UpgradeManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "version"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "url"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "history_tip"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v6, "ignore_version"

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/car/cloud/UpgradeManager;->CAR_VERSION:Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lcom/car/cloud/UpgradeManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v4, v3, v0}, Lcom/car/cloud/UpgradeManager;->showUpgradeUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0
.end method
