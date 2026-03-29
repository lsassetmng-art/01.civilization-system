# ============================================================
# BUSINESS APP ACCESS CONTROL MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the minimum model map for app access control in BusinessOS.


# ============================================================
# 1. APP REQUESTED SCOPE
# ============================================================

core_fields:
- app_requested_scope_id
- app_id
- resource_domain
- action_type
- requested_scope_level
- sensitivity_level
- scope_status
- created_at
- updated_at

requested_scope_level examples:
- basic
- elevated
- sensitive

sensitivity_level examples:
- low
- normal
- high
- critical


# ============================================================
# 2. APP USER GRANTED SCOPE
# ============================================================

core_fields:
- app_user_granted_scope_id
- user_ref
- app_id
- resource_domain
- action_type
- grant_mode
- grant_status
- granted_at
- revoked_at
- created_at
- updated_at

grant_mode examples:
- allow
- deny
- ask_each_time


# ============================================================
# 3. APP EFFECTIVE ACCESS DECISION
# ============================================================

core_fields:
- app_effective_access_decision_id
- user_ref
- app_id
- resource_domain
- action_type
- requested_scope_ref
- granted_scope_ref
- system_policy_ref
- effective_decision
- decision_reason_summary
- decided_at
- created_at

effective_decision examples:
- allowed
- denied
- ask_each_time
- blocked_by_policy
- unresolved_policy


# ============================================================
# 4. APP RESOURCE DOMAIN PROFILE
# ============================================================

core_fields:
- app_resource_domain_profile_id
- app_id
- resource_domain
- default_access_mode
- export_allowed
- delete_allowed
- profile_status
- created_at
- updated_at


# ============================================================
# 5. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum support set
for BusinessOS app access control.

Core summary:

- app requested scope is explicit
- user granted scope is explicit
- effective access decision is explicit
- resource domain profile is explicit
