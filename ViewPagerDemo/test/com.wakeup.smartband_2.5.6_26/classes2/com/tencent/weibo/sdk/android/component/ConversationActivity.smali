.class public Lcom/tencent/weibo/sdk/android/component/ConversationActivity;
.super Landroid/app/Activity;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/tencent/weibo/sdk/android/network/HttpCallback;


# instance fields
.field private adapter:Lcom/tencent/weibo/sdk/android/api/adapter/ConversationAdapter;

.field private dialog:Landroid/app/ProgressDialog;

.field private editText:Landroid/widget/EditText;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

