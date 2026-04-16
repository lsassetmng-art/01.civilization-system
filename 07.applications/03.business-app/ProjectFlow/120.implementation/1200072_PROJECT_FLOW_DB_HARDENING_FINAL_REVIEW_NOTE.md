# ============================================================
# PROJECT FLOW DB HARDENING FINAL REVIEW NOTE
# ============================================================

status: canonical-exact
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Summarizes final DB hardening points
that need explicit confirmation before execution-phase planning.

hardening_buckets:
- schema confirmation
- enum and check hardening
- FK consistency review
- updated_at trigger hardening
- archive semantics confirmation
- RLS split planning
- index confirmation
- mixed ownership field confirmation

# ============================================================
# 1. SCHEMA CONFIRMATION
# ============================================================

schema_confirmation:
- current candidate schema is projectflow
- final schema name remains open until DB-owner confirmation
- no execution should assume alternate schema silently

# ============================================================
# 2. ENUM AND CHECK HARDENING
# ============================================================

hardening_rules:
- status fields should use explicit constrained values
- hardening should be applied after ownership review is stable
- progress_percent remains bounded 0..100
- delay_days remains non-negative
- hours remains positive
- report_period_end must be >= report_period_start

fields_requiring_final_confirmation:
- project_status
- task_status
- milestone_status
- issue_status
- issue_severity
- risk_status
- risk_probability_level
- risk_impact_level
- export_job_status
- sync_request_status
- report_approval_status
- entitlement_state if persisted later

# ============================================================
# 3. FK AND OWNERSHIP REVIEW
# ============================================================

fk_review_points:
- project_task.project_id -> pf_project.project_id
- project_milestone.project_id -> pf_project.project_id
- project_issue.related_task_id -> pf_project_task.task_id optional
- project_time_entry.task_id -> pf_project_task.task_id optional
- schedule_proposal.project_template_id -> project_template.project_template_id
- mixed boundary fields must not imply wrong ownership by FK alone

# ============================================================
# 4. UPDATED_AT AND AUDIT HARDENING
# ============================================================

updated_at_rules:
- updated_at trigger remains appropriate for mutable local tables
- audit capture should remain separate from updated_at mutation
- mediated boundary status update visibility must not be confused with local content edits

# ============================================================
# 5. ARCHIVE SEMANTICS
# ============================================================

archive_rules:
- archive semantics are preferred over destructive delete
- archive fields should be nullable timestamps
- active queries may exclude archived rows by default
- archive should not destroy traceability

# ============================================================
# 6. RLS SPLIT PLANNING
# ============================================================

rls_rules:
- RLS remains a later hardening phase
- ownership clarity must precede RLS hardening
- ERP reference visibility and local editability must remain distinguishable in policy design

# ============================================================
# 7. INDEX CONFIRMATION
# ============================================================

index_review_focus:
- company_id filtering
- project_id joins
- status-based operational lists
- planned_end_date / due_date operational sort and filter
- sync_request tracing
- export/report lookup
- template/proposal lookup

# ============================================================
# 8. STOP CONDITIONS
# ============================================================

stop_conditions:
- unresolved ownership conflict blocks hardening finalization
- unresolved ERP reference interpretation blocks mixed-field hardening
- unresolved mediation conflict blocks sync-related hardening assumptions
