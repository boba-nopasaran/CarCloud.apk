.class public Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;
.super Ljava/lang/Object;
.source "ResponseContentEncoding.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field private static final DEFLATE:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

.field private static final GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

.field public static final UNCOMPRESSED:Ljava/lang/String; = "http.client.response.uncompressed"


# instance fields
.field private final decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$1;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$1;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$2;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding$2;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->DEFLATE:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;-><init>(Lcz/msebera/android/httpclient/config/Lookup;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/config/Lookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup",
            "<",
            "Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    return-void

    :cond_0
    invoke-static {}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->create()Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "gzip"

    sget-object v2, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "x-gzip"

    sget-object v2, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->GZIP:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "deflate"

    sget-object v2, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->DEFLATE:Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/RegistryBuilder;->build()Lcz/msebera/android/httpclient/config/Registry;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    move-result-object v4

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isDecompressionEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz v9, :cond_2

    invoke-interface {v9}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_2

    invoke-interface {v9}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v7

    move-object v2, v7

    array-length v11, v2

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v5, v2, v10

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;->decoderRegistry:Lcz/msebera/android/httpclient/config/Lookup;

    invoke-interface {v13, v6}, Lcz/msebera/android/httpclient/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;

    if-eqz v8, :cond_1

    new-instance v13, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v14

    invoke-direct {v13, v14, v8}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/client/entity/InputStreamFactory;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    const-string v13, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string v13, "Content-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string v13, "Content-MD5"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-string v13, "identity"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Lcz/msebera/android/httpclient/HttpException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported Content-Coding: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2
    return-void
.end method
