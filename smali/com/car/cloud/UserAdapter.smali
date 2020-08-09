.class public Lcom/car/cloud/UserAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserAdapter.java"

# interfaces
.implements Lcom/car/common/ThumbnailCacheManager$ThumbnailCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/cloud/UserAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/cloud/Type$UserInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/car/cloud/UserAdapter;->mUserStatus:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/car/cloud/UserAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/car/cloud/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/car/cloud/UserAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/car/cloud/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/car/cloud/UserAdapter;->mLastMessage:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/car/cloud/UserAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/cloud/UserAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/UserAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public clearUserStatus()V
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/UserAdapter;->mUserStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/car/cloud/UserAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/cloud/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/car/cloud/UserAdapter;->mUserInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/cloud/Type$UserInfo;

    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/car/cloud/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030005

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/cloud/UserAdapter$ViewHolder;

    if-nez v1, :cond_1

    new-instance v1, Lcom/car/cloud/UserAdapter$ViewHolder;

    invoke-direct {v1, p0, v8}, Lcom/car/cloud/UserAdapter$ViewHolder;-><init>(Lcom/car/cloud/UserAdapter;Lcom/car/cloud/UserAdapter$1;)V

    const v6, 0x7f090014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    const v6, 0x7f090013

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mHeadImage:Landroid/widget/ImageView;

    const v6, 0x7f090015

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mMessageView:Landroid/widget/TextView;

    const v6, 0x7f090016

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    new-instance v7, Lcom/car/cloud/UserAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/car/cloud/UserAdapter$1;-><init>(Lcom/car/cloud/UserAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    iget-object v6, p0, Lcom/car/cloud/UserAdapter;->mUserStatus:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_5

    iget-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/cloud/UserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06001e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v6, p0, Lcom/car/cloud/UserAdapter;->mLastMessage:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v0, 0x0

    iget-object v6, v2, Lcom/car/cloud/Type$UserInfo;->headImgUrl:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/car/common/ThumbnailCacheManager;->instance()Lcom/car/common/ThumbnailCacheManager;

    move-result-object v6

    iget-object v7, v2, Lcom/car/cloud/Type$UserInfo;->headImgUrl:Ljava/lang/String;

    iget-object v8, v2, Lcom/car/cloud/Type$UserInfo;->headImgUrl:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/car/common/ThumbnailCacheManager;->getThumbnail(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mHeadImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    return-object p2

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    iget-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/car/cloud/UserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v6, v1, Lcom/car/cloud/UserAdapter$ViewHolder;->mMessageView:Landroid/widget/TextView;

    const v7, 0x7f060006

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public onThumbnailCacheDone(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Lcom/car/cloud/UserAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setUserStatus(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/car/cloud/UserAdapter;->mUserStatus:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/car/cloud/UserAdapter;->notifyDataSetChanged()V

    return-void
.end method
