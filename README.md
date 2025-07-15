# Annict Slack Notifier 🎬

Annictの「見たいアニメ一覧」をSlackに通知するシンプルなスクリプトです。

https://annict.com/

## 使い方

### 必要なもの

- Annictのアクセストークン（Bearer Token）
- SlackのWebhook URL

### 設定

`.env.sample` をコピーして `.env` を作り、以下の値を入力：

```bash
cp .env.sample .env
```

### 実行方法
```bash
docker build -t annict-notifier .
docker run --env-file .env annict-notifier
```