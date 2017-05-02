.class public Landroid/support/design/internal/NavigationMenuPresenter;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;,
        Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
    }
.end annotation


# static fields
.field private static final STATE_ADAPTER:Ljava/lang/String; = "android:menu:adapter"

.field private static final STATE_HIERARCHY:Ljava/lang/String; = "android:menu:list"


# instance fields
.field private mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

.field private mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

.field private mHeader:Landroid/widget/LinearLayout;

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mId:I

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private mMenuView:Landroid/support/design/internal/NavigationMenuView;

.field private mPaddingSeparator:I

.field private mPaddingTopDefault:I

.field private mTextAppearance:I

.field private mTextAppearanceSet:Z

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/internal/NavigationMenuPresenter;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearance:I

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/design/internal/NavigationMenuPresenter;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    return v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 216
    return-void
.end method

.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mId:I

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTintList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .registers 6
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    if-nez v0, :cond_3e

    .line 98
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/R$layout;->design_navigation_menu:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuView;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    .line 100
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-nez v0, :cond_1c

    .line 101
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-direct {v0, p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;-><init>(Landroid/support/design/internal/NavigationMenuPresenter;)V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    .line 103
    :cond_1c
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/design/R$layout;->design_navigation_item_header:I

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    .line 105
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/internal/NavigationMenuView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 106
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v0, p0}, Landroid/support/design/internal/NavigationMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    :cond_3e
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .registers 6
    .param p1, "res"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 207
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 209
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .prologue
    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 87
    iput-object p2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroid/support/design/R$dimen;->design_navigation_padding_top_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    .line 91
    sget v1, Landroid/support/design/R$dimen;->design_navigation_separator_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    .line 93
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_9

    .line 132
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 134
    :cond_9
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 189
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuView;->getHeaderViewsCount()I

    move-result v2

    sub-int v1, p3, v2

    .line 190
    .local v1, "positionInAdapter":I
    if-ltz v1, :cond_31

    .line 191
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 192
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v0

    .line 193
    .local v0, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 194
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2, v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V

    .line 196
    :cond_26
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0, p0, v3}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/internal/view/menu/MenuPresenter;I)Z

    .line 197
    invoke-virtual {p0, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 198
    invoke-virtual {p0, v3}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 200
    .end local v0    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_31
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "parcelable"    # Landroid/os/Parcelable;

    .prologue
    .line 176
    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 177
    .local v2, "state":Landroid/os/Bundle;
    const-string/jumbo v3, "android:menu:list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 178
    .local v1, "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v1, :cond_11

    .line 179
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v3, v1}, Landroid/support/design/internal/NavigationMenuView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 181
    :cond_11
    const-string/jumbo v3, "android:menu:adapter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 182
    .local v0, "adapterState":Landroid/os/Bundle;
    if-eqz v0, :cond_1f

    .line 183
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3, v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 185
    :cond_1f
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    if-eqz v2, :cond_19

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 165
    .local v0, "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2, v0}, Landroid/support/design/internal/NavigationMenuView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 166
    const-string/jumbo v2, "android:menu:list"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 168
    .end local v0    # "hierarchy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_19
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v2, :cond_29

    .line 169
    const-string/jumbo v2, "android:menu:adapter"

    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->createInstanceState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 171
    :cond_29
    return-object v1
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .registers 3
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1b

    .line 221
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    iget v1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingTopDefault:I

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mMenuView:Landroid/support/design/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/support/design/internal/NavigationMenuView;->setPadding(IIII)V

    .line 223
    :cond_1b
    return-void
.end method

.method public setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 121
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .line 122
    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .registers 3
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V

    .line 204
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 157
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mId:I

    .line 158
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "itemBackground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 256
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 257
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 231
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 233
    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 246
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearance:I

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 249
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 241
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 243
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 3
    .param p1, "updateSuspended"    # Z

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_9

    .line 261
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setUpdateSuspended(Z)V

    .line 263
    :cond_9
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3
    .param p1, "cleared"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter;->mAdapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    .line 117
    :cond_9
    return-void
.end method
