.class public Lcom/facebook/internal/AppEventsLoggerUtility;
.super Ljava/lang/Object;
.source "AppEventsLoggerUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;
    }
.end annotation


# static fields
.field private static final API_ACTIVITY_TYPE_TO_STRING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/internal/AppEventsLoggerUtility$1;

    invoke-direct {v0}, Lcom/facebook/internal/AppEventsLoggerUtility$1;-><init>()V

    sput-object v0, Lcom/facebook/internal/AppEventsLoggerUtility;->API_ACTIVITY_TYPE_TO_STRING:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

