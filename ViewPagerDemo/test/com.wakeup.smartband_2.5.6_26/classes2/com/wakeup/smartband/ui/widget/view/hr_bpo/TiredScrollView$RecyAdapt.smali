.class public Lcom/wakeup/smartband/ui/widget/view/hr_bpo/TiredScrollView$RecyAdapt;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TiredScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wakeup/smartband/ui/widget/view/hr_bpo/TiredScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecyAdapt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wakeup/smartband/ui/widget/view/hr_bpo/TiredScrollView$RecyAdapt$ItemViewHolder;,
        Lcom/wakeup/smartband/ui/widget/view/hr_bpo/TiredScrollView$RecyAdapt$TitleViewHolder;,
        Lcom/wakeup/smartband/ui/widget/view/hr_bpo/TiredScrollView$RecyAdapt$OnClickListener;
    }
.end annotation


# static fields
.field private static final FIRST:I = 0x6f

.field private static final TITLE:I = 0x6e


# instance fields
.field private bloodBens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wakeup/smartband/bean/BloodBen;",
            ">;"
        }
    .end annotation
.end field

.field private item_image_id:I

.field private listener:Lcom/wakeup/smartband/ui/widget/view/hr_bpo/TiredScrollView$RecyAdapt$OnClickListener;

.field private root:Landroid/content/Context;

.field private title:Landroid/view/View;

.field private unit:Ljava/lang/String;


# direct methods
