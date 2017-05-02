.class public Lcom/facebook/share/widget/JoinAppGroupDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "JoinAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/JoinAppGroupDialog$WebHandler;,
        Lcom/facebook/share/widget/JoinAppGroupDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/share/widget/JoinAppGroupDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final JOIN_GAME_GROUP_DIALOG:Ljava/lang/String; = "game_group_join"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupJoin:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 49
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/JoinAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    .line 48
    return-void
.end method

