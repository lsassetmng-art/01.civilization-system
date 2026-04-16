# ============================================================
# END OF LIFE PLANNER IMPLEMENTATION PREPARATION PACKAGE
# ============================================================

status: canonical-draft
phase: L13-implementation-preparation-complete
app: EndOfLifePlanner

document_purpose:
  - 実装開始時に最初に参照すべき文書パッケージを固定する
  - 実装開始前の canonical bundle として扱う

package_contents:

  business_and_boundary:
    - 001_END_OF_LIFE_PLANNER_OVERVIEW.md
    - 002_END_OF_LIFE_PLANNER_CANONICAL_DRAFT.md
    - 010.constitution/010010_END_OF_LIFE_PLANNER_MISSION_AND_BOUNDARY.md
    - 010.constitution/010020_END_OF_LIFE_PLANNER_PRICING_AND_SUPPORT_CONSTITUTION.md

  screen_and_flow:
    - 050.flow/050010_END_OF_LIFE_PLANNER_MAIN_USER_FLOWS.md
    - 090.interface/090030_END_OF_LIFE_PLANNER_FORMAL_SCREEN_SPECIFICATION.md
    - 090.interface/090040_END_OF_LIFE_PLANNER_ELDERLY_ACCESSIBILITY_UI_NOTE.md
    - 090.interface/090050_END_OF_LIFE_PLANNER_UI_WORDING_POLISH_NOTE.md

  security_and_policy:
    - 080.policy/080010_END_OF_LIFE_PLANNER_DISCLAIMER_AND_SAFETY_POLICY.md
    - 100.security/100010_END_OF_LIFE_PLANNER_ROLE_PERMISSION_AND_AUDIT.md

  api_and_payload:
    - 120.implementation/120010_END_OF_LIFE_PLANNER_REQUEST_RESPONSE_EXACT_PAYLOAD.md
    - 120.implementation/120030_END_OF_LIFE_PLANNER_FORMAL_API_SPECIFICATION.md
    - 120.implementation/120040_END_OF_LIFE_PLANNER_API_NAMING_FINALIZATION_NOTE.md
    - 120.implementation/120050_END_OF_LIFE_PLANNER_ATTACHMENT_AND_RESPONSE_MINOR_VALUES.md

  db_design:
    - 110.infrastructure/110027_END_OF_LIFE_PLANNER_PRE_IMPLEMENTATION_DB_DESIGN.md
    - 110.infrastructure/110028_END_OF_LIFE_PLANNER_PHYSICAL_DB_DESIGN_WITHOUT_SQL.md
    - 110.infrastructure/110029_END_OF_LIFE_PLANNER_ATTACHMENT_PERMISSION_AND_ACTIVE_STATE_DECISIONS.md

  review_and_handoff:
    - 130.development/130020_END_OF_LIFE_PLANNER_IMPLEMENTATION_READINESS_JUDGMENT.md
    - 130.development/130070_END_OF_LIFE_PLANNER_REVIEW_RESULT_LEDGER_FINAL.md
    - 130.development/130110_END_OF_LIFE_PLANNER_IMPLEMENTATION_PREPARATION_COMPLETION.md
    - 920.meta/920030_END_OF_LIFE_PLANNER_FINAL_HANDOFF_CONSOLIDATION.md
    - 920.meta/920050_END_OF_LIFE_PLANNER_FINAL_READY_HANDOFF_NOTE.md

package_rule:
  - 実装開始時はこの順で読む
  - 各実装判断は package 内 canonical 文書を正とする
  - 仕様不明点があれば package 文書へ戻る
