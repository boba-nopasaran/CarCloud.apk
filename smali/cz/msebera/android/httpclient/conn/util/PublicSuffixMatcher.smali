.class public final Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
.super Ljava/lang/Object;
.source "PublicSuffixMatcher.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "Domain suffix rules"

    invoke-static {p1, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v3, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-interface {v3, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v3, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-interface {v3, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    :cond_2
    return-void
.end method


# virtual methods
.method public getDomainRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, -0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->exceptions:Ljava/util/Map;

    invoke-static {v3}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    invoke-static {v3}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move-object v3, v0

    goto :goto_0

    :cond_5
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v8, :cond_8

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->rules:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_6
    if-eq v2, v8, :cond_7

    move-object v0, v3

    :cond_7
    move-object v3, v1

    goto :goto_1

    :cond_8
    move-object v1, v4

    goto :goto_2
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->getDomainRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
