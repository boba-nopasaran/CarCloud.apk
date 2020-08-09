.class public Lcom/amap/api/navi/view/TrafficButtonView;
.super Landroid/widget/ImageView;
.source "TrafficButtonView.java"


# instance fields
.field private mIsTrafficOpen:Z

.field private trafficCloseBitmap:Landroid/graphics/Bitmap;

.field private trafficOpenBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/amap/api/navi/view/TrafficButtonView;->initBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/amap/api/navi/view/TrafficButtonView;->initBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/amap/api/navi/view/TrafficButtonView;->initBackground()V

    return-void
.end method

.method private initBackground()V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020054

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficOpenBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/amap/api/col/dt;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x47020053

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficCloseBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/TrafficButtonView;->setIsTrafficOpen(Z)V

    return-void
.end method


# virtual methods
.method public getIsTrafficOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->mIsTrafficOpen:Z

    return v0
.end method

.method public reDrawBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficOpenBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficCloseBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->mIsTrafficOpen:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/TrafficButtonView;->setIsTrafficOpen(Z)V

    goto :goto_0
.end method

.method public recycleResource()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficCloseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficCloseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficCloseBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficOpenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficOpenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficOpenBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public setIsTrafficOpen(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/navi/view/TrafficButtonView;->mIsTrafficOpen:Z

    iget-boolean v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->mIsTrafficOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficOpenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/TrafficButtonView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/navi/view/TrafficButtonView;->trafficCloseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/amap/api/navi/view/TrafficButtonView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
