.class public Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;
.super Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
.source "SingleClientConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PoolEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V
    .locals 2

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->this$0:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;

    iget-object v0, p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdownEntry()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V

    :cond_0
    return-void
.end method

.method protected shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdownEntry()V

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->shutdown()V

    :cond_0
    return-void
.end method
