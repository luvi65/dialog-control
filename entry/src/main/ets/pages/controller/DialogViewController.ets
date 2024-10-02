@Observed
export class DialogViewController {
  /**
   * 隐私弹窗展示状态
   */
  private privacyDialogState: boolean = false
  /**
   * 营销广告弹窗状态
   */
  private advertDialogState: boolean = false

  /**
   * 获取隐私弹窗展示状态
   * @returns
   */
  getPrivacyDialogState(): boolean {
    return this.privacyDialogState
  }

  /**
   * 获取营销广告弹窗状态
   * @returns
   */
  getAdvertDialogState(): boolean {
    return this.advertDialogState
  }

  /**
   * 打开隐私弹窗
   */
  openPrivacyDialog() {
    this.privacyDialogState = true
  }

  /**
   * 关闭隐私弹窗
   */
  closePrivacyDialog() {
    this.privacyDialogState = false
  }

  /**
   * 打开营销广告弹窗
   */
  openAdvertDialog() {
    this.advertDialogState = true
  }

  /**
   * 关闭营销广告弹窗
   */
  closeAdvertDialog() {
    this.advertDialogState = false
  }
}