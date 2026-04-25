# ============================================================
# FOUNDATION WORDING-ONLY REFINEMENTS
# ============================================================

status: canonical-refinement
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Records wording-only refinements for K1 foundation.
These refinements do not change meaning-level decisions.

refinement_targets:

principal_handle_validation_note:
before:
- handle is unique at business level

refined_wording:
- handle must be treated as globally unique across streaming_principals
- uniqueness is a StreamingOS business rule, not a company-scoped rule
- collision handling must occur before persistence write

publish_ready_flag_note:
before:
- publish_ready_flag should be true unless explicit support-path override exists

refined_wording:
- publish_ready_flag is a readiness gate and not a lifecycle substitute
- open_live may be blocked when publish_ready_flag is false
- support-path override, if allowed later, must be explicit, auditable, and exceptional

support_path_override_note:
before:
- support-path override must remain explicit and auditable

refined_wording:
- support-path access must never be treated as ordinary ownership authority
- support-path usage must be intentional, exceptional, and audit-linked
- support-path access must not silently widen public or oversight access

oversight_subset_note:
before:
- company_overseer may read only the oversight-safe subset

refined_wording:
- company_overseer access must be implemented as constrained projection access
- oversight-safe subset is broader than public view but narrower than platform support access
- oversight-safe subset must not include private contact or internal policy-analysis fields

transition_audit_note:
before:
- every transition must record actor basis

refined_wording:
- every lifecycle transition must record the action basis, actor basis, and resulting state
- reason_code remains meaning-level optional but audit capability must exist
