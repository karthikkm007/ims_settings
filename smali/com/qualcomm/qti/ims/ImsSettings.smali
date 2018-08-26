.class public Lcom/qualcomm/qti/ims/ImsSettings;
.super Landroid/preference/PreferenceActivity;
.source "ImsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/ims/ImsSettings$1;,
        Lcom/qualcomm/qti/ims/ImsSettings$2;
    }
.end annotation


# static fields
.field public static final SUB_ID_EXTRA:Ljava/lang/String; = "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private QtiImsExtListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

.field private mButtonCsRetry:Landroid/preference/SwitchPreference;

.field private mDeflectNum:Landroid/preference/EditTextPreference;

.field private mImsConfig:Landroid/telephony/ims/ImsConfig;

.field private mPcPreference:Landroid/preference/Preference;

.field private mPerPreference:Landroid/preference/Preference;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mVideoCallQuality:Landroid/preference/ListPreference;

.field prefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "result"    # I

    .prologue
    invoke-static {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->hasRequestFailed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/ims/ImsSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "displayStr"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/ims/ImsSettings;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/ims/ImsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->onPcPrefClicked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/ims/ImsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->onPerPrefClicked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 50
    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    .line 51
    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    .line 53
    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    .line 54
    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    .line 179
    new-instance v0, Lcom/qualcomm/qti/ims/ImsSettings$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/ims/ImsSettings$1;-><init>(Lcom/qualcomm/qti/ims/ImsSettings;)V

    .line 178
    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->QtiImsExtListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    .line 235
    new-instance v0, Lcom/qualcomm/qti/ims/ImsSettings$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/ims/ImsSettings$2;-><init>(Lcom/qualcomm/qti/ims/ImsSettings;)V

    .line 234
    iput-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->prefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 39
    return-void
.end method

.method private displayCsRetryOpions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "displayCsRetryOptions PreferenceScreen is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCsRetryConfigEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 131
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    .line 133
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    invoke-static {v1}, Lorg/codeaurora/ims/utils/QtiCallUtils;->isCsRetryEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 118
    :cond_2
    return-void
.end method

.method private displayDeflectNumEditor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 339
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_1

    .line 340
    :cond_0
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "displayDeflectNumEditor PreferenceScreen is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 349
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->isCallDeflectionOrTransferEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 351
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 353
    invoke-static {v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 356
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    .end local v0    # "number":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 359
    .restart local v0    # "number":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayPcPerOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "displayPcPerOptions PreferenceScreen is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 149
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->isRtpStatisticsQueryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 152
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 153
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->prefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->prefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    :cond_1
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "displayStr"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    return-void
.end method

.method private getVideoQuality()V
    .locals 5

    .prologue
    .line 290
    const/4 v1, -0x1

    .line 292
    .local v1, "videoQuality":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Landroid/telephony/ims/ImsConfig;

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Landroid/telephony/ims/ImsConfig;

    .line 294
    const/16 v3, 0x37

    .line 293
    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsConfig;->getProvisionedValue(I)I
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->loadVideoCallQualityPrefs(I)V

    .line 289
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/telephony/ims/ImsException;
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVideoQuality failed. Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static hasRequestFailed(I)Z
    .locals 1
    .param p0, "result"    # I

    .prologue
    const/4 v0, 0x0

    .line 317
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCallDeflectionOrTransferEnabled()Z
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 334
    const v1, 0x7f050001

    .line 333
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCallTransferEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRtpStatisticsQueryEnabled()Z
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 250
    const/high16 v1, 0x7f050000

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private loadVideoCallQualityPrefs(I)V
    .locals 4
    .param p1, "vqValue"    # I

    .prologue
    .line 283
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadVideoCallQualityPrefs, vqValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/ims/ImsSettings;->videoQualityToString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "videoQuality":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method private onPcPrefClicked()V
    .locals 4

    .prologue
    .line 213
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPcPrefClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_0
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->QtiImsExtListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QtiImsExtManager;->getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 217
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPacketCount failed. Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPerPrefClicked()V
    .locals 4

    .prologue
    .line 224
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPerPrefClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :try_start_0
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->QtiImsExtListener:Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QtiImsExtManager;->getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 228
    iget-object v1, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    sget-object v1, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPacketErrorCount failed. Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCsRetry(Z)V
    .locals 3
    .param p1, "turnOn"    # Z

    .prologue
    .line 168
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 170
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 171
    const-string/jumbo v2, "qti.settings.cs_retry"

    .line 169
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    return-void

    .line 168
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private setVideoQuality(I)Z
    .locals 5
    .param p1, "quality"    # I

    .prologue
    .line 303
    const/4 v1, 0x1

    .line 305
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Landroid/telephony/ims/ImsConfig;

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Landroid/telephony/ims/ImsConfig;

    const/16 v3, 0x37

    invoke-virtual {v2, v3, p1}, Landroid/telephony/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 312
    :cond_0
    :goto_0
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVideoQuality, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {v1}, Lcom/qualcomm/qti/ims/ImsSettings;->hasRequestFailed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/telephony/ims/ImsException;
    sget-object v2, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVideoQuality failed. Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private videoQualityToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "quality"    # I

    .prologue
    .line 321
    packed-switch p1, :pswitch_data_0

    .line 328
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 323
    :pswitch_0
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :pswitch_1
    const v0, 0x7f060003

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 79
    sget-object v3, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "start ImsSettings"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/high16 v3, 0x7f020000

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/ims/ImsSettings;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 85
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    if-nez v3, :cond_0

    .line 86
    sget-object v3, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "PreferenceScreen is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 91
    const v4, 0x7f060001

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    .line 92
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    const v4, 0x7f060007

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    .line 95
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    const v4, 0x7f060008

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    .line 97
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 98
    const v4, 0x7f060010

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    .line 102
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v5

    .line 101
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 103
    .local v2, "subId":I
    sget-object v3, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/telephony/ims/ImsManager;->getInstance(Landroid/content/Context;I)Landroid/telephony/ims/ImsManager;

    move-result-object v1

    .line 105
    .local v1, "imsManager":Landroid/telephony/ims/ImsManager;
    invoke-virtual {v1}, Landroid/telephony/ims/ImsManager;->getConfigInterface()Landroid/telephony/ims/ImsConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Landroid/telephony/ims/ImsConfig;
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "imsManager":Landroid/telephony/ims/ImsManager;
    .end local v2    # "subId":I
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 112
    const v4, 0x7f06000d

    .line 111
    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/ims/ImsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    .line 113
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iput-object v6, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mImsConfig:Landroid/telephony/ims/ImsConfig;

    .line 108
    sget-object v3, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "ImsService is not running"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 69
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPcPreference:Landroid/preference/Preference;

    .line 72
    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mPerPreference:Landroid/preference/Preference;

    .line 73
    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    .line 74
    iput-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 67
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->onBackPressed()V

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 255
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mVideoCallQuality:Landroid/preference/ListPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    if-nez p2, :cond_1

    .line 257
    sget-object v3, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPreferenceChange invalid value received"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    :goto_0
    return v4

    .line 259
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 260
    .local v1, "quality":I
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->setVideoQuality(I)Z

    move-result v2

    .line 261
    .local v2, "result":Z
    if-eqz v2, :cond_2

    .line 262
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->loadVideoCallQualityPrefs(I)V

    .line 264
    :cond_2
    return v2

    .line 266
    .end local v1    # "quality":I
    .end local v2    # "result":Z
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mDeflectNum:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 267
    if-nez p2, :cond_4

    .line 268
    sget-object v3, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPreferenceChange Deflect number invalid value received"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_4
    invoke-virtual {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-static {v3, v5}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->setCallDeflectNumber(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayDeflectNumEditor()V

    goto :goto_0

    .line 274
    :cond_5
    iget-object v3, p0, Lcom/qualcomm/qti/ims/ImsSettings;->mButtonCsRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 275
    check-cast v0, Landroid/preference/SwitchPreference;

    .line 276
    .local v0, "csRetryPref":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 277
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/ims/ImsSettings;->setCsRetry(Z)V

    goto :goto_0

    :cond_6
    move v3, v4

    .line 276
    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 59
    sget-object v0, Lcom/qualcomm/qti/ims/ImsSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->getVideoQuality()V

    .line 61
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayPcPerOptions()V

    .line 62
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayDeflectNumEditor()V

    .line 63
    invoke-direct {p0}, Lcom/qualcomm/qti/ims/ImsSettings;->displayCsRetryOpions()V

    .line 57
    return-void
.end method
