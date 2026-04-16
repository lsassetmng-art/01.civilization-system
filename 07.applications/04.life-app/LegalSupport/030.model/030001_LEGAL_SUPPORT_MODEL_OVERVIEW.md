
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT MODEL OVERVIEW
# ============================================================

status: canonical-initialized
system: LegalSupport

entities:
  legal_case:
    purpose:
      - 相談案件の親単位
  fact_timeline:
    purpose:
      - 出来事の時系列管理
  stakeholder:
    purpose:
      - 関係者整理
  document_item:
    purpose:
      - 書類管理
  question_list:
    purpose:
      - 確認事項管理
  consultation_note:
    purpose:
      - 相談履歴記録
  action_item:
    purpose:
      - 次回アクション管理
  deadline_item:
    purpose:
      - 重要期限管理
  expense_record:
    purpose:
      - 相談費用・手数料記録
  export_bundle:
    purpose:
      - 共有出力単位

model_rules:
  - 事実、推測、未確認を分けて保持する
  - 金額は通貨コード付きで保持する
  - 共有範囲は案件単位・書類単位で持てるようにする
