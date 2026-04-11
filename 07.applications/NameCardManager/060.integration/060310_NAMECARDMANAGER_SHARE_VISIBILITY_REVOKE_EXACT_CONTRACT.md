# ============================================================
# NAMECARDMANAGER SHARE VISIBILITY REVOKE EXACT CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes exact share, visibility, and revoke behavior for initial implementation.

# ============================================================
# 1. SHARE UNIT
# ============================================================

initial_share_unit:
- namecard unit only

not_in_scope_phase_a:
- company unit share
- grouped contact share
- bulk relationship-derived share

# ============================================================
# 2. SHARE TARGET MODEL
# ============================================================

share_target_exact_fields:
- share_target_id
- target_user_id
- target_company_id_optional
- granted_role
- granted_at
- granted_by_user_id
- revoked_at_optional
- revoke_reason_optional
- share_state

share_states:
- shared_active
- share_revoked

granted_roles_for_shared_targets:
- shared_viewer

phase_a_rules:
- app-internal share grants read-only view
- app-internal shared target cannot re-share
- app-internal shared target cannot publication-request
- app-internal shared target cannot edit or delete source record

# ============================================================
# 3. VISIBILITY SCOPE
# ============================================================

visibility_scopes:
- owner_only
- app_shared
- publication_pending
- published_to_shared_businessos_capability
- published_result_visible

owner_visible_fields:
- all record fields
- all detail profile fields
- relationship sections
- history sections
- order history sections
- app share state
- publication state
- conflict / validation surfaces

shared_viewer_visible_fields_phase_a:
- basic record fields
- safe detail profile summary only
- relationship summary limited
- recent activity limited
- app share state visible
- publication state visible limited

shared_viewer_hidden_fields_phase_a:
- protected internal notes
- authority_scope_note full raw value
- decision_scope_note full raw value
- responsibility_scope_note full raw value
- internal-only memo
- pending sync conflict internals
- publication request internal metadata
- raw audit entries

publication_operator_visible_fields_phase_a:
- publication preflight relevant fields
- publication preview relevant fields
- publication state
- approval / result state

approver_visible_fields_phase_a:
- publication request context
- publication preview
- approval events
- result state
- rejection / return-for-fix reason

# ============================================================
# 4. SHARE APPLY
# ============================================================

endpoint:
- POST /namecards/share/apply

request_payload:
{
  "namecard_ids": ["uuid"],
  "share_target_ids": ["uuid"]
}

response_payload:
{
  "success": true,
  "data": {
    "applied_count": 1,
    "share_state": "shared_active"
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

apply_rules:
- only owner may apply share in Phase A
- duplicate active share link must not be duplicated
- repeated request must remain idempotent at effect level
- share applies only to selected namecard ids

# ============================================================
# 5. SHARE REVOKE
# ============================================================

endpoint:
- POST /namecards/share/revoke

request_payload:
{
  "namecard_ids": ["uuid"],
  "share_target_ids": ["uuid"],
  "revoke_reason": "optional string"
}

response_payload:
{
  "success": true,
  "data": {
    "revoked_count": 1,
    "share_state": "share_revoked"
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

revoke_rules:
- only owner may revoke app-internal share in Phase A
- revoke effect is immediate on next visibility evaluation
- revoked shared target loses record visibility
- revoke does not delete audit trail
- revoke does not affect already-published ERP-side visibility/result history
- ERP-wide publication is not revoked by normal user-side app revoke

# ============================================================
# 6. RELATIONSHIP / HISTORY VISIBILITY
# ============================================================

relationship_visibility_phase_a:
- owner: full
- shared_viewer: summary only
- publication_operator: only publication-relevant summary if needed
- approver: only approval-relevant summary if needed

history_visibility_phase_a:
- owner: full user-facing history
- shared_viewer: limited business-facing history only
- publication_operator: publication-related history only
- approver: approval/publication-related history only

# ============================================================
# 7. AUDIT RULES
# ============================================================

audit_events_required:
- share_apply
- share_revoke
- visibility_scope_evaluated_optional
- revoke_attempt_rejected
- forbidden_re_share_attempt

