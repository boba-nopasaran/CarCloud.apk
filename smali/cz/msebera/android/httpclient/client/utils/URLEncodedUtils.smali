.class public Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;
.super Ljava/lang/Object;
.source "URLEncodedUtils.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PATHSAFE:Ljava/util/BitSet;

.field private static final PUNCT:Ljava/util/BitSet;

.field private static final QP_SEP_A:C = '&'

.field private static final QP_SEP_S:C = ';'

.field private static final RADIX:I = 0x10

.field private static final RESERVED:Ljava/util/BitSet;

.field private static final UNRESERVED:Ljava/util/BitSet;

.field private static final URIC:Ljava/util/BitSet;

.field private static final URLENCODER:Ljava/util/BitSet;

.field private static final USERINFO:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x2c

    const/16 v5, 0x2b

    const/16 v4, 0x26

    const/16 v3, 0x24

    const/16 v2, 0x100

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->USERINFO:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->URIC:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->URLENCODER:Ljava/util/BitSet;

    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->URLENCODER:Ljava/util/BitSet;

    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->USERINFO:Ljava/util/BitSet;

    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->USERINFO:Ljava/util/BitSet;

    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PUNCT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->URIC:Ljava/util/BitSet;

    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->URIC:Ljava/util/BitSet;

    sget-object v2, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->urlDecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method private static decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->urlDecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object p1, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method static encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->PATHSAFE:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static encUric(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->URIC:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->USERINFO:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_1
    sget-object v1, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->URLENCODER:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method private static encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    sget-object v0, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->URLENCODER:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object p1, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1
.end method

.method public static format(Ljava/lang/Iterable;CLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;C",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/NameValuePair;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->encodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x26

    invoke-static {p0, v0, p1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->format(Ljava/lang/Iterable;CLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;C",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/NameValuePair;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->encodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0x26

    invoke-static {p0, v0, p1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->format(Ljava/util/List;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEncoded(Lcz/msebera/android/httpclient/HttpEntity;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v4, v1

    if-lez v4, :cond_0

    aget-object v3, v1, v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    :cond_0
    return v3
.end method

.method public static parse(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpEntity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->get(Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_1
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v6, v10

    if-gtz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    const-string v10, "HTTP entity is too large"

    invoke-static {v9, v10}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_2
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    sget-object v1, Lcz/msebera/android/httpclient/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_2

    :cond_4
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_5

    long-to-int v9, v6

    :goto_3
    invoke-direct {v0, v9}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v9, 0x400

    new-array v8, v9, [C

    :goto_4
    invoke-virtual {v5, v8}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v9

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v9

    :cond_5
    const/16 v9, 0x400

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_0

    :cond_7
    const/4 v9, 0x1

    new-array v9, v9, [C

    const/4 v10, 0x0

    const/16 v11, 0x26

    aput-char v11, v9, v10

    invoke-static {v0, v1, v9}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->parse(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/charset/Charset;[C)Ljava/util/List;

    move-result-object v9

    goto :goto_0
.end method

.method public static varargs parse(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/charset/Charset;[C)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/util/CharArrayBuffer;",
            "Ljava/nio/charset/Charset;",
            "[C)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    const-string v11, "Char array buffer"

    invoke-static {p0, v11}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v9, Lcz/msebera/android/httpclient/message/TokenParser;->INSTANCE:Lcz/msebera/android/httpclient/message/TokenParser;

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v0, p2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-char v8, v0, v4

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v12

    invoke-direct {v1, v11, v12}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v11

    if-nez v11, :cond_3

    const/16 v11, 0x3d

    invoke-virtual {v3, v11}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v9, p0, v1, v3}, Lcz/msebera/android/httpclient/message/TokenParser;->parseToken(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v11

    invoke-virtual {p0, v11}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    const/16 v11, 0x3d

    if-ne v2, v11, :cond_2

    const/16 v11, 0x3d

    invoke-virtual {v3, v11}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {v9, p0, v1, v3}, Lcz/msebera/android/httpclient/message/TokenParser;->parseValue(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    new-instance v11, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-static {v7, p1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, p1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->decodeFormFields(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v6
.end method

.method public static parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-static {v0, p1, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->parse(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/charset/Charset;[C)Ljava/util/List;

    move-result-object v1

    return-object v1

    nop

    :array_0
    .array-data 2
        0x26s
        0x3bs
    .end array-data
.end method

.method public static varargs parse(Ljava/lang/String;Ljava/nio/charset/Charset;[C)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "[C)",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->parse(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/nio/charset/Charset;[C)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "[&;]"

    invoke-static {p0, p1, v0, p2}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcz/msebera/android/httpclient/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    :goto_0
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v4, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v4, v1, v3}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->decodeFormFields(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static urlDecode(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x25

    const/16 v10, 0x10

    const/4 v9, -0x1

    if-nez p0, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    if-ne v1, v11, :cond_2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->get()C

    move-result v6

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    invoke-static {v6, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    invoke-static {v4, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-eq v5, v9, :cond_1

    if-eq v3, v9, :cond_1

    shl-int/lit8 v7, v5, 0x4

    add-int/2addr v7, v3

    int-to-byte v7, v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v7, v6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v7, v4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const/16 v7, 0x2b

    if-ne v1, v7, :cond_3

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    int-to-byte v7, v1

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static urlEncode(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x10

    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    int-to-char v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const/16 v5, 0x20

    if-ne v0, v5, :cond_2

    const/16 v5, 0x2b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    and-int/lit8 v5, v0, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
