.class public Lcom/wakeup/smartband/adapter/RunHistoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RunHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/adapter/RunHistoryAdapter$OnItemClickListener;,
        Lcom/wakeup/smartband/adapter/RunHistoryAdapter$RunViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RunHistoryAdapter"


# instance fields
.field private TYPE_HEAD:I

.field private headlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/wakeup/smartband/adapter/RunHistoryAdapter$OnItemClickListener;

.field private old_date:Ljava/lang/String;

.field private pathRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/bean/PathRecord;",
            ">;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
