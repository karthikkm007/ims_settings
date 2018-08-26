.class Lcom/qualcomm/qti/ims/ImsSettings$1;
.super Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;
.source "ImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/ims/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/ims/ImsSettings;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/ims/ImsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/ims/ImsSettings;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPacketCount(IJ)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "packetCount"    # J

    .prologue
    .line 183
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->-get1(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-virtual {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 185
    const v3, 0x7f060009

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "sPc":Ljava/lang/String;
    invoke-static {p1}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetPacketCount: get failed. errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap1(Lcom/qualcomm/qti/ims/ImsSettings;Ljava/lang/String;)V

    .line 182
    return-void

    .line 189
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetPacketCount: packetCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    .line 191
    .local v0, "pc":Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packetCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onGetPacketErrorCount(IJ)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "packetErrorCount"    # J

    .prologue
    .line 198
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->-get2(Lcom/qualcomm/qti/ims/ImsSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-virtual {v2}, Lcom/qualcomm/qti/ims/ImsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 200
    const v3, 0x7f06000a

    .line 199
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "sPec":Ljava/lang/String;
    invoke-static {p1}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetPacketErrorCount: get failed. errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/ims/ImsSettings$1;->this$0:Lcom/qualcomm/qti/ims/ImsSettings;

    invoke-static {v2, v1}, Lcom/qualcomm/qti/ims/ImsSettings;->-wrap1(Lcom/qualcomm/qti/ims/ImsSettings;Ljava/lang/String;)V

    .line 197
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/ims/ImsSettings;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetPacketErrorCount: packetErrorCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    .line 206
    .local v0, "pec":Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packetErrorCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
