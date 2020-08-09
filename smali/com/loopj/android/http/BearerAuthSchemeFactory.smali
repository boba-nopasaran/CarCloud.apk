.class public Lcom/loopj/android/http/BearerAuthSchemeFactory;
.super Ljava/lang/Object;
.source "BearerAuthSchemeFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/AuthSchemeFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/auth/AuthScheme;
    .locals 1

    new-instance v0, Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;

    invoke-direct {v0}, Lcom/loopj/android/http/BearerAuthSchemeFactory$BearerAuthScheme;-><init>()V

    return-object v0
.end method
