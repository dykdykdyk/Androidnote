.class public Lcom/wakeup/smartband/adapter/AlertAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/adapter/AlertAdapter$AlertViewHolder;
    }
.end annotation


# instance fields
.field private alertModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/model/AlertModel;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private listener:Landroid/view/View$OnClickListener;

.field private mManager:Lcom/wakeup/smartband/manager/CommandManager;


# direct methods
