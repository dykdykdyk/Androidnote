.class public Lcom/laiwang/sdk/openapi/LWAPIAccount;
.super Ljava/lang/Object;
.source "LWAPIAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/laiwang/sdk/openapi/LWAPIAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lwapiClassname:Ljava/lang/String;

.field private lwapiRandomKey:I

.field private lwapiSecret:Ljava/lang/String;

.field private lwapiToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/laiwang/sdk/openapi/LWAPIAccount$1;

    invoke-direct {v0}, Lcom/laiwang/sdk/openapi/LWAPIAccount$1;-><init>()V

    sput-object v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 1

