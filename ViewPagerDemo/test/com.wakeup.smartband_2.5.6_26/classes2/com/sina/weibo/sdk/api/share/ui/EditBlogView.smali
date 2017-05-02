.class public Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;
.super Landroid/widget/EditText;
.source "EditBlogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;,
        Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnSelectionListener;
    }
.end annotation


# instance fields
.field private canSelectionChanged:Z

.field private count:I

.field private ctx:Landroid/content/Context;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnSelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEnterListener:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;


# direct methods
