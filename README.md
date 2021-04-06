# BeeHive 组件化练习

![](https://github.com/LiuPengKun1993/OCSwiftComponentDemo/blob/main/resources/component001.jpg)

如图：壳工程中只有 `AppDelegate` 文件，所有功能及业务均由组件完成；

组件之间的通信使用的是 BeeHive；

为了节省时间，我这里使用的是本地 pod；

示例代码组件介绍：
  - ComponentServicesDemo：协议组件，里面存放一些协议；
  - OCSwiftComponentMain：main 组件，里面有一些 tabbar、navigationbar 等；
  - OCSwiftComponentA：类似的功能或业务组件；

整体 demo 较为简单，主要是学习组件化的架构及了解组件之间的通信；

下载后执行 `pod install` 即可。

---

TODO：
  - 练习 OC/Swift 组件化混编

优秀博客：
  - [京东App Swift 混编及组件化落地](https://mp.weixin.qq.com/s/TRRjyB7vwwnYNb2Yd9FDIw)
  - [百度App Objective-C/Swift 组件化混编之路（一）](https://mp.weixin.qq.com/s/Vk6KNT_Ca_0se2eckYRuBg)
  - [百度App Objective-C/Swift 组件化混编之路（二）- 工程化](https://mp.weixin.qq.com/s/xA3g0GdNvfKNgfvG6imEvw)
