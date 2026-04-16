# ============================================================
# LEGAL SUPPORT OWNER FAMILY DASHBOARD QUERY EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

get_owner_dashboard:
  request:
    action: get_owner_dashboard
    payload:
      archived_included: false
  response:
    dashboard_type: owner
    sections:
      active_case_summary: object
      upcoming_deadlines: object
      unresolved_documents: object
      next_confirmation_points: object
      family_shared_updates: object
      recent_exports: object
      checklist_progress_overview: object

get_family_dashboard:
  request:
    action: get_family_dashboard
    payload:
      active_membership_only: true
  response:
    dashboard_type: family
    sections:
      shared_case_summary: object
      upcoming_shared_deadlines: object
      shared_documents_to_prepare: object
      shared_next_actions: object

rules:
  - owner dashboard と family dashboard は別 action に分ける
  - family dashboard は owner 用情報を返さない
  - family dashboard は membership_status=active のみ対象
