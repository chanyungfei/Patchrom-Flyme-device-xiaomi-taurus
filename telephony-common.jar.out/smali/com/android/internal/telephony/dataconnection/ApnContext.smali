.class public Lcom/android/internal/telephony/dataconnection/ApnContext;
.super Ljava/lang/Object;
.source "ApnContext.java"


# static fields
.field protected static final DBG:Z


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field private final mApnType:Ljava/lang/String;

.field private mConcurrentVoiceAndDataAllowed:Z

.field private final mContext:Landroid/content/Context;

.field mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

.field private final mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLocalLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field mReason:Ljava/lang/String;

.field mReconnectAlarmIntent:Landroid/app/PendingIntent;

.field private mRefCount:I

.field private final mRefCountLock:Ljava/lang/Object;

.field private final mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

.field private mState:Lcom/android/internal/telephony/DctConstants$State;

.field private mWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final priority:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "config"    # Landroid/net/NetworkConfig;
    .param p5, "tracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mOriginalWaitingApns:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    .line 81
    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    .line 345
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 101
    const-string/jumbo v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p4, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    iget v0, p4, Landroid/net/NetworkConfig;->priority:I

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    .line 106
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 97
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ApnContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method


# virtual methods
.method public decRefCount(Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "log"    # Landroid/util/LocalLog;

    .prologue
    const/4 v3, 0x1

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    if-nez v0, :cond_0

    .line 320
    const-string/jumbo v0, "ApnContext.decRefCount - reset to 0."

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v0, "decRefCount attempt to decrement below 0"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 322
    return-void

    .line 326
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    if-eq v0, v3, :cond_4

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApnContext.decRefCount - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 335
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    if-ne v0, v3, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setEnabled(IZ)V

    .line 338
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    if-gez v0, :cond_2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApnContext.decRefCount went to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v1

    .line 317
    return-void

    .line 330
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApnContext.decRefCount didn\'t find log - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 333
    :cond_4
    :try_start_3
    const-string/jumbo v0, "ApnContext.decRefCount - 1"

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public decWaitingApnsPermFailCount()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 162
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 421
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 422
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v4

    .line 423
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 424
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    if-lez v3, :cond_1

    .line 425
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    .line 427
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1, v2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 422
    .end local v0    # "l":Landroid/util/LocalLog;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 429
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 420
    return-void
.end method

.method public declared-synchronized getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    .prologue
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 1

    .prologue
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDependencyMet()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getNextWaitingApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 3

    .prologue
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    .line 168
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v0, 0x0

    .line 170
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 175
    return-object v0

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getOriginalWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mOriginalWaitingApns:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReason()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReconnectIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    .prologue
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWaitingApnsPermFailCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public incRefCount(Landroid/util/LocalLog;)V
    .locals 4
    .param p1, "log"    # Landroid/util/LocalLog;

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearing log with size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApnContext.incRefCount has duplicate add - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 310
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setEnabled(IZ)V

    .line 313
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "incRefCount postIncrement = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 296
    return-void

    .line 307
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ApnContext.incRefCount - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 240
    goto :goto_0
.end method

.method public isConnectedOrConnecting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public isDisconnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    .line 220
    .local v0, "currentState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v2, :cond_0

    .line 221
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isProvisioningApn()Z
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 277
    const v2, 0x1040035

    .line 276
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "provisioningApn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 282
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized releaseDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 131
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 126
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeWaitingApn(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 178
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v3

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    .line 291
    .local v0, "l":Landroid/util/LocalLog;
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 289
    .end local v0    # "l":Landroid/util/LocalLog;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 288
    return-void
.end method

.method public resetErrorCodeRetries()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 348
    const-string/jumbo v7, "ApnContext.resetErrorCodeRetries"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 352
    const v8, 0x1070044

    .line 351
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "config":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    monitor-enter v7

    .line 354
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 356
    array-length v8, v1

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v0, v1, v6

    .line 357
    .local v0, "c":Ljava/lang/String;
    const-string/jumbo v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "errorValue":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v9, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 359
    const/4 v2, 0x0

    .line 360
    .local v2, "count":I
    const/4 v4, 0x0

    .line 362
    .local v4, "errorCode":I
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 363
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 368
    if-lez v2, :cond_0

    if-lez v4, :cond_0

    .line 369
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 356
    .end local v2    # "count":I
    .end local v4    # "errorCode":I
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 364
    .restart local v2    # "count":I
    .restart local v4    # "errorCode":I
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception parsing config_retries_per_error_code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 353
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "errorCode":I
    .end local v5    # "errorValue":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 372
    .restart local v0    # "c":Ljava/lang/String;
    .restart local v5    # "errorValue":[Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception parsing config_retries_per_error_code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "c":Ljava/lang/String;
    .end local v5    # "errorValue":[Ljava/lang/String;
    :cond_2
    monitor-exit v7

    .line 347
    return-void
.end method

.method public restartOnError(I)Z
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 381
    .local v1, "retriesLeft":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 382
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 383
    packed-switch v1, :pswitch_data_0

    .line 394
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    monitor-exit v4

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ApnContext.restartOnError("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 400
    const-string/jumbo v4, " and returned "

    .line 399
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 403
    return v0

    .line 389
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    const/4 v0, 0x1

    .line 391
    goto :goto_0

    .line 381
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    monitor-enter p0

    .line 149
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 147
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConcurrentVoiceAndDataAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    monitor-enter p0

    .line 193
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 192
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V
    .locals 1
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .prologue
    monitor-enter p0

    .line 123
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcAc:Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 118
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDependencyMet(Z)V
    .locals 1
    .param p1, "met"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 264
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    return-void
.end method

.method public declared-synchronized setReason(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 228
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 224
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReconnectIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    monitor-enter p0

    .line 139
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 138
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/telephony/DctConstants$State;

    .prologue
    monitor-enter p0

    .line 205
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 200
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWaitingApns(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    monitor-enter p0

    .line 153
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mOriginalWaitingApns:Ljava/util/ArrayList;

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 152
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    .line 409
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mWaitingApns={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    const-string/jumbo v1, "} mWaitingApnsPermanentFailureCountDown="

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mWaitingApnsPermanentFailureCountDown:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    const-string/jumbo v1, " mApnSetting={"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    const-string/jumbo v1, "} mReason="

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    const-string/jumbo v1, " mDataEnabled="

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    const-string/jumbo v1, " mDependencyMet="

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    const-string/jumbo v1, "}"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method