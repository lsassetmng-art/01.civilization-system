# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# END OF LIFE PLANNER ELDERLY ACCESSIBILITY UI NOTE
# ============================================================

status: canonical-draft
phase: L9-open-points-closure
type: accessibility-and-elderly-ui-note

document_purpose:
  - 高齢者にも使いやすいUI要件を formal screen spec に補完する
  - 実装時の解釈ぶれを減らす
  - design-only のまま UI 基本方針を固定する

target_users:
  - 高齢者本人
  - 家族支援者
  - 代理入力者

ui_principles:
  - 1画面1目的を優先する
  - 長文説明より短い見出しと補足で案内する
  - 危険操作より安全導線を目立たせる
  - 高機微項目は保存前確認を増やす
  - 共有設定は owner のみが迷わず扱える構造にする

display_requirements:
  font_scale_defaults:
    - normal
    - large
    - extra_large
  recommended_default_for_elderly_mode:
    - large
  touch_target_policy:
    - 主要ボタンは押しやすい大きさを前提とする
  contrast_policy:
    - 高コントラスト表示に耐える文言構造にする
  layout_policy:
    - 長い入力フォームはカテゴリ分割する
    - 1画面に詰め込みすぎない
  wording_policy:
    - 専門用語を避ける
    - 医療/法務用語には短い説明を添える

elderly_mode_candidate:
  features:
    - 文字を大きくする
    - 1画面の項目数を減らす
    - 保存/戻るを固定位置にする
    - 危険情報入力時の警告を分かりやすくする
    - family_viewer への見せ方を単純化する
  status:
    - design-fixed
    - implementation-not-started

screen_specific_guidance:
  eol_home_dashboard:
    - 未完了項目を上位表示
    - 共有や監査など複雑導線は owner にだけ表示
  eol_medical_preferences:
    - disclaimer を入力欄の近くに置く
    - summary_text を先に見せて長文入力を後段に置く
  eol_digital_assets:
    - 平文認証情報禁止を赤系警告相当で強調する想定
  eol_handoff_pack:
    - preview -> confirm -> generate の順を固定する
  eol_sharing_settings:
    - family_viewer と delegated_editor の違いを短文で説明する

non_scope:
  - 色コードの最終確定
  - 実装コンポーネント指定
  - 端末別デザイン詳細
