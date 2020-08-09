.class public Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;
.super Ljava/lang/Object;
.source "RFC6265CookieSpecProvider.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$2;,
        Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;
    }
.end annotation


# instance fields
.field private final compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

.field private volatile cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    return-void

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    goto :goto_0
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 5

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v0, :cond_0

    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$2;->$SwitchMap$cz$msebera$android$httpclient$impl$cookie$RFC6265CookieSpecProvider$CompatibilityLevel:[I

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265LaxSpec;

    const/4 v1, 0x5

    new-array v1, v1, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    const/4 v2, 0x0

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/LaxMaxAgeHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/LaxMaxAgeHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/LaxExpiresHandler;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265LaxSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v0

    :pswitch_0
    :try_start_1
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265StrictSpec;

    const/4 v1, 0x5

    new-array v1, v1, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    const/4 v2, 0x0

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    sget-object v4, Lcz/msebera/android/httpclient/impl/cookie/RFC6265StrictSpec;->DATE_PATTERNS:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265StrictSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_1
    :try_start_2
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265LaxSpec;

    const/4 v1, 0x5

    new-array v1, v1, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    const/4 v2, 0x0

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$1;

    invoke-direct {v3, p0}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider$1;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    sget-object v4, Lcz/msebera/android/httpclient/impl/cookie/RFC6265StrictSpec;->DATE_PATTERNS:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC6265LaxSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method