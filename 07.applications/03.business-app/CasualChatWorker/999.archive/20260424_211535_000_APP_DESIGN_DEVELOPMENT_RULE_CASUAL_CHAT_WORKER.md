# ============================================================
# アプリ設計・開発統合規約
# CasualChatWorker / 雑談ワーカー契約アプリ
# 無料チケット補足版
# ============================================================

## 1. 対象

- アプリ名: CasualChatWorker
- 表示名: 雑談ワーカー
- 所属カテゴリ: 03.business-app
- 設計書置き場: ~/01.civilization-system/07.applications/03.business-app/CasualChatWorker
- 実装置き場: ~/03.civilization-development/03.business-os/CasualChatWorker
- 主DBスキーマ: business
- 参照DBスキーマ: aiworker / cx22073jw / app_common

## 2. 月初無料チケット正本

- 毎月月初に無料チケットを2枚配布する
- 1枚につき30分無料
- 毎月最大60分無料
- Friend / Lover 共通で利用可能
- 価格正本は30分500円、全AI共通のまま維持する
- 無料チケットは価格変更ではなく、30分単位の無料利用権として扱う
- v1では未使用分の翌月繰越なしを正本候補とする

## 3. DB成果物候補

- business.chat_worker_free_ticket_grant
- business.chat_worker_free_ticket_balance
- business.chat_worker_free_ticket_usage

