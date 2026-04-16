# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# END OF LIFE PLANNER UI WORDING POLISH NOTE
# ============================================================

status: canonical-draft
phase: L12-minor-values-closure
type: ui-wording-polish-note

document_purpose:
  - formal screen specification の文言粒度を揃える
  - 高齢者に分かりやすい短文表現を補強する
  - 実装前に文言方向を固定する

wording_principles:
  - 1文を短くする
  - 専門用語を避ける
  - 必要な場合だけ短い補足を付ける
  - 危険操作や高機微操作は確認文を明示する
  - 共有相手に見える文言はやわらかくする

preferred_labels:
  eol_home_dashboard:
    - "終活の進み具合"
    - "まだ済んでいないこと"
    - "最近更新した内容"
  eol_medical_preferences:
    - "医療についての希望"
    - "迷ったら家族と相談"
  eol_care_preferences:
    - "介護についての希望"
    - "自宅か施設かの希望"
  eol_funeral_preferences:
    - "葬儀やお墓の希望"
    - "まだ未定でも大丈夫"
  eol_contract_registry:
    - "契約の一覧"
    - "解約が必要か確認"
  eol_digital_assets:
    - "デジタル情報の所在"
    - "パスワードそのものは保存しない"
  eol_document_registry:
    - "大切な書類の場所"
    - "原本がどこにあるか"
  eol_handoff_pack:
    - "家族に渡すまとめ"
    - "出力前に確認"
  eol_sharing_settings:
    - "誰に見せるか"
    - "誰に一部編集を任せるか"

warning_wording:
  dangerous_input:
    - "この欄には、パスワードそのものは入れないでください。"
  export_masking:
    - "見せたくない情報が隠れているか、出力前に確認してください。"
  medical_boundary:
    - "これは医療判断ではなく、希望の整理メモです。"
  legal_boundary:
    - "これは法的判断ではなく、整理のための情報です。"

button_wording_candidates:
  safe_primary:
    - 保存する
    - 確認する
    - 次へ進む
  safe_secondary:
    - あとで入力
    - 戻る
    - 閉じる
  avoid:
    - 実行
    - 適用
    - 強制
    - 確定処理

completion_note:
  - 文言方針は設計上固定
  - 実装時はこの方針に沿って短文化する
