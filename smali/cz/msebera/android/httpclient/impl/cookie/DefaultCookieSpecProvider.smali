.class public Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;
.super Ljava/lang/Object;
.source "DefaultCookieSpecProvider.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    }
.end annotation


# instance fields
.field private final compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

.field private volatile cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 3

    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    iput-boolean p4, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    return-void

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    goto :goto_0
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 9

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v3, :cond_0

    new-instance v2, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    iget-boolean v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    const/16 v4, 0x9

    new-array v4, v4, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    const/4 v5, 0x0

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {v6, v7}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    iget-boolean v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    const/4 v4, 0x6

    new-array v4, v4, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    const/4 v5, 0x0

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109VersionHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109DomainHandler;-><init>()V

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {v6, v7}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v6}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v6, v4, v5

    invoke-direct {v1, v3, v4}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>(Z[Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    const/4 v3, 0x5

    new-array v4, v3, [Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    const/4 v3, 0x0

    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-static {v5, v6}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x1

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    sget-object v6, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->IE_MEDIUM_SECURITY:Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    if-ne v3, v6, :cond_2

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$1;

    invoke-direct {v3, p0}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider$1;-><init>(Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;)V

    :goto_0
    aput-object v3, v4, v5

    const/4 v3, 0x2

    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    aput-object v5, v4, v3

    const/4 v5, 0x4

    new-instance v6, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    :goto_1
    invoke-direct {v6, v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v4}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;)V

    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;

    invoke-direct {v3, v2, v1, v0}, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpec;-><init>(Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;)V

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v3

    :cond_2
    :try_start_1
    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {v3}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_3
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "EEE, dd-MMM-yy HH:mm:ss z"

    aput-object v8, v3, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
