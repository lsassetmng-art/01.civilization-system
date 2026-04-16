# ============================================================
# LEGAL SUPPORT HANDOFF AUDIT EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: meta
subdomain: audit
schema: life

purpose:
  - cross-app handoff 実行の監査を残す
  - どの app に何を渡したかを追跡できるようにする
  - handoff preview と actual handoff を分けて扱う

audit_entity:
  table_name: life.legal_support_handoff_audit_log

fields:
  - handoff_audit_log_id: uuid
  - actor_user_id: uuid
  - legal_case_id: uuid
  - target_app: text
  - handoff_profile: text
  - handoff_reason: text
  - included_sections: jsonb
  - masked_fields_summary: jsonb|null
  - preview_only: boolean
  - handed_off_at: timestamptz
  - payload_digest: text|null
  - created_at: timestamptz

target_app_values:
  - InheritanceSupport
  - BusinessLegalSupport
  - EndOfLifePlanner
  - MoneyPlanner_future

handoff_profile_values:
  - inheritance_support
  - business_legal_support
  - end_of_life_planner
  - money_planner_future

rules:
  - preview_only=true は preview 実行ログ
  - preview_only=false は actual handoff 実行ログ
  - included_sections は handoff payload の section 単位で保持する
  - payload_digest は全文複写ではなく digest を優先してよい
  - private note や assumption_text の全文は handoff audit に保存しない
