.class public Lcom/wakeup/smartband/adapter/RecyAdapt;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyAdapt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/adapter/RecyAdapt$ItemViewHolder;,
        Lcom/wakeup/smartband/adapter/RecyAdapt$TitleViewHolder;
    }
.end annotation


# static fields
.field private static final FIRST:I = 0x6f

.field private static final TITLE:I = 0x6e


# instance fields
.field private BOBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/bean/BOBean;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private item_image_id:I

.field private listener:Landroid/view/View$OnClickListener;

.field private title:Landroid/view/View;


# direct methods
