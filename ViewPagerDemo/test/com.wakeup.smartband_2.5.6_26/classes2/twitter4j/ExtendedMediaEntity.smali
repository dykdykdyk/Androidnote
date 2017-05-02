.class public interface abstract Ltwitter4j/ExtendedMediaEntity;
.super Ljava/lang/Object;
.source "ExtendedMediaEntity.java"

# interfaces
.implements Ltwitter4j/MediaEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/ExtendedMediaEntity$Variant;
    }
.end annotation


# virtual methods
.method public abstract getVideoAspectRatioHeight()I
.end method

.method public abstract getVideoAspectRatioWidth()I
.end method

.method public abstract getVideoDurationMillis()J
.end method

.method public abstract getVideoVariants()[Ltwitter4j/ExtendedMediaEntity$Variant;
.end method
