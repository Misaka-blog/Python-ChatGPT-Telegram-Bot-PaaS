# Python ChatGPT Telegram Bot for PaaS

TIPS: 可点击仓库的“Use this template”在仓库的原基础上创建私库

![image](https://user-images.githubusercontent.com/122191366/212063458-2def0e1a-805a-4451-ae62-324b67abee47.png)

## 项目特点

* 本项目用于在任意一家 PaaS 云服务商部署 Python ChatGPT Telegram Bot ，采用的方案为 Nginx + Python Bot
* 集成哪吒探针，可以自由选择是否安装

## 部署

* 注册任意一家PaaS云服务商
* 根据PaaS云服务商的不同绑定自己的 github 账户或使用项目提供的 Actions CI 生成 DockerHub 镜像，严重建议小号 + 私库
* 项目用到的变量
  | 变量名 | 是否必须 | 默认值 | 备注 |
  | ------------ | ------ | ------ | ------ |
  | TG_BOT_TOKEN | 是 |  | 可在 @BotFather 获取 |
  | ALLOWED_CHATS | 是 |  | 可在 @userinfobot 获取 |
  | OPENAI_KEY | 是 |  | 可在 https://platform.openai.com/account/api-keys 获取 |
  | NEZHA_SERVER | 否 |        | 哪吒探针服务端的 IP 或域名 |
  | NEZHA_PORT   | 否 |        | 哪吒探针服务端的端口 |
  | NEZHA_KEY    | 否 |        | 哪吒探针客户端专用 Key |

* GitHub Actions 用到的变量

  |     变量名     |     备注       |
  | ------------- | -------------- |
  |DOCKER_USERNAME|Docker Hub 用户名|
  |DOCKER_PASSWORD|Docker Hub 密码  |
  |DOCKER_REPO    |Docker Hub 仓库名|

![image](https://user-images.githubusercontent.com/116990986/211692321-34df154a-320a-448f-9abe-2efab9c53550.png)

## 鸣谢

pyfbsdk59 的 Python ChatGPT Telegram Bot 项目：https://github.com/pyfbsdk59/Python-ChatGPT-TelegramBot-Docker

## 免责声明

* 本程序仅供学习了解, 非盈利目的，请于下载后 24 小时内删除, 不得用作任何商业用途, 文字、数据及图片均有所属版权, 如转载须注明来源。
* 使用本程序必循遵守部署免责声明。使用本程序必循遵守部署服务器所在地、所在国家和用户所在国家的法律法规, 程序作者不对使用者任何不当行为负责.

## 赞助

爱发电：https://afdian.net/a/Misaka-blog

![afdian-MisakaNo の 小破站](https://user-images.githubusercontent.com/122191366/211533469-351009fb-9ae8-4601-992a-abbf54665b68.jpg)