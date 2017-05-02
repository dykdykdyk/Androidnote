.class public Lcom/facebook/share/widget/CreateAppGroupDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "CreateAppGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/CreateAppGroupDialog$WebHandler;,
        Lcom/facebook/share/widget/CreateAppGroupDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        "Lcom/facebook/share/widget/CreateAppGroupDialog$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final GAME_GROUP_CREATION_DIALOG:Ljava/lang/String; = "game_group_create"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupCreate:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 50
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/CreateAppGroupDialog;->DEFAULT_REQUEST_CODE:I

    .line 49
    return-void
.end method

