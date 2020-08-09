.class public Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final connectionToTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcz/msebera/android/httpclient/HttpConnection;",
            "Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;",
            ">;"
        }
    .end annotation
.end field

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lcz/msebera/android/httpclient/HttpConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding connection at: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    new-instance v1, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public closeExpiredConnections()V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking for expired connections, now: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;

    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-gtz v7, :cond_1

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v7}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Closing connection, expired @: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_2
    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v8, "I/O error closing connection"

    invoke-virtual {v7, v8, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public closeIdleConnections(J)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, p1

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking for connections, idle timeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;

    invoke-static {v8}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;->access$100(Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v2

    cmp-long v9, v2, v6

    if-gtz v9, :cond_1

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v9}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Closing idle connection, connection time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_2
    :try_start_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v9, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v10, "I/O error closing connection"

    invoke-virtual {v9, v10, v4}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public remove(Lcz/msebera/android/httpclient/HttpConnection;)Z
    .locals 6

    const/4 v1, 0x1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Removing a connection that never existed!"

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;->access$000(Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
