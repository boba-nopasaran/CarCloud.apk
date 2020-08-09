.class public Lcz/msebera/android/httpclient/config/ConnectionConfig;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;


# instance fields
.field private final bufferSize:I

.field private final charset:Ljava/nio/charset/Charset;

.field private final fragmentSizeHint:I

.field private final malformedInputAction:Ljava/nio/charset/CodingErrorAction;

.field private final messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

.field private final unmappableInputAction:Ljava/nio/charset/CodingErrorAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;->build()Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    return-void
.end method

.method constructor <init>(IILjava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->bufferSize:I

    iput p2, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->fragmentSizeHint:I

    iput-object p3, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->charset:Ljava/nio/charset/Charset;

    iput-object p4, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    iput-object p5, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    iput-object p6, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    return-void
.end method

.method public static copy(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;
    .locals 2

    const-string v0, "Connection config"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;->setCharset(Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;->setMalformedInputAction(Ljava/nio/charset/CodingErrorAction;)Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;->setUnmappableInputAction(Ljava/nio/charset/CodingErrorAction;)Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getMessageConstraints()Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;->setMessageConstraints(Lcz/msebera/android/httpclient/config/MessageConstraints;)Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static custom()Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/config/ConnectionConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected clone()Lcz/msebera/android/httpclient/config/ConnectionConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/config/ConnectionConfig;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->clone()Lcz/msebera/android/httpclient/config/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->bufferSize:I

    return v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFragmentSizeHint()I
    .locals 1

    iget v0, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->fragmentSizeHint:I

    return v0
.end method

.method public getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public getMessageConstraints()Lcz/msebera/android/httpclient/config/MessageConstraints;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    return-object v0
.end method

.method public getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fragmentSizeHint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->fragmentSizeHint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", malformedInputAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->malformedInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", unmappableInputAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->unmappableInputAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messageConstraints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/config/ConnectionConfig;->messageConstraints:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
