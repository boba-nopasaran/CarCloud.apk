.class Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;
.super Ljava/lang/Object;
.source "BasicClientConnectionManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;

.field final synthetic val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 0

    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .locals 3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->this$0:Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->val$route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager$1;->val$state:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/BasicClientConnectionManager;->getConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    move-result-object v0

    return-object v0
.end method
