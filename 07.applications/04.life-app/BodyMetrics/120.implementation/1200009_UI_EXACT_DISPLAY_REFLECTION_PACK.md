# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# UI EXACT DISPLAY REFLECTION PACK
# ============================================================

status: fixed

purpose:
  - BodyMetrics の画面別表示項目を exact fixed pack として閉じる
  - API / DB / UI の読み合わせ前提を揃える
  - 実装前の UI 設計判断を固定する

fixed_now:
  - dashboard card 構成固定
  - quick record の対象固定
  - metric_detail の required sections 固定
  - trend_analysis の comparison panel 固定
  - health_score_center の total + breakdown 固定
  - weekly_review の summary 構成固定
  - goal_center の表示項目固定
  - provider_link_settings の表示責務固定
  - family_care_settings の共有編集項目固定
  - export_center の表示責務固定
  - pc / tablet three-zone layout 固定

implementation_boundary:
  - 本反映は画面設計のみ
  - UI 実装はまだ行わない
  - コンポーネント分割はまだ行わない
  - 文言細部の微修正は change request 扱いにする
