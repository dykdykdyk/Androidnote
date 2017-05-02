.class public Lcom/umeng/socialize/editorpage/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CANCLE_RESULTCODE:I = 0x3e8

.field public static final FOLLOW_FILE_NAME:Ljava/lang/String; = "umeng_follow"

.field public static final KEY_AT:Ljava/lang/String; = "at"

.field public static final KEY_FOLLOW:Ljava/lang/String; = "follow_"

.field public static final KEY_LOCATION:Ljava/lang/String; = "location"

.field public static final KEY_PIC:Ljava/lang/String; = "pic"

.field public static final KEY_PLATFORM:Ljava/lang/String; = "media"

.field public static final KEY_TEXT:Ljava/lang/String; = "txt"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final REQUEST_CODE:I = 0x4cd

.field private static final c:Ljava/lang/String; = "ShareActivity"

.field private static d:I


# instance fields
.field private A:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private B:Lcom/umeng/socialize/editorpage/location/a;

.field private C:Lcom/umeng/socialize/bean/UMLocation;

.field private D:I

.field private E:Z

.field private F:Landroid/app/Dialog;

.field private G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/umeng/socialize/editorpage/location/b;

.field protected a:Landroid/widget/ImageView;

.field b:Landroid/text/TextWatcher;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/umeng/socialize/common/ResContainer;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/CheckBox;

.field private w:Lcom/umeng/socialize/editorpage/KeyboardListenRelativeLayout;

.field private x:Landroid/widget/ProgressBar;

.field private y:Landroid/content/Context;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const/16 v0, 0x8c

    sput v0, Lcom/umeng/socialize/editorpage/ShareActivity;->d:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

