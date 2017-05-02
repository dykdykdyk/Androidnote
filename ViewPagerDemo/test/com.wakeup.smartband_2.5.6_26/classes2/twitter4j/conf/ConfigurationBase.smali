.class Ltwitter4j/conf/ConfigurationBase;
.super Ljava/lang/Object;
.source "ConfigurationBase.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/conf/Configuration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;
    }
.end annotation


# static fields
.field private static final instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/conf/ConfigurationBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x55b3f2b9f8085720L


# instance fields
.field private applicationOnlyAuthEnabled:Z

.field private asyncNumThreads:I

.field private contributingTo:J

.field private daemonEnabled:Z

.field private debug:Z

.field private dispatcherImpl:Ljava/lang/String;

.field private httpConf:Ltwitter4j/HttpClientConfiguration;

.field private httpRetryCount:I

.field private httpRetryIntervalSeconds:I

.field private httpStreamingReadTimeout:I

.field private includeEntitiesEnabled:Z

.field private includeMyRetweetEnabled:Z

.field private jsonStoreEnabled:Z

.field private loggerFactory:Ljava/lang/String;

.field private mbeanEnabled:Z

.field private mediaProvider:Ljava/lang/String;

.field private mediaProviderAPIKey:Ljava/lang/String;

.field private mediaProviderParameters:Ljava/util/Properties;

.field private oAuth2AccessToken:Ljava/lang/String;

.field private oAuth2InvalidateTokenURL:Ljava/lang/String;

.field private oAuth2Scope:Ljava/lang/String;

.field private oAuth2TokenType:Ljava/lang/String;

.field private oAuth2TokenURL:Ljava/lang/String;

.field private oAuthAccessToken:Ljava/lang/String;

.field private oAuthAccessTokenSecret:Ljava/lang/String;

.field private oAuthAccessTokenURL:Ljava/lang/String;

.field private oAuthAuthenticationURL:Ljava/lang/String;

.field private oAuthAuthorizationURL:Ljava/lang/String;

.field private oAuthConsumerKey:Ljava/lang/String;

.field private oAuthConsumerSecret:Ljava/lang/String;

.field private oAuthRequestTokenURL:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private restBaseURL:Ljava/lang/String;

.field private siteStreamBaseURL:Ljava/lang/String;

.field private stallWarningsEnabled:Z

.field private streamBaseURL:Ljava/lang/String;

.field private trimUserEnabled:Z

.field private uploadBaseURL:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private userStreamBaseURL:Ljava/lang/String;

.field private userStreamRepliesAllEnabled:Z

.field private userStreamWithFollowingsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .registers 11

