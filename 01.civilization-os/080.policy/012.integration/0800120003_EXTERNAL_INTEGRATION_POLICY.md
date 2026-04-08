# ============================================================
# EXTERNAL INTEGRATION POLICY
# ============================================================

status: canonical
layer: policy
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for external integration contracts.

scope:
Covers public export,
restricted export,
external proposal import,
bounded sync,
and historical external contract retention.

policy_focus:
- projection-safe external export
- authority requirements for restricted export
- prohibition of silent external canonical overwrite
- historical labeling and trace retention

validation_rules:
- projection_scope is required.
- restricted export requires authority basis.
- external proposal import must remain non-mutating until approved through valid path.
- historical export requires historical label.
- public export must not disclose restricted raw payload.

failure_codes:
- EXTERNAL_INTEGRATION_POLICY_PROJECTION_SCOPE_MISSING
- EXTERNAL_INTEGRATION_POLICY_AUTHORITY_REQUIRED
- EXTERNAL_INTEGRATION_POLICY_PUBLIC_SCOPE_VIOLATION
- EXTERNAL_INTEGRATION_POLICY_OVERWRITE_DENIED
- EXTERNAL_INTEGRATION_POLICY_HISTORY_LABEL_REQUIRED

example_scenarios:
- A public API may expose projected summary fields only.
- A restricted export remains denied without explicit authority basis.

required_behavior:
- define public and restricted export boundaries
- keep proposal-only input non-mutating
- preserve historical labeling for external traces

policy_rules:
- public export must remain projection-safe
- restricted export requires authority basis
- historical external outputs must remain labeled

disclosure_matrix:
- public_export -> external_public
- restricted_export -> external_restricted
- historical_external_trace -> audit_only or historical

allowed_denied_matrix:
- public projection-safe export -> allowed
- restricted raw export without authority -> denied
- proposal-only import directly mutating canonical truth -> denied
