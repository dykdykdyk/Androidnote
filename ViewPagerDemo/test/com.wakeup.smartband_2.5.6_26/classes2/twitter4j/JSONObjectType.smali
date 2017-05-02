.class public final Ltwitter4j/JSONObjectType;
.super Ljava/lang/Object;
.source "JSONObjectType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/JSONObjectType$Type;
    }
.end annotation


# static fields
.field private static final logger:Ltwitter4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-class v0, Ltwitter4j/JSONObjectType;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/JSONObjectType;->logger:Ltwitter4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

