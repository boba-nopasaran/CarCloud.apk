.class public Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecProvider;
.super Ljava/lang/Object;
.source "IgnoreSpecProvider.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# instance fields
.field private volatile cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpec;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/IgnoreSpecProvider;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
