.class public final Lcom/qiniu/android/dns/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkReceiver.java"


# static fields
.field private static final PREFERRED_APN_URI:Landroid/net/Uri;

.field private static mdnsManager:Lcom/qiniu/android/dns/DnsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/dns/NetworkReceiver;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createNetInfo(Landroid/net/NetworkInfo;Landroid/content/Context;)Lcom/qiniu/android/dns/NetworkInfo;
    .locals 13

    const/4 v12, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    sget-object v0, Lcom/qiniu/android/dns/NetworkInfo;->noNetwork:Lcom/qiniu/android/dns/NetworkInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v12, :cond_2

    sget-object v8, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->WIFI:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    const/4 v10, 0x0

    :cond_1
    :goto_1
    new-instance v0, Lcom/qiniu/android/dns/NetworkInfo;

    invoke-direct {v0, v8, v10}, Lcom/qiniu/android/dns/NetworkInfo;-><init>(Lcom/qiniu/android/dns/NetworkInfo$NetSatus;I)V

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/qiniu/android/dns/NetworkInfo$NetSatus;->MOBILE:Lcom/qiniu/android/dns/NetworkInfo$NetSatus;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/qiniu/android/dns/NetworkReceiver;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "user"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ctwap"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ctnet"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v10, 0x1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eq v10, v12, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "cmwap"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cmnet"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v10, 0x3

    goto :goto_1

    :cond_6
    const-string v0, "3gnet"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "uninet"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "3gwap"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "uniwap"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_7
    const/4 v10, 0x2

    goto/16 :goto_1
.end method

.method public static setDnsManager(Lcom/qiniu/android/dns/DnsManager;)V
    .locals 0

    sput-object p0, Lcom/qiniu/android/dns/NetworkReceiver;->mdnsManager:Lcom/qiniu/android/dns/DnsManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object v3, Lcom/qiniu/android/dns/NetworkReceiver;->mdnsManager:Lcom/qiniu/android/dns/DnsManager;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qiniu/android/dns/NetworkReceiver;->createNetInfo(Landroid/net/NetworkInfo;Landroid/content/Context;)Lcom/qiniu/android/dns/NetworkInfo;

    move-result-object v1

    sget-object v3, Lcom/qiniu/android/dns/NetworkReceiver;->mdnsManager:Lcom/qiniu/android/dns/DnsManager;

    invoke-virtual {v3, v1}, Lcom/qiniu/android/dns/DnsManager;->onNetworkChange(Lcom/qiniu/android/dns/NetworkInfo;)V

    goto :goto_0
.end method
