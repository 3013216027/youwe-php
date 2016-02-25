# 备忘

- 功能1: 注册后可直接添加感兴趣的服务(活动类型)
 - 向服务端的分类post请求可参考发布需求时: app/src/main/java/com/insthub/O2OMobile/Activity/C1\_PublishOr\*.java
 - 服务端处理在 app/controllers/Rest/MyservicesController.php中添加

- 功能2: 消息对话
 - 消息处理逻辑参考 app/controllers/Rest/MessageController.php
 - 需要独立出一个“用户消息”控制器(from: 系统消息)
