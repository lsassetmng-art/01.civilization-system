# ============================================================
# LEGAL SUPPORT NEXT CHAT HANDOFF
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: handoff

current_position:
  - 初期正本の骨格はほぼ揃った
  - schema=life は固定済み
  - pricing は Free / PlusFamily(月額500円)で固定済み
  - 法律判断非提供境界は固定済み

best_next_steps:
  - 画面ごとの request / response exact payload 固定
  - entity ごとの exact field matrix 固定
  - 相談カテゴリ別テンプレート定義
  - Free / PlusFamily 機能差分表の正式化
  - 共有PDF出力項目固定

handoff_message:
  - 次チャットでは payload exact 固定に入ると実装準備度が上がる
  - その前段として field matrix を作ると後続が安定する
