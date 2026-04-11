# ============================================================
# NAMECARD SEARCH POLICY FREEZE
# ============================================================

status: canonical
layer: policy
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Freezes initial search capability boundary to reduce implementation drift.

policy_rules:
- Phase A search is lexical, not semantic
- unsupported fuzzy dimensions must not be implied in UI
- hidden fields must not participate in unauthorized user search visibility
- normalized company search is allowed
- initial multi-token semantics use AND
- ranking remains simple and deterministic in Phase A

