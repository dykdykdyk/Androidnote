.class final Lbutterknife/internal/ViewInjector;
.super Ljava/lang/Object;
.source "ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbutterknife/internal/ViewInjector$1;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final classPackage:Ljava/lang/String;

.field private final collectionBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbutterknife/internal/CollectionBinding;",
            "[I>;"
        }
    .end annotation
.end field

.field private parentInjector:Ljava/lang/String;

.field private final targetClass:Ljava/lang/String;

.field private final viewIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbutterknife/internal/ViewInjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
