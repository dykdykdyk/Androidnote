.class public interface abstract annotation Lbutterknife/OnClick;
.super Ljava/lang/Object;
.source "OnClick.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lbutterknife/internal/ListenerClass;
    method = {
        .subannotation Lbutterknife/internal/ListenerMethod;
            name = "onClick"
            parameters = {
                "android.view.View"
            }
        .end subannotation
    }
    setter = "setOnClickListener"
    targetType = "android.view.View"
    type = "android.view.View.OnClickListener"
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
