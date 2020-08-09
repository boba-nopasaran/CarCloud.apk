.class public final Lcom/qiniu/android/http/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# instance fields
.field public final hostAddress:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:I

.field public final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/http/Proxy;->hostAddress:Ljava/lang/String;

    iput p2, p0, Lcom/qiniu/android/http/Proxy;->port:I

    iput-object p3, p0, Lcom/qiniu/android/http/Proxy;->user:Ljava/lang/String;

    iput-object p4, p0, Lcom/qiniu/android/http/Proxy;->password:Ljava/lang/String;

    return-void
.end method
