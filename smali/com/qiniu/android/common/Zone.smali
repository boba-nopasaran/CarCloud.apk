.class public final Lcom/qiniu/android/common/Zone;
.super Ljava/lang/Object;
.source "Zone.java"


# static fields
.field public static final zone0:Lcom/qiniu/android/common/Zone;

.field public static final zone1:Lcom/qiniu/android/common/Zone;

.field public static final zone2:Lcom/qiniu/android/common/Zone;


# instance fields
.field public final up:Lcom/qiniu/android/common/ServiceAddress;

.field public final upBackup:Lcom/qiniu/android/common/ServiceAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ro.market.area"

    const-string v1, "china"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "upload.qiniu.com"

    const-string v1, "up.qiniu.com"

    const-string v2, "183.136.139.10"

    const-string v3, "115.231.182.136"

    invoke-static {v0, v1, v2, v3}, Lcom/qiniu/android/common/Zone;->createZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/Zone;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/qiniu/android/common/Zone;->zone0:Lcom/qiniu/android/common/Zone;

    const-string v0, "upload-z1.qiniu.com"

    const-string v1, "up-z1.qiniu.com"

    const-string v2, "106.38.227.27"

    const-string v3, "106.38.227.28"

    invoke-static {v0, v1, v2, v3}, Lcom/qiniu/android/common/Zone;->createZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/Zone;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/common/Zone;->zone1:Lcom/qiniu/android/common/Zone;

    const-string v0, "upload-na0.qiniu.com"

    const-string v1, "up-na0.qiniu.com"

    const-string v2, "183.136.139.10"

    const-string v3, "115.231.182.136"

    invoke-static {v0, v1, v2, v3}, Lcom/qiniu/android/common/Zone;->createZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/Zone;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/common/Zone;->zone2:Lcom/qiniu/android/common/Zone;

    return-void

    :cond_0
    const-string v0, "upload-na0.qiniu.com"

    const-string v1, "up-na0.qiniu.com"

    const-string v2, "183.136.139.10"

    const-string v3, "115.231.182.136"

    invoke-static {v0, v1, v2, v3}, Lcom/qiniu/android/common/Zone;->createZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/Zone;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/qiniu/android/common/ServiceAddress;Lcom/qiniu/android/common/ServiceAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/common/Zone;->up:Lcom/qiniu/android/common/ServiceAddress;

    iput-object p2, p0, Lcom/qiniu/android/common/Zone;->upBackup:Lcom/qiniu/android/common/ServiceAddress;

    return-void
.end method

.method public static createDefaultZone()Lcom/qiniu/android/common/Zone;
    .locals 4

    const-string v0, "upload.qiniu.com"

    const-string v1, "up.qiniu.com"

    const-string v2, "183.136.139.10"

    const-string v3, "115.231.182.136"

    invoke-static {v0, v1, v2, v3}, Lcom/qiniu/android/common/Zone;->createZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/Zone;

    move-result-object v0

    return-object v0
.end method

.method private static createZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/Zone;
    .locals 5

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    new-instance v0, Lcom/qiniu/android/common/ServiceAddress;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/qiniu/android/common/ServiceAddress;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/qiniu/android/common/ServiceAddress;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/qiniu/android/common/ServiceAddress;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v3, Lcom/qiniu/android/common/Zone;

    invoke-direct {v3, v0, v1}, Lcom/qiniu/android/common/Zone;-><init>(Lcom/qiniu/android/common/ServiceAddress;Lcom/qiniu/android/common/ServiceAddress;)V

    return-object v3
.end method
