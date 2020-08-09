.class public Lcom/car/cloud/CarCloudGPSDataUploadThread;
.super Ljava/lang/Object;
.source "CarCloudGPSDataUploadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;,
        Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;
    }
.end annotation


# static fields
.field private static final MSG_BIND_SERVICE:I = 0x2718

.field private static final MSG_GPS_SEND_CURRENT_DATA:I = 0x2713

.field private static final MSG_GPS_SEND_HISTORY_DATA:I = 0x2714

.field private static final MSG_GPS_SEND_HISTORY_DATA_STATUS:I = 0x2715

.field private static final MSG_GPS_SEND_TODAY_DATA:I = 0x2712

.field private static final MSG_GPS_SET_LAST_UPDATETIME:I = 0x2711

.field private static final MSG_GPS_SET_UPDATE_INTERVAL:I = 0x2710

.field private static final MSG_GPS_START:I = 0x2716

.field private static final MSG_GPS_STOP:I = 0x2717


# instance fields
.field private GPS_HISTORY_HEADER_FORMAT:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGPSService:Lcom/car/gpsservice/ICarGPSService;

.field private mGPSServiceConnection:Landroid/content/ServiceConnection;

.field private mGPSUpdateInterval:J

.field private mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

.field private mGPSWorkThread:Landroid/os/HandlerThread;

.field private mLastSendGPSDataEndTime:I

.field private mLastSendGPSZipFile:Ljava/lang/String;

.field private mLatestGPSInfo:[I

.field private mNoLastGPSZipFile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x2718

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarSvc_GPSUploadThread"

    iput-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    iput v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSDataEndTime:I

    iput-object v2, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSService:Lcom/car/gpsservice/ICarGPSService;

    iput-object v2, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mContext:Landroid/content/Context;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLatestGPSInfo:[I

    const-string v0, "gpshis{\"day\":\"%s\"}\u0000"

    iput-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->GPS_HISTORY_HEADER_FORMAT:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSUpdateInterval:J

    iput-object v2, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    iput v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mNoLastGPSZipFile:I

    iput-object v2, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    new-instance v0, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;

    invoke-direct {v0, p0}, Lcom/car/cloud/CarCloudGPSDataUploadThread$1;-><init>(Lcom/car/cloud/CarCloudGPSDataUploadThread;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GPS Worker CarCloud"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;-><init>(Lcom/car/cloud/CarCloudGPSDataUploadThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    invoke-virtual {v0, v4}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    invoke-virtual {v0, v4}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/car/cloud/CarCloudGPSDataUploadThread;Lcom/car/gpsservice/ICarGPSService;)Lcom/car/gpsservice/ICarGPSService;
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSService:Lcom/car/gpsservice/ICarGPSService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/cloud/CarCloudGPSDataUploadThread;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/car/cloud/CarCloudGPSDataUploadThread;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSUpdateInterval:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/car/cloud/CarCloudGPSDataUploadThread;)I
    .locals 1

    iget v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSDataEndTime:I

    return v0
.end method

.method static synthetic access$402(Lcom/car/cloud/CarCloudGPSDataUploadThread;I)I
    .locals 0

    iput p1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSDataEndTime:I

    return p1
.end method

.method static synthetic access$500(Lcom/car/cloud/CarCloudGPSDataUploadThread;Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->sendTodayGPSCompressData(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/car/cloud/CarCloudGPSDataUploadThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->sendCurrentGPSData()V

    return-void
.end method

.method static synthetic access$700(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/car/cloud/CarCloudGPSDataUploadThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/car/cloud/CarCloudGPSDataUploadThread;)I
    .locals 1

    iget v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mNoLastGPSZipFile:I

    return v0
.end method

.method static synthetic access$900(Lcom/car/cloud/CarCloudGPSDataUploadThread;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private byteToInt(BBBBZ)I
    .locals 5

    const/high16 v4, 0xff0000

    const v3, 0xff00

    const/high16 v2, -0x1000000

    if-eqz p5, :cond_0

    shl-int/lit8 v1, p4, 0x18

    and-int/2addr v1, v2

    shl-int/lit8 v2, p3, 0x10

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x8

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    :goto_0
    return v0

    :cond_0
    shl-int/lit8 v1, p1, 0x18

    and-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x10

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    shl-int/lit8 v2, p3, 0x8

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v2, p4, 0x0

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    goto :goto_0
.end method

.method private compressGPSFile(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 9

    :try_start_0
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v6, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v7, 0x400

    new-array v2, v7, [B

    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v0, v2, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCurrentGPSData()V
    .locals 8

    iget-object v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSService:Lcom/car/gpsservice/ICarGPSService;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSService:Lcom/car/gpsservice/ICarGPSService;

    invoke-interface {v3}, Lcom/car/gpsservice/ICarGPSService;->getCurrentGPSInfo()[I

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentGPSInfo: cur data length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLatestGPSInfo:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLatestGPSInfo:[I

    const/4 v4, 0x0

    aget v2, v3, v4

    :cond_2
    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSDataEndTime:I

    iget v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSDataEndTime:I

    if-eq v3, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->sendGPSData([I)V

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLatestGPSInfo:[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentGPSInfo Can\'t get Current GPS Info. mGPSUpdateInterval = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSUpdateInterval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private sendTodayGPSCompressData(Ljava/nio/ByteBuffer;)I
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSService:Lcom/car/gpsservice/ICarGPSService;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSService:Lcom/car/gpsservice/ICarGPSService;

    invoke-interface {v4}, Lcom/car/gpsservice/ICarGPSService;->getCurrentGPSFileName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    const-string v5, "Server Request today\'s GPS data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-direct {p0, v1, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->compressGPSFile(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    iget-object v4, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compress Finished, size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/car/cloud/WebSocketUtil;->sendRawBinary([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method deleteLastSendGPSFile(Ljava/lang/String;I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    const/16 v2, 0x2715

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendMessage(Landroid/os/Message;)Z

    return v3
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method requestTodayGPSData(Ljava/nio/ByteBuffer;)I
    .locals 3

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2, p1}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    return v1
.end method

.method sendGPSData([I)V
    .locals 8

    const/4 v7, 0x4

    array-length v3, p1

    if-ge v3, v7, :cond_0

    iget-object v4, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x4

    iget-object v5, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLatestGPSInfo:[I

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([II[III)V

    const v1, 0x47505300    # 53331.0f

    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-static {}, Lcom/car/cloud/WebSocketUtil;->getInstance()Lcom/car/cloud/WebSocketUtil;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/car/cloud/WebSocketUtil;->sendRawBinary([B)V

    goto :goto_0
.end method

.method sendHistoryGPSCompressData()V
    .locals 42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSService:Lcom/car/gpsservice/ICarGPSService;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSService:Lcom/car/gpsservice/ICarGPSService;

    invoke-interface {v2}, Lcom/car/gpsservice/ICarGPSService;->getHistoryGPSZipFileName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v37, v2, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v3, ".gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    move/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v15

    :try_start_1
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v10, v2, [B

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/io/FileInputStream;->read([B)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->unZip([B)[B

    move-result-object v13

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    if-eqz v13, :cond_2

    array-length v2, v13

    if-eqz v2, :cond_2

    array-length v2, v13

    rem-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    const-string v3, "wrong GPS data, not enough data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->deleteLastSendGPSFile(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_0

    :catch_0
    move-exception v19

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_4
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v37, v2, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v3, ".gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    move/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "ro.market.area"

    const-string v3, "china"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "china"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v32, 0x1

    :goto_2
    const/16 v18, 0x0

    if-nez v32, :cond_5

    const-string v2, "upload.gps.to.oss"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/car/common/OEM;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v6, "gps"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/car/cloud/CarCloudService;->try2UploadOss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v18

    :goto_3
    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS day :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CDN received OK, key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->deleteLastSendGPSFile(Ljava/lang/String;I)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mNoLastGPSZipFile:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :try_start_4
    array-length v0, v13

    move/from16 v23, v0

    const/16 v33, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v30, 0x0

    const/16 v28, 0x0

    const-wide/16 v16, 0x0

    const/16 v24, 0x0

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    add-int/lit8 v2, v24, 0x4

    aget-byte v3, v13, v2

    add-int/lit8 v2, v24, 0x5

    aget-byte v4, v13, v2

    add-int/lit8 v2, v24, 0x6

    aget-byte v5, v13, v2

    add-int/lit8 v2, v24, 0x7

    aget-byte v6, v13, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->byteToInt(BBBBZ)I

    move-result v25

    add-int/lit8 v2, v24, 0x8

    aget-byte v3, v13, v2

    add-int/lit8 v2, v24, 0x9

    aget-byte v4, v13, v2

    add-int/lit8 v2, v24, 0xa

    aget-byte v5, v13, v2

    add-int/lit8 v2, v24, 0xb

    aget-byte v6, v13, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->byteToInt(BBBBZ)I

    move-result v26

    const/16 v2, -0x1770

    move/from16 v0, v25

    if-eq v0, v2, :cond_7

    const/16 v2, -0x1964

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    :cond_7
    :goto_5
    add-int/lit8 v24, v24, 0x10

    goto :goto_4

    :cond_8
    new-instance v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;

    invoke-direct {v12}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;-><init>()V

    add-int/lit8 v2, v24, 0x0

    aget-byte v3, v13, v2

    add-int/lit8 v2, v24, 0x1

    aget-byte v4, v13, v2

    add-int/lit8 v2, v24, 0x2

    aget-byte v5, v13, v2

    add-int/lit8 v2, v24, 0x3

    aget-byte v6, v13, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->byteToInt(BBBBZ)I

    move-result v2

    iput v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->time:I

    move/from16 v0, v25

    int-to-double v2, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v6

    iput-wide v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->latitude:D

    move/from16 v0, v26

    int-to-double v2, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v6

    iput-wide v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->longitude:D

    add-int/lit8 v2, v24, 0xc

    aget-byte v3, v13, v2

    add-int/lit8 v2, v24, 0xd

    aget-byte v4, v13, v2

    add-int/lit8 v2, v24, 0xe

    aget-byte v5, v13, v2

    add-int/lit8 v2, v24, 0xf

    aget-byte v6, v13, v2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->byteToInt(BBBBZ)I

    move-result v21

    ushr-int/lit8 v2, v21, 0x1e

    iput v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->coordType:I

    shl-int/lit8 v2, v21, 0x2

    and-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x12

    iput v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->altitude:I

    const v2, 0xffff

    and-int v2, v2, v21

    ushr-int/lit8 v2, v2, 0x7

    iput v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->angle:I

    and-int/lit8 v2, v21, 0x7f

    iput v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->speed:I

    iget-wide v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->latitude:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-nez v2, :cond_9

    iget-wide v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->longitude:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_7

    :cond_9
    iget v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->time:I

    if-lez v2, :cond_7

    const-wide/16 v2, 0x0

    cmp-long v2, v30, v2

    if-nez v2, :cond_a

    iget v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->time:I

    int-to-long v0, v2

    move-wide/from16 v30, v0

    :cond_a
    iget v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->time:I

    int-to-long v2, v2

    sub-long v2, v2, v30

    const-wide/16 v6, 0x3c

    cmp-long v2, v2, v6

    if-ltz v2, :cond_c

    iget v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->time:I

    int-to-long v0, v2

    move-wide/from16 v30, v0

    :goto_6
    if-eqz v33, :cond_d

    move-object/from16 v0, v33

    iget-wide v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->latitude:D

    iget-wide v6, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->latitude:D

    cmpl-double v2, v2, v6

    if-nez v2, :cond_d

    move-object/from16 v0, v33

    iget-wide v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->longitude:D

    iget-wide v6, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->longitude:D

    cmpl-double v2, v2, v6

    if-nez v2, :cond_d

    :cond_b
    :goto_7
    move-object/from16 v33, v12

    goto/16 :goto_5

    :cond_c
    iget v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->time:I

    int-to-long v2, v2

    sub-long v2, v2, v30

    add-long v38, v38, v2

    iget v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->time:I

    int-to-long v0, v2

    move-wide/from16 v30, v0

    goto :goto_6

    :cond_d
    iget v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->coordType:I

    if-nez v2, :cond_b

    new-instance v11, Lcom/amap/api/maps/CoordinateConverter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v11, v2}, Lcom/amap/api/maps/CoordinateConverter;->from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->latitude:D

    iget-wide v8, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->longitude:D

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v11, v2}, Lcom/amap/api/maps/CoordinateConverter;->coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;

    invoke-virtual {v11}, Lcom/amap/api/maps/CoordinateConverter;->convert()Lcom/amap/api/maps/model/LatLng;

    move-result-object v29

    move-object/from16 v0, v29

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iput-wide v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->latitude:D

    move-object/from16 v0, v29

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iput-wide v2, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->longitude:D

    if-nez v28, :cond_e

    move-object/from16 v28, v12

    :cond_e
    move-wide/from16 v0, v16

    long-to-float v2, v0

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->latitude:D

    move-object/from16 v0, v28

    iget-wide v8, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->longitude:D

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->latitude:D

    iget-wide v8, v12, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSData;->longitude:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v3, v4}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v3

    add-float/2addr v2, v3

    float-to-long v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v28, v12

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v14, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timecost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v38

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.carassist.cn/devicestat/drive?sn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.device.id"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&date="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&distance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&timecost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v38

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/car/cloud/HttpRequestManager;->requestHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-nez v35, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    const-string v3, "requestHttp failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->deleteLastSendGPSFile(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    :catch_2
    move-exception v19

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    :catch_3
    move-exception v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v37, v2, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v3, ".gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    move/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->deleteLastSendGPSFile(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_10
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestHttp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    new-instance v40, Lorg/json/JSONTokener;

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    new-instance v27, Lorg/json/JSONObject;

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v2, "ret"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v36

    if-eqz v36, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->deleteLastSendGPSFile(Ljava/lang/String;I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    :catch_4
    move-exception v19

    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->deleteLastSendGPSFile(Ljava/lang/String;I)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v37, v2, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v3, ".gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    move/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->deleteLastSendGPSFile(Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_11
    const/16 v32, 0x0

    goto/16 :goto_2

    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/car/cloud/CarCloudService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mLastSendGPSZipFile:Ljava/lang/String;

    const-string v6, "gps"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/car/cloud/CarCloudService;->try2UploadQiniu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS day :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CDN received Failed, key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread;->deleteLastSendGPSFile(Ljava/lang/String;I)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mNoLastGPSZipFile:I

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    const-string v3, "No History GPS File Exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mNoLastGPSZipFile:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0
.end method

.method setGPSLastUpdateTime(I)V
    .locals 4

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    const/16 v2, 0x2711

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setGPSUpdateInterval(I)V
    .locals 4

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    const/16 v2, 0x2710

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method startSendGPSData()V
    .locals 3

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    const/16 v2, 0x2716

    invoke-virtual {v1, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method stopSendGPSData()V
    .locals 3

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    const/16 v2, 0x2717

    invoke-virtual {v1, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unZip([B)[B
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v8, Ljava/util/zip/ZipInputStream;

    invoke-direct {v8, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    new-array v4, v9, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v7, -0x1

    const/4 v5, 0x0

    :goto_0
    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v8, v4, v9, v10}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    const/16 v9, 0x64

    if-le v5, v9, :cond_1

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_1
    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v9, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unZip error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public uploadGpsZip()V
    .locals 3

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    const/16 v2, 0x2714

    invoke-virtual {v1, v2}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/car/cloud/CarCloudGPSDataUploadThread;->mGPSWorkHandler:Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;

    invoke-virtual {v1, v0}, Lcom/car/cloud/CarCloudGPSDataUploadThread$GPSHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
