.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;
.super Lcom/android/ims/ImsCall$Listener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallHandover(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallHandover ::  srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", targetAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1452
    const-string/jumbo v2, ", reasonInfo="

    .line 1451
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1449
    return-void
.end method

.method public onCallHandoverFailed(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallHandoverFailed :: srcAccessTech="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1461
    const-string/jumbo v2, ", targetAccessTech="

    .line 1460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1461
    const-string/jumbo v2, ", reasonInfo="

    .line 1460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1458
    return-void
.end method

.method public onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 1201
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallHeld (fg) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1207
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get12(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1208
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1209
    .local v0, "oldState":Lcom/android/internal/telephony/Call$State;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    .line 1210
    const/4 v4, 0x0

    .line 1209
    invoke-static {v1, p1, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1216
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 1220
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_1

    .line 1221
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_4

    .line 1223
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v2

    .line 1198
    return-void

    .line 1202
    .end local v0    # "oldState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1203
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallHeld (bg) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1228
    .restart local v0    # "oldState":Lcom/android/internal/telephony/Call$State;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1229
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 1236
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1207
    .end local v0    # "oldState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1244
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallHoldFailed reasonCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get12(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1247
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1248
    .local v0, "bgState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v1

    const/16 v3, 0x94

    if-ne v1, v3, :cond_1

    .line 1250
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1251
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    .line 1261
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1243
    return-void

    .line 1253
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1256
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setDisconnectCause(I)V

    .line 1258
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-wide/16 v4, 0x1f4

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1246
    .end local v0    # "bgState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v4, 0x1

    .line 1320
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v3, "onCallHoldReceived"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1322
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1323
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 1324
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1325
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone()V

    .line 1326
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1330
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1333
    .local v1, "supp":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iput v4, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1334
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1335
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 1319
    return-void
.end method

.method public onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallMergeFailed reasonInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1415
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1419
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1420
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConferenceMergeFailed()V

    .line 1409
    :cond_0
    return-void
.end method

.method public onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .locals 8
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "peerCall"    # Lcom/android/ims/ImsCall;
    .param p3, "swapCalls"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1355
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v5, "onCallMerged"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1357
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    .line 1358
    .local v0, "foregroundImsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 1359
    .local v1, "peerConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 1362
    :goto_0
    if-eqz p3, :cond_0

    .line 1363
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 1365
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V

    .line 1369
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;Lcom/android/ims/ImsCall;)V

    .line 1384
    .local v3, "r":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->post(Ljava/lang/Runnable;)Z

    .line 1388
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1390
    if-eqz v1, :cond_1

    .line 1391
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1397
    :cond_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMergeRequestedByConf()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1398
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v5, "onCallMerged :: calling onMultipartyStateChanged()"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1399
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V

    .line 1405
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    .line 1354
    return-void

    .line 1360
    .end local v3    # "r":Ljava/lang/Runnable;
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    .local v2, "peerImsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    goto :goto_0

    .line 1401
    .end local v2    # "peerImsPhoneCall":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .restart local v3    # "r":Ljava/lang/Runnable;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v5, "onCallMerged :: Merge requested by existing conference."

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p1, v7}, Lcom/android/ims/ImsCall;->resetIsMergeRequestedByConf(Z)V

    goto :goto_1
.end method

.method public onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v1, "onCallProgressing"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1106
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    .line 1107
    const/4 v2, 0x0

    .line 1106
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1102
    return-void
.end method

.method public onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallResumeFailed : switching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1292
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1295
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    .line 1296
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->RESUME:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1286
    return-void
.end method

.method public onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v2, "onCallResumeReceived"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1305
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopOnHoldTone()V

    .line 1307
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1310
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1313
    .local v0, "supp":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1314
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1315
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 1302
    return-void
.end method

.method public onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v3, 0x0

    .line 1267
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v1, "onCallResumed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get11(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallResumed : switching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1275
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 1274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-static {v0, p1, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1266
    return-void
.end method

.method public onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onTtyModeReceived(I)V

    .line 1443
    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    const/4 v4, 0x0

    .line 1139
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallStartFailed reasonCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1141
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1143
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v1

    const/16 v2, 0x92

    if-ne v1, v2, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 1146
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1147
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap6(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 1148
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->finalize()V

    .line 1149
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1150
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->initiateSilentRedial()V

    .line 1151
    return-void

    .line 1153
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsReasonInfo;)I

    move-result v0

    .line 1154
    .local v0, "cause":I
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-static {v1, p1, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1156
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1138
    .end local v0    # "cause":I
    :cond_1
    return-void
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v1, "onCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1115
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 1116
    const/4 v2, 0x0

    .line 1115
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1111
    return-void
.end method

.method public onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    .prologue
    .line 1341
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallSuppServiceReceived: suppServiceInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1343
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 1344
    .local v0, "supp":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->notificationType:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 1345
    iget v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->code:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 1346
    iget v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->index:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 1347
    iget-object v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 1348
    iget-object v1, p2, Lcom/android/ims/ImsSuppServiceNotification;->history:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    .line 1350
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    .line 1340
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 10
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1162
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallTerminated reasonCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1164
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1165
    .local v2, "oldState":Lcom/android/internal/telephony/Call$State;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap1(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsReasonInfo;)I

    move-result v0

    .line 1166
    .local v0, "cause":I
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    .line 1167
    .local v1, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " conn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1169
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1171
    if-ne v0, v9, :cond_3

    .line 1172
    const/4 v0, 0x1

    .line 1176
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Incoming connection of 0 connect time detected - translated cause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1181
    :cond_0
    if-ne v0, v9, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1183
    const/16 v0, 0x2d

    .line 1186
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-static {v3, p1, v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap5(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;I)V

    .line 1187
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 1188
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1190
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-set2(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 1161
    :cond_2
    :goto_1
    return-void

    .line 1174
    :cond_3
    const/16 v0, 0x10

    goto :goto_0

    .line 1191
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-get8(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1192
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v2, "onCallUpdated"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1122
    if-nez p1, :cond_0

    .line 1123
    return-void

    .line 1125
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1126
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1128
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1127
    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap4(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    .line 1120
    :cond_1
    return-void
.end method

.method public onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .locals 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1434
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v2, "onConferenceParticipantsStateChanged"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1436
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1437
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 1438
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateConferenceParticipants(Ljava/util/List;)V

    .line 1433
    :cond_0
    return-void
.end method

.method public onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isMultiParty"    # Z

    .prologue
    .line 1475
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMultipartyStateChanged to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string/jumbo v1, "Y"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1477
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1478
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v0, :cond_0

    .line 1479
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMultipartyState(Z)V

    .line 1474
    :cond_0
    return-void

    .line 1475
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_1
    const-string/jumbo v1, "N"

    goto :goto_0
.end method
