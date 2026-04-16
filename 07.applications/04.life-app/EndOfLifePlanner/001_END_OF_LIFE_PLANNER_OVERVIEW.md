
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# END OF LIFE PLANNER OVERVIEW
# ============================================================

status: canonical-draft
phase: L1-spec-placement
app_name:
  en: EndOfLifePlanner
  ja: 終活サポートアプリ

positioning:
  - 終活と引継ぎ整理に特化した独立アプリ
  - 人生設計の一部だが、分かりやすさのため独立配置
  - 医療/介護/葬儀/契約/デジタル遺品を家族引継ぎ前提で整理する

core_purpose:
  - 終活情報の整理
  - 医療/介護/葬儀の希望整理
  - デジタル遺品・契約整理
  - 家族への引継ぎ準備
  - 相続準備の入口整理

main_users:
  - 個人
  - 高齢者
  - 家族支援者

roles:
  owner:
    - 意思記録
    - 情報整理
    - 共有設定
  family_viewer:
    - 許可範囲閲覧
  delegated_editor:
    - 一部編集
    - 代理入力

pricing:
  free: 0
  family: 500
  family_plus: 900

support_policy:
  - AIチャットのみ
  - 人による医療/介護/法務/税務の判断は含まない

must_functions:
  - 緊急連絡先
  - 家族情報
  - 医療意思
  - 介護意思
  - 葬儀/墓の希望
  - 契約一覧
  - デジタル資産メモ
  - 引継ぎメッセージ
  - 書類一覧

should_functions:
  - チェックリスト
  - 共有パック出力
  - 家族向けメモ
  - 重要情報の所在整理
  - 相続相談導線

multi_language: true
multi_currency: true
multi_device:
  iphone: true
  android: true
  pc: true
  tablet: true
