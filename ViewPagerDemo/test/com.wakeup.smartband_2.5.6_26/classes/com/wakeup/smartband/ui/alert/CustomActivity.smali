.class public Lcom/wakeup/smartband/ui/alert/CustomActivity;
.super Lcom/wakeup/smartband/base/BaseActivity;
.source "CustomActivity.java"


# static fields
.field public static final CLOCK_ALERT_TIME:Ljava/lang/String; = "clock_alert_time"

.field public static final FRIDAY:Ljava/lang/String; = "friday"

.field public static final MONDAY:Ljava/lang/String; = "monday"

.field public static final SATURDAY:Ljava/lang/String; = "saturday"

.field public static final SUNDAY:Ljava/lang/String; = "sunday"

.field public static final THURSDAY:Ljava/lang/String; = "thursday"

.field public static final TUESDAY:Ljava/lang/String; = "tuesday"

.field public static final WEDNESDAY:Ljava/lang/String; = "wednesday"


# instance fields
.field private alertModel:Lcom/wakeup/smartband/model/AlertModel;

.field ir_friday:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f010c
    .end annotation
.end field

.field ir_monday:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0108
    .end annotation
.end field

.field ir_saturday:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f010d
    .end annotation
.end field

.field ir_sunday:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0107
    .end annotation
.end field

.field ir_thursday:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f010b
    .end annotation
.end field

.field ir_tuesday:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f0109
    .end annotation
.end field

.field ir_wednesday:Lcom/wakeup/smartband/ui/widget/ItemRelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f010a
    .end annotation
.end field

.field private isFridayChecked:Z

.field private isMondayChecked:Z

.field private isSaturdayChecked:Z

.field private isSundayChecked:Z

.field private isThursdayChecked:Z

.field private isTuesdayChecked:Z

.field private isWednesdayChecked:Z

.field iv_back:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0f00a3
    .end annotation
.end field

.field private iv_friday:Landroid/widget/ImageView;

.field private iv_monday:Landroid/widget/ImageView;

.field private iv_saturday:Landroid/widget/ImageView;

.field private iv_sunday:Landroid/widget/ImageView;

.field private iv_thursday:Landroid/widget/ImageView;

.field private iv_tuesday:Landroid/widget/ImageView;

.field private iv_wednesday:Landroid/widget/ImageView;

.field private repeat:I


# direct methods
.method public constructor <init>()V
    .registers 1

