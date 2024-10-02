import { DialogViewController } from '../controller/DialogViewController'

@Component
export struct AdvertDialog {
  @ObjectLink dialogViewController: DialogViewController

  build() {
    Column() {

    }
    .width("100%")
    .height("100%")
    .backgroundColor("#81000000")
  }
}