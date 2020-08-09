.class public final Lcom/qiniu/android/dns/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# instance fields
.field public final domain:Ljava/lang/String;

.field public final hasCname:Z

.field public final hostsFirst:Z

.field public final maxTtl:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qiniu/android/dns/Domain;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    iput-boolean p3, p0, Lcom/qiniu/android/dns/Domain;->hostsFirst:Z

    iput p4, p0, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    return-void
.end method
