# ============================================================
# MONEY PLANNER MONTHLY / YEARLY REVIEW OPERATION POLICY
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 070.operations
subdomain: plan-operation

operation_cycles:
  monthly_review:
    owner_recommended_frequency:
      - every_month
    mandatory_checks:
      - dashboard summary
      - monthly projection
      - active income / expense validity
      - goal progress
      - receive candidate review
    generated_records:
      - mp_history_snapshot candidate
      - mp_audit_event candidate

  yearly_review:
    owner_recommended_frequency:
      - every_year
    mandatory_checks:
      - yearly projection
      - scenario comparison
      - major event budgets
      - LifeOS linkage events
      - family sharing visibility
    generated_records:
      - mp_history_snapshot candidate
      - mp_audit_event candidate

responsibility_split:
  owner:
    - final review decision
    - final visibility decision
    - candidate confirm/reject
  partner_editor:
    - supporting update
    - shared item maintenance
    - owner proposal support
  viewer:
    - reference only

checkpoint_policy:
  monthly:
    snapshot_type: monthly
    save_timing:
      - after owner monthly review completion
  yearly:
    snapshot_type: yearly
    save_timing:
      - after owner yearly review completion

non_goals:
  - 自動月次締め処理
  - 自動年次締め処理
  - 税務申告確定
  - 法務判断確定
