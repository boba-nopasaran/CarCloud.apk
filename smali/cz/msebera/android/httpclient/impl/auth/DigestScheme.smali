.class public Lcz/msebera/android/httpclient/impl/auth/DigestScheme;
.super Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final HEXADECIMAL:[C

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1

.field private static final serialVersionUID:J = 0x35e669eae4be3904L


# instance fields
.field private a1:Ljava/lang/String;

.field private a2:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Ljava/nio/charset/Charset;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x8

    new-array v1, v2, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createDigestHeader(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    const-string v37, "uri"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v37, "realm"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v37, "nonce"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v37, "opaque"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v37, "methodname"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v37, "algorithm"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "MD5"

    :cond_0
    new-instance v30, Ljava/util/HashSet;

    const/16 v37, 0x8

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/16 v28, -0x1

    const-string v37, "qop"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_4

    new-instance v33, Ljava/util/StringTokenizer;

    const-string v37, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v37

    if-eqz v37, :cond_1

    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    sget-object v37, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    move/from16 v37, v0

    if-eqz v37, :cond_3

    const-string v37, "auth-int"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3

    const/16 v28, 0x1

    :cond_2
    :goto_1
    const/16 v37, -0x1

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    new-instance v37, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "None of the qop methods is supported: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_3
    const-string v37, "auth"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2

    const/16 v28, 0x2

    goto :goto_1

    :cond_4
    const/16 v28, 0x0

    goto :goto_1

    :cond_5
    const-string v37, "charset"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v6, "ISO-8859-1"

    :cond_6
    move-object v8, v4

    const-string v37, "MD5-sess"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_7

    const-string v8, "MD5"

    :cond_7
    :try_start_0
    invoke-static {v8}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {p1 .. p1}, Lcz/msebera/android/httpclient/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x1

    add-long v38, v38, v40

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    :goto_2
    new-instance v32, Ljava/lang/StringBuilder;

    const/16 v37, 0x100

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v15, Ljava/util/Formatter;

    sget-object v37, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-direct {v15, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const-string v37, "%08x"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v15}, Ljava/util/Formatter;->close()V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v37, v0

    if-nez v37, :cond_8

    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    :cond_8
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    const-string v37, "MD5-sess"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_e

    const/16 v37, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v7

    const/16 v37, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v16

    const/16 v37, 0x2

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_f

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-static {v0, v6}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v17

    if-nez v28, :cond_15

    const/16 v37, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-static {v10}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v9

    new-instance v5, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v37, 0x80

    move/from16 v0, v37

    invoke-direct {v5, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->isProxy()Z

    move-result v37

    if-eqz v37, :cond_17

    const-string v37, "Proxy-Authorization"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_6
    const-string v37, ": Digest "

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v26, Ljava/util/ArrayList;

    const/16 v37, 0x14

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v37, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v38, "username"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v37, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v38, "realm"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v37, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v38, "nonce"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v37, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v38, "uri"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v37, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v38, "response"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v9}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v28, :cond_9

    new-instance v38, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v39, "qop"

    const/16 v37, 0x1

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_18

    const-string v37, "auth-int"

    :goto_7
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v37, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v38, "nc"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v37, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v38, "cnonce"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-direct/range {v37 .. v39}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v37, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v38, "algorithm"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v4}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v24, :cond_a

    new-instance v37, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    const-string v38, "opaque"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v18, 0x0

    :goto_8
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v37

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    if-lez v18, :cond_b

    const-string v37, ", "

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {v25 .. v25}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v37, "nc"

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_c

    const-string v37, "qop"

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_c

    const-string v37, "algorithm"

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_19

    :cond_c
    const/16 v22, 0x1

    :goto_9
    sget-object v38, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    if-nez v22, :cond_1a

    const/16 v37, 0x1

    :goto_a
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    :catch_0
    move-exception v14

    new-instance v37, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unsuppported digest algorithm: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_d
    const-wide/16 v38, 0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    const/16 v37, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    goto/16 :goto_3

    :cond_f
    const/16 v37, 0x1

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_14

    const/4 v12, 0x0

    move-object/from16 v0, p2

    instance-of v0, v0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    move/from16 v37, v0

    if-eqz v37, :cond_10

    check-cast p2, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface/range {p2 .. p2}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v12

    :cond_10
    if-eqz v12, :cond_12

    invoke-interface {v12}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v37

    if-nez v37, :cond_12

    const-string v37, "auth"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_11

    const/16 v28, 0x2

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    goto/16 :goto_4

    :cond_11
    new-instance v37, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v38, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct/range {v37 .. v38}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_12
    new-instance v13, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;

    invoke-direct {v13, v11}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;-><init>(Ljava/security/MessageDigest;)V

    if-eqz v12, :cond_13

    :try_start_1
    invoke-interface {v12, v13}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    :cond_13
    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v13}, Lcz/msebera/android/httpclient/impl/auth/HttpEntityDigester;->getDigest()[B

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    goto/16 :goto_4

    :catch_1
    move-exception v14

    new-instance v37, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v38, "I/O error reading entity content"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v14}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    :cond_14
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    goto/16 :goto_4

    :cond_15
    const/16 v37, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v37, 0x1

    move/from16 v0, v28

    move/from16 v1, v37

    if-ne v0, v1, :cond_16

    const-string v37, "auth-int"

    :goto_b
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0x3a

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    :cond_16
    const-string v37, "auth"

    goto :goto_b

    :cond_17
    const-string v37, "Authorization"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_18
    const-string v37, "auth"

    goto/16 :goto_7

    :cond_19
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_1a
    const/16 v37, 0x0

    goto/16 :goto_a

    :cond_1b
    new-instance v37, Lcz/msebera/android/httpclient/message/BufferedHeader;

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-object v37
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static encode([B)Ljava/lang/String;
    .locals 7

    array-length v4, p0

    mul-int/lit8 v5, v4, 0x2

    new-array v0, v5, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v5, p0, v2

    and-int/lit8 v3, v5, 0xf

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v1, v5, 0x4

    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v6, v6, v1

    aput-char v6, v0, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v6, v6, v3

    aput-char v6, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method


# virtual methods
.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    const-string v1, "Credentials"

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP request"

    invoke-static {p2, v1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "realm"

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v2, "missing realm in challenge"

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "nonce"

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthenticationException;

    const-string v2, "missing nonce in challenge"

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "methodname"

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uri"

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "charset"

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "charset"

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getCredentialsCharset(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->createDigestHeader(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    return-object v1
.end method

.method getA1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    return-object v0
.end method

.method getA2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    return-object v0
.end method

.method getCnonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    const-string v1, "stale"

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public processChallenge(Lcz/msebera/android/httpclient/Header;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->processChallenge(Lcz/msebera/android/httpclient/Header;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string v1, "Authentication challenge is empty"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIGEST [complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->complete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcz/msebera/android/httpclient/impl/auth/DigestScheme;->nounceCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
