# ============================================================
# PERMISSION REASON CODE MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: permission-reason-code

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REASON CODES
# ============================================================

reason_codes:
- FPR-001 action_allowed
- FPR-002 approval_required
- FPR-003 actor_class_not_allowed
- FPR-004 authority_scope_insufficient
- FPR-005 target_is_protected
- FPR-006 target_is_reserved
- FPR-007 military_scope_required
- FPR-008 nation_scope_required
- FPR-009 company_scope_required
- FPR-010 infrastructure_scope_required
- FPR-011 sensitive_object_hidden
- FPR-012 overview_only_mode
- FPR-013 system_override_required


# ============================================================
# 2. FINAL RULE
# ============================================================

Reason codes must remain stable
for logs, UI messaging,
and future implementation reuse.
