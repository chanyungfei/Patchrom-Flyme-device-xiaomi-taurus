.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcRetryingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 1441
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1442
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1445
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcRetryingState: enter() not retrying rat changed, mConnectionParams.mRilRat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1446
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 1445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1447
    const-string/jumbo v2, " != mRilRat:"

    .line 1445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1447
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v2

    .line 1445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1448
    const-string/jumbo v2, " transitionTo(mInactiveState)"

    .line 1445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1449
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap8(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 1451
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v2, "lostDataConnection"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1453
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1440
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 1456
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DcRetryingState: enter() mTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1457
    const-string/jumbo v3, ", call notifyAllOfDisconnectDcRetrying lostConnection"

    .line 1456
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1460
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v2, "lostDataConnection"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap11(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 1463
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get6(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1464
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    .line 1472
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1596
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState nothandled msg.what="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1598
    const/4 v7, 0x0

    .line 1602
    .local v7, "retVal":Z
    :goto_0
    return v7

    .line 1474
    .end local v7    # "retVal":Z
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1475
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 1476
    .local v4, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v10, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1477
    .local v3, "drs":I
    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1478
    .local v6, "rat":I
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v10

    if-ne v6, v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v10

    if-ne v3, v10, :cond_0

    .line 1480
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED strange no change in drs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1482
    const-string/jumbo v12, " rat="

    .line 1480
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1482
    const-string/jumbo v12, " ignoring"

    .line 1480
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1515
    :goto_1
    const/4 v7, 0x1

    .line 1516
    .restart local v7    # "retVal":Z
    goto :goto_0

    .line 1485
    .end local v7    # "retVal":Z
    :cond_0
    if-nez v3, :cond_1

    .line 1487
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRetryWhenSSChange:Z

    if-eqz v10, :cond_2

    .line 1488
    const/4 v7, 0x0

    .line 1489
    .restart local v7    # "retVal":Z
    goto :goto_0

    .line 1494
    .end local v7    # "retVal":Z
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1495
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap6(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 1496
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1499
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DcRetryingState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED giving up changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1501
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get20(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v11

    .line 1499
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1502
    const-string/jumbo v11, " to rat="

    .line 1499
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1503
    const-string/jumbo v11, " or drs changed from "

    .line 1499
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1503
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get5(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v11

    .line 1499
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1503
    const-string/jumbo v11, " to drs="

    .line 1499
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1504
    .local v8, "s":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap8(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 1507
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set3(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 1508
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set14(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 1510
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    .line 1511
    .local v9, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v5

    .line 1512
    .local v5, "networkType":I
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get17(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 1513
    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v11

    .line 1512
    invoke-virtual {v10, v5, v11}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1519
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "drs":I
    .end local v4    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "networkType":I
    .end local v6    # "rat":I
    .end local v9    # "ss":Landroid/telephony/ServiceState;
    :sswitch_1
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v11, v11, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-ne v10, v11, :cond_3

    .line 1520
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 1522
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState EVENT_RETRY_CONNECTION RetryCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1523
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v12

    .line 1522
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1524
    const-string/jumbo v12, " mConnectionParams="

    .line 1522
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1524
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v12

    .line 1522
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1526
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 1527
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1534
    :goto_2
    const/4 v7, 0x1

    .line 1535
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1530
    .end local v7    # "retVal":Z
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState stale EVENT_RETRY_CONNECTION tag:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1531
    iget v12, p1, Landroid/os/Message;->arg1:I

    .line 1530
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1531
    const-string/jumbo v12, " != mTag:"

    .line 1530
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1531
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 1530
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1539
    :sswitch_2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v11, "DcRetryingState: msg.what=RSP_RESET, ignore we\'re already reset"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1541
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v11

    .line 1542
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1541
    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1543
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1544
    const/4 v7, 0x1

    .line 1545
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1548
    .end local v7    # "retVal":Z
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1550
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState: msg.what=EVENT_CONNECT RefCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1551
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 1550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1551
    const-string/jumbo v12, " cp="

    .line 1550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1552
    const-string/jumbo v12, " mConnectionParams="

    .line 1550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1552
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v12

    .line 1550
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1554
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1555
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap14(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    .line 1556
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get1(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1564
    :goto_3
    const/4 v7, 0x1

    .line 1565
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1559
    .end local v7    # "retVal":Z
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v11, "DcRetryingState: msg.what=EVENT_CONNECT initConnection failed"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1561
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v10, v1, v11, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap12(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    goto :goto_3

    .line 1568
    .end local v1    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 1570
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    iget-object v11, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 1572
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState msg.what=EVENT_DISCONNECT  RefCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1573
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 1572
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1573
    const-string/jumbo v12, " dp="

    .line 1572
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1575
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)V

    .line 1576
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1581
    :goto_4
    const/4 v7, 0x1

    .line 1582
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1578
    .end local v7    # "retVal":Z
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v11, "DcRetryingState: msg.what=EVENT_DISCONNECT"

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1579
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10, v2, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap13(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    goto :goto_4

    .line 1586
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :sswitch_5
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DcRetryingState msg.what=EVENT_DISCONNECT/DISCONNECT_ALL RefCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1587
    iget-object v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 1586
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1589
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 1590
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get14(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap17(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1591
    const/4 v7, 0x1

    .line 1592
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 1472
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_3
        0x40004 -> :sswitch_4
        0x40006 -> :sswitch_5
        0x4000a -> :sswitch_1
        0x4000b -> :sswitch_0
        0x4100c -> :sswitch_2
    .end sparse-switch
.end method
