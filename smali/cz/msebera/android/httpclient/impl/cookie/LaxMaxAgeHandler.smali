.class public Lcz/msebera/android/httpclient/impl/cookie/LaxMaxAgeHandler;
.super Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;
.source "LaxMaxAgeHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field private static final MAX_AGE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\-?[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/LaxMaxAgeHandler;->MAX_AGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    const-string v0, "max-age"

    return-object v0
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v4, "Cookie"

    invoke-static {p1, v4}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcz/msebera/android/httpclient/impl/cookie/LaxMaxAgeHandler;->MAX_AGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_2

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    :goto_1
    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/Date;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_1
.end method
