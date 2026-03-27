# ============================================================
# CIVILIZATION NATION BUILDER INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for nation builder
inside CivilizationOS.


# ============================================================
# 1. DRAFT INTERFACE
# ============================================================

required_fields:
- draft_name
- nation_type
- correlation_id


# ============================================================
# 2. STRUCTURE INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- update_domain
- update_payload_summary
- correlation_id

update_domain examples:
- identity
- territory
- population
- currency
- rule_bundle


# ============================================================
# 3. VALIDATION / APPROVAL / PUBLICATION INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- action_type
- correlation_id

action_type examples:
- validate
- request_approval
- approve
- reject
- publish
- activate


# ============================================================
# 4. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- denied
- blocked_by_policy
- unresolved_policy


# ============================================================
# 5. FINAL INTERFACE RULE
# ============================================================

Nation builder interfaces must be:
- draft-aware
- validation-aware
- approval-aware
- activation-aware
