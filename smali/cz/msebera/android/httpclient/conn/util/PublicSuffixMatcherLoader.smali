.class public final Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;
.super Ljava/lang/Object;
.source "PublicSuffixMatcherLoader.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation


# static fields
.field private static volatile DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 8

    sget-object v3, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    if-nez v3, :cond_1

    const-class v4, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    if-nez v3, :cond_0

    const-class v3, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;

    const-string v5, "/mozilla/public-suffix-list.txt"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->load(Ljava/net/URL;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    move-result-object v3

    sput-object v3, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    sget-object v3, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    return-object v3

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class v3, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;

    invoke-direct {v1, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Failure loading public suffix list from default resource"

    invoke-virtual {v1, v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_2
    :try_start_4
    new-instance v3, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com"

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    sput-object v3, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->DEFAULT_INSTANCE:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static load(Ljava/io/File;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "File"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private static load(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;-><init>()V

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixListParser;->parse(Ljava/io/Reader;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;

    move-result-object v0

    new-instance v1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v1
.end method

.method public static load(Ljava/net/URL;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "URL"

    invoke-static {p0, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcherLoader;->load(Ljava/io/InputStream;)Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
