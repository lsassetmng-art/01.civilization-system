# ============================================================
# TRAINING COACH HELP FAQ EXACT DESIGN
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
  - help / faq の初期設計を固定する
  - サポート問い合わせ前に自己解決しやすくする
  - AIチャットサポート導線と FAQ の役割を分ける

help_policy:
  - FAQ は短く、分かりやすく、責任境界を明確にする
  - 医療相談は FAQ で代替しない
  - AI support は FAQ で解決しない場合の次導線とする
  - Premium 訴求のためだけの FAQ にしない

help_sections_v1:
  - getting_started
  - plan_creation
  - session_execution
  - streak_and_progress
  - notifications
  - premium
  - safety
  - data_and_privacy
  - troubleshooting

faq_inventory:

FAQ-0001:
  category: getting_started
  question_key: TC_FAQ_0001_Q
  answer_key: TC_FAQ_0001_A
  intent:
    - TrainingCoach は何をするアプリか

FAQ-0002:
  category: plan_creation
  question_key: TC_FAQ_0002_Q
  answer_key: TC_FAQ_0002_A
  intent:
    - 初期プランは後から変更できるか

FAQ-0003:
  category: session_execution
  question_key: TC_FAQ_0003_Q
  answer_key: TC_FAQ_0003_A
  intent:
    - セッションを途中でやめたらどうなるか

FAQ-0004:
  category: streak_and_progress
  question_key: TC_FAQ_0004_Q
  answer_key: TC_FAQ_0004_A
  intent:
    - streak はどう計算されるか

FAQ-0005:
  category: notifications
  question_key: TC_FAQ_0005_Q
  answer_key: TC_FAQ_0005_A
  intent:
    - 通知を止めたい / 変えたい

FAQ-0006:
  category: premium
  question_key: TC_FAQ_0006_Q
  answer_key: TC_FAQ_0006_A
  intent:
    - Premium で何が増えるか

FAQ-0007:
  category: safety
  question_key: TC_FAQ_0007_Q
  answer_key: TC_FAQ_0007_A
  intent:
    - 体調が悪いときはどうすればよいか

FAQ-0008:
  category: data_and_privacy
  question_key: TC_FAQ_0008_Q
  answer_key: TC_FAQ_0008_A
  intent:
    - データはどこに保存されるか

FAQ-0009:
  category: troubleshooting
  question_key: TC_FAQ_0009_Q
  answer_key: TC_FAQ_0009_A
  intent:
    - BodyMetrics 連携が反映されない

FAQ-0010:
  category: troubleshooting
  question_key: TC_FAQ_0010_Q
  answer_key: TC_FAQ_0010_A
  intent:
    - ガイドが表示されない

faq_answer_style:
  - 短い
  - 行動が分かる
  - 医療断定をしない
  - 過度な専門用語を使わない

escalation_rules:
  - FAQ で解決しない -> AIサポート
  - safety 系で症状継続 -> 医療相談検討文言
  - billing 系は platform billing help へ誘導候補

ui_notes:
  - FAQ はカテゴリ別一覧 + 検索候補
  - 画面内コンテキスト FAQ も将来候補
