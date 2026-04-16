# ============================================================
# MBO PERMISSION MATRIX SECURITY
# ============================================================

status: canonical
application: Mbo
layer: security
owner: Boss
prepared_by: Zero

purpose:
Fixes role-based permission matrix for Mbo.

roles:
- objective_owner
- manager
- evaluator
- HR_operator
- executive_viewer
- department_template_admin
- system_auditor

permission_levels:
- none
- read
- create
- update
- confirm
- transmit
- admin

# ============================================================
# 1. OBJECTIVE DOMAIN
# ============================================================

objective_permissions:

  objective_owner:
    objective:
      - create
      - read
      - update
    action_plan:
      - create
      - read
      - update
    progress_log:
      - create
      - read
    review_schedule:
      - read
    review_log:
      - read
    evaluation:
      - read
    interview_memo:
      - create
      - read
    task_link:
      - create
      - read
    project_link:
      - create
      - read
    evidence_reference:
      - create
      - read

  manager:
    objective:
      - read
    action_plan:
      - read
    progress_log:
      - read
    review_schedule:
      - create
      - read
      - update
    review_log:
      - create
      - read
    evaluation:
      - read
    interview_memo:
      - create
      - read
    task_link:
      - read
    project_link:
      - read
    evidence_reference:
      - read

  evaluator:
    objective:
      - read
    action_plan:
      - read
    progress_log:
      - read
    review_schedule:
      - read
    review_log:
      - read
    evaluation:
      - create
      - read
      - update
      - confirm
    interview_memo:
      - read
    evidence_reference:
      - read

  HR_operator:
    objective:
      - read
    action_plan:
      - read
    progress_log:
      - read
    review_schedule:
      - read
    review_log:
      - read
    evaluation:
      - read
    ERP_transmission:
      - read
      - transmit
    ERP_resend:
      - create
      - read
    export_job:
      - create
      - read
    reminder_batch_job:
      - create
      - read

  executive_viewer:
    objective:
      - read
    action_plan:
      - read
    progress_log:
      - read
    review_schedule:
      - read
    review_log:
      - read
    evaluation:
      - read
    executive_summary:
      - read
    KPI_dashboard:
      - read

  department_template_admin:
    objective_template:
      - create
      - read
      - update
      - admin
    manager_comment_template:
      - create
      - read
      - update
      - admin
    review_cadence_preset:
      - create
      - read
      - update
      - admin

  system_auditor:
    audit_view:
      - read
    objective:
      - read
    action_plan:
      - read
    progress_log:
      - read
    review_log:
      - read
    evaluation:
      - read
    ERP_transmission:
      - read
    ERP_resend:
      - read
    export_job:
      - read
    reminder_batch_job:
      - read

# ============================================================
# 2. SPECIAL RULES
# ============================================================

special_rules:
- objective_owner may update only non-finalized own objectives
- objective_owner may not confirm evaluation
- manager may not confirm evaluation unless separately granted evaluator role
- evaluator may not edit finalized objective content
- HR_operator may not change evaluation score
- executive_viewer is read-only in all cases
- department_template_admin handles scoped templates only
- system_auditor is read-only in all business domains

# ============================================================
# 3. LOCK-RELATED RULES
# ============================================================

lock_related_rules:
- finalized evaluation locks mutable objective fields
- finalized evaluation locks normal action plan editing
- finalized evaluation locks normal progress updates
- review logs remain append-only
- ERP resend requires explicit reason and history retention

