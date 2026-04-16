# ============================================================
# LEGAL SUPPORT APP READING ORDER
# ============================================================

status: canonical-draft
phase: design-only

recommended_reading_order:
  step_1:
    files:
      - 000001_APP_OVERVIEW.md
      - 010.constitution/0100001_LEGAL_SUPPORT_CONSTITUTION_CANONICAL.md
    goal:
      - アプリの立ち位置と禁止領域を理解する

  step_2:
    files:
      - 020.architecture/0200001_ARCHITECTURE_OVERVIEW.md
      - 020.architecture/010.legal-support/0200103_SYSTEM_COMPOSITION_CANONICAL.md
      - 020.architecture/010.legal-support/0200104_COMPONENT_RESPONSIBILITY_CANONICAL.md
    goal:
      - 全体構成とコンポーネント責務を把握する

  step_3:
    files:
      - 090.interface/0900001_INTERFACE_OVERVIEW.md
      - 090.interface/010.screens/0900101_SCREEN_OVERVIEW.md
      - 090.interface/010.screens/0900102_SCREEN_DETAIL_CANONICAL.md
    goal:
      - 画面と導線を把握する

  step_4:
    files:
      - 080.policy/0800001_POLICY_OVERVIEW.md
      - 080.policy/010.app-policy/0800101_APP_POLICY_OVERVIEW.md
      - 080.policy/010.app-policy/0800102_BUSINESS_RULE_CANONICAL.md
    goal:
      - 業務ルールと禁止事項を把握する

  step_5:
    files:
      - 030.model/0300001_MODEL_OVERVIEW.md
      - 030.model/010.domain/0300104_ENTITY_FIELD_DICTIONARY.md
      - 030.model/010.domain/0300107_DATA_RESPONSIBILITY_CANONICAL.md
    goal:
      - データ責務の境界を理解する

  step_6:
    files:
      - 060.integration/0600001_INTEGRATION_OVERVIEW.md
      - 060.integration/010.lifeos-link/0600102_LIFEOS_INTEGRATION_RESPONSIBILITY_CANONICAL.md
    goal:
      - LifeOS 他アプリとの責務境界を理解する

  step_7:
    files:
      - 070.operations/0700001_OPERATIONS_OVERVIEW.md
      - 100.security/1000001_SECURITY_OVERVIEW.md
      - 110.infrastructure/1100001_INFRASTRUCTURE_OVERVIEW.md
    goal:
      - 運用、保護、保管の考え方を確認する

design_reference_only:
  files:
    - 120.implementation/010.api-fixed-prep/1200102_API_COMMON_RULES.md
    - 120.implementation/010.api-fixed-prep/1200103_CASE_API_EXACT_PAYLOAD.md
    - 030.model/010.domain/0300105_DB_TABLE_COLUMN_FIXED.md
  note:
    - これらは現時点では実装用ではなく、設計責務の参考資料として読む

reading_policy:
  - overview から先に読む
  - index は全体位置の確認用
  - 実装に入らず、責務理解を優先する
