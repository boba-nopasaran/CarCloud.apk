.class public Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;
.super Ljava/lang/Object;
.source "DisallowIdentityContentLengthStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;


# instance fields
.field private final contentLengthStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;

    new-instance v1, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;-><init>(I)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;-><init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;->contentLengthStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    return-void
.end method


# virtual methods
.method public determineLength(Lcz/msebera/android/httpclient/HttpMessage;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;->contentLengthStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    invoke-interface {v2, p1}, Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;->determineLength(Lcz/msebera/android/httpclient/HttpMessage;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Lcz/msebera/android/httpclient/ProtocolException;

    const-string v3, "Identity transfer encoding cannot be used"

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-wide v0
.end method