.class public interface abstract annotation Lbutterknife/OnFocusChange;
.super Ljava/lang/Object;
.source "OnFocusChange.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lbutterknife/internal/ListenerClass;
    method = {
        .subannotation Lbutterknife/internal/ListenerMethod;
            name = "onFocusChange"
            parameters = {
                "android.view.View",
                "boolean"
            }
        .end subannotation
    }
    setter = "setOnFocusChangeListener"
    targetType = "android.view.View"
    type = "android.view.View.OnFocusChangeListener"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()[I
.end method
