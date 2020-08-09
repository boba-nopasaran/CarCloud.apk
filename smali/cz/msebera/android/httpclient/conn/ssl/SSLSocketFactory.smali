.class public Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/socket/LayeredConnectionSocketFactory;
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeLayeredSocketFactory;
.implements Lcz/msebera/android/httpclient/conn/scheme/LayeredSchemeSocketFactory;
.implements Lcz/msebera/android/httpclient/conn/scheme/LayeredSocketFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/ThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private volatile hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final supportedCipherSuites:[Ljava/lang/String;

.field private final supportedProtocols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->useProtocol(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->useProtocol(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lcz/msebera/android/httpclient/conn/ssl/TrustStrategy;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p7}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->useProtocol(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->custom()Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadKeyMaterial(Ljava/security/KeyStore;[C)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;)Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedProtocols:[Ljava/lang/String;

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "SSL context"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 1

    const-string v0, "SSL context"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSL socket factory"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedProtocols:[Ljava/lang/String;

    iput-object p3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    return-void

    :cond_0
    sget-object p4, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    goto :goto_0
.end method

.method public static getSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    invoke-static {}, Lcz/msebera/android/httpclient/conn/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sget-object v2, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-object v0
.end method

.method public static getSystemSocketFactory()Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/conn/ssl/SSLInitializationException;
        }
    .end annotation

    new-instance v1, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    const-string v2, "https.protocols"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "https.cipherSuites"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-direct {v1, v0, v2, v3, v4}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V

    return-object v1
.end method

.method private internalPrepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedProtocols:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->supportedCipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, p1}, Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public connectSocket(ILjava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "HTTP host"

    invoke-static {p3, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "Remote address"

    invoke-static {p4, v3}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    move-object v1, p2

    :goto_0
    if-eqz p5, :cond_0

    invoke-virtual {v1, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_0
    :try_start_0
    invoke-virtual {v1, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v3, v1, Ljavax/net/ssl/SSLSocket;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {p0, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    throw v0

    :cond_2
    invoke-virtual {p3}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->nameResolver:Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;

    invoke-interface {v3, p2}, Lcz/msebera/android/httpclient/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    const/4 v0, 0x0

    if-nez p4, :cond_0

    if-lez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_3

    :goto_1
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_1
    new-instance v2, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;

    new-instance v3, Lcz/msebera/android/httpclient/HttpHost;

    invoke-direct {v3, p2, p3}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v1, p3}, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;I)V

    invoke-virtual {p0, p1, v2, v0, p6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 p5, 0x0

    goto :goto_1
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lcz/msebera/android/httpclient/conn/ConnectTimeoutException;
        }
    .end annotation

    const-string v0, "Remote address"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p4, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/HttpInetSocketAddress;->getHttpHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    :goto_0
    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getSoTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v7

    invoke-static {p4}, Lcz/msebera/android/httpclient/params/HttpConnectionParams;->getConnectionTimeout(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result v1

    invoke-virtual {p1, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->connectSocket(ILjava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    const-string v4, "https"

    invoke-direct {v3, v0, v2, v4}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->internalPrepareSocket(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->internalPrepareSocket(Ljavax/net/ssl/SSLSocket;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "Socket"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    const-string v2, "Socket not created by this factory"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Socket is closed"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setHostnameVerifier(Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;)V
    .locals 1

    const-string v0, "Hostname verifier"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lcz/msebera/android/httpclient/conn/ssl/X509HostnameVerifier;

    return-void
.end method
