#!/bin/bash
set -euo pipefail

MESSAGES=$(curl -H "Authorization: Bearer $ACCESS_TOKEN" \
-X GET https://api.annict.com/v1/me/works?filter_status=wanna_watch \
  | jq -r '.works[].title' \
  | awk '{print "- " $0}' \
  | sed '1i 見たい作品一覧 :bell: :' \
  | sed '$a\\nついでに来季アニメもチェック :heart_eyes_cat: https://annict.com/works/')

curl -X POST -H "Content-type: application/json"\
  --data "{\"text\":\"${MESSAGES}\"}"\
  "$SLACK_WEBHOOK_URL"
