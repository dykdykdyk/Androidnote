.class public Lcom/tencent/weibo/sdk/android/component/FriendActivity;
.super Landroid/app/Activity;
.source "FriendActivity.java"

# interfaces
.implements Lcom/tencent/weibo/sdk/android/component/LetterListView$OnTouchingLetterChangedListener;
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;


# instance fields
.field private adapter:Lcom/tencent/weibo/sdk/android/api/adapter/FriendAdapter;

.field private child:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/Firend;",
            ">;>;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/ProgressDialog;

.field private editText:Landroid/widget/EditText;

.field private group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private letterListView:Lcom/tencent/weibo/sdk/android/component/LetterListView;

.field private listView:Landroid/widget/ExpandableListView;

.field private newchild:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/weibo/sdk/android/model/Firend;",
            ">;>;"
        }
    .end annotation
.end field

.field private newgourp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nums:[I

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

