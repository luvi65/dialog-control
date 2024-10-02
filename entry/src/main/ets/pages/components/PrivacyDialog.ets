import { DialogViewController } from '../controller/DialogViewController'
import { router } from '@kit.ArkUI'

@Component
export struct PrivacyDialog {
  @ObjectLink dialogViewController: DialogViewController

  build() {
    RelativeContainer() {
      Column() {
        Text("用户协议和隐私政策说明")
          .fontWeight(FontWeight.Bold)
        Text() {
          Span("在你使用【轻校集 截图收集托管平台】服务之前，请仔细阅读")
          Span("《轻校集 截图收集托管平台隐私保护指引》")
            .fontColor("#ff1773ff")
            .onClick(() => {
              router.pushUrl({ url: "pages/PrivacyDetail" })
            })
          Span("。如你同意《轻校集 截图收集托管平台隐私保护指引》，请点击 同意 开始使用【轻校集 截图收集托管平台】\"")
        }
        .margin({ top: 15 })
        .fontSize(13)
        .fontColor("#ff4c4c4c")

        Text("不同意").margin(15)
          .fontSize(14)
          .fontColor("#ff393939")
          .onClick(() => {
            this.dialogViewController.closePrivacyDialog()
          })
        Button("同意")
          .width(120)
          .onClick(() => {
            this.dialogViewController.closePrivacyDialog()
          })
      }
      .padding(20)
      .width(300)
      .borderRadius(10)
      .backgroundColor("#fff")
      .alignRules({
        middle: { anchor: "__container__", align: HorizontalAlign.Center },
        center: { anchor: "__container__", align: VerticalAlign.Center }
      })
      .id("row1")
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#81000000")
  }
}