.class public Lcom/sina/weibo/sdk/component/GameManager;
.super Ljava/lang/Object;
.source "GameManager.java"


# static fields
.field private static final BOUNDARY:Ljava/lang/String;

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final HTTP_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final HTTP_METHOD_POST:Ljava/lang/String; = "POST"

.field private static INVITATION_ONE_FRINED_URL:Ljava/lang/String; = null

.field private static INVITATION_URL:Ljava/lang/String; = null

.field private static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final TAG:Ljava/lang/String; = "GameManager"

.field private static URL:Ljava/lang/StringBuffer;

.field private static URL_ACHIEVEMENT_ADD_UPDATE:Ljava/lang/String;

.field private static URL_ACHIEVEMENT_READ_PLAYER_FRIENDS:Ljava/lang/String;

.field private static URL_ACHIEVEMENT_READ_PLAYER_SCORE:Ljava/lang/String;

.field private static URL_ACHIEVEMENT_RELATION_ADD_UPDATE:Ljava/lang/String;

.field private static URL_ACHIEVEMENT_SCORE_ADD_UPDATE:Ljava/lang/String;

.field private static URL_ACHIEVEMENT_USER_GAIN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "https://api.weibo.com/2/proxy/darwin/graph/game/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->URL:Ljava/lang/StringBuffer;

    .line 55
    invoke-static {}, Lcom/sina/weibo/sdk/net/HttpManager;->getBoundry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->BOUNDARY:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sina/weibo/sdk/component/GameManager;->URL:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "achievement/add.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->URL_ACHIEVEMENT_ADD_UPDATE:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sina/weibo/sdk/component/GameManager;->URL:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "achievement/gain/add.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->URL_ACHIEVEMENT_RELATION_ADD_UPDATE:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sina/weibo/sdk/component/GameManager;->URL:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "score/add.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->URL_ACHIEVEMENT_SCORE_ADD_UPDATE:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sina/weibo/sdk/component/GameManager;->URL:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "score/read_player.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->URL_ACHIEVEMENT_READ_PLAYER_SCORE:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sina/weibo/sdk/component/GameManager;->URL:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "score/read_player_friends.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->URL_ACHIEVEMENT_READ_PLAYER_FRIENDS:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sina/weibo/sdk/component/GameManager;->URL:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "achievement/user_gain.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->URL_ACHIEVEMENT_USER_GAIN:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "http://widget.weibo.com/invitation/app.php?"

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->INVITATION_URL:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "http://widget.weibo.com/invitation/appinfo.php?"

    sput-object v0, Lcom/sina/weibo/sdk/component/GameManager;->INVITATION_ONE_FRINED_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

