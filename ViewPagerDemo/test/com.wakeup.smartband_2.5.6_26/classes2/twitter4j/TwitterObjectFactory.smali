.class public final Ltwitter4j/TwitterObjectFactory;
.super Ljava/lang/Object;
.source "TwitterObjectFactory.java"


# static fields
.field private static final rawJsonMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredAtleastOnce:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Ltwitter4j/TwitterObjectFactory$1;

    invoke-direct {v0}, Ltwitter4j/TwitterObjectFactory$1;-><init>()V

    sput-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    .line 333
    const/4 v0, 0x0

    sput-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

