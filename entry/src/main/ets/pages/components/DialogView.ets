import { DialogViewController } from '../controller/DialogViewController'
import { AdvertDialog } from './AdvertDialog'
import { PrivacyDialog } from './PrivacyDialog'

@Component
export struct DialogView {
  @ObjectLink dialogViewController: DialogViewController

  build() {
    Stack() {
      if (this.dialogViewController.getPrivacyDialogState()) {
        // 隐私政策弹窗
        PrivacyDialog({ dialogViewController: this.dialogViewController })
      }
      if (this.dialogViewController.getAdvertDialogState()) {
        // 营销广告弹窗
        AdvertDialog({ dialogViewController: this.dialogViewController })
      }
    }
  }
}