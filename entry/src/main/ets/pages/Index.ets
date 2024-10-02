import { DialogView } from './components/DialogView';
import { DialogViewController } from './controller/DialogViewController';

@Entry
@Component
struct Index {
  @State message: string = '弹窗页面级控制解决方案';
  // 创建控制器对象
  @State dialogViewController: DialogViewController = new DialogViewController()

  build() {
    Stack() {
      // 页面主容器
      Column() {
        Text("这是主页面")
          .fontSize(20)
          .fontWeight(FontWeight.Bold)

        Button("打开隐私政策弹窗")
          .margin(10)
          .onClick(() => {
            this.dialogViewController.openPrivacyDialog()
          })

        Button("打开营销广告弹窗")
          .margin(10)
          .onClick(() => {
            this.dialogViewController.openAdvertDialog()
          })
      }
      .padding({ top: 80 })
      .width("100%")
      .height("100%")

      // 页面级自定义弹窗主容器
      DialogView({ dialogViewController: this.dialogViewController })
    }
    .width("100%")
    .height("100%")
  }
}