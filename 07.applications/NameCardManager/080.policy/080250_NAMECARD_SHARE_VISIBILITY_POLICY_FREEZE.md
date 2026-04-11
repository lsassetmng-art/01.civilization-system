# ============================================================
# NAMECARD SHARE VISIBILITY POLICY FREEZE
# ============================================================

status: canonical
layer: policy
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Freezes field-level and role-level visibility direction for sharing behavior.

policy_rules:
- app-internal share is read-only in Phase A
- re-share is prohibited for shared_viewer
- owner_only fields remain hidden from shared_viewer
- publication-related privileged visibility must be role-based
- ERP-side publication is not revoked by normal app revoke
- visibility must be evaluated before search result composition
- protected internal notes must not leak through list/search/summary surfaces

