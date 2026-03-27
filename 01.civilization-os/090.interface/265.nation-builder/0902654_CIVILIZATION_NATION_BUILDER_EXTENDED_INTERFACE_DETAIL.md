# ============================================================
# CIVILIZATION NATION BUILDER EXTENDED INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for the extended nation builder
inside CivilizationOS.


# ============================================================
# 1. TEMPLATE / SYMBOLIC IDENTITY INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- action_type
- correlation_id

action_type examples:
- apply_template
- set_flag
- set_emblem
- set_national_colors
- set_map_color


# ============================================================
# 2. GOVERNANCE / CITY ROLE INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- action_type
- correlation_id

action_type examples:
- set_governance_profile
- add_authority_seat
- update_authority_seat
- assign_major_city_role


# ============================================================
# 3. SOCIAL / ECONOMIC PROFILE INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- action_type
- correlation_id

action_type examples:
- set_population_composition
- add_priority_industry
- set_value_tag
- set_religion_culture_profile
- set_public_service_baseline


# ============================================================
# 4. EVENT / INITIAL FRAME / NOTIFICATION INTERFACE
# ============================================================

required_fields:
- nation_draft_ref
- action_type
- correlation_id

action_type examples:
- add_holiday
- add_national_event
- set_operating_profile
- set_initial_frame
- set_notification_profile


# ============================================================
# 5. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- allowed_with_conditions
- denied
- blocked_by_policy
- unresolved_policy


# ============================================================
# 6. FINAL INTERFACE RULE
# ============================================================

Extended nation builder interfaces must be:
- template-aware
- identity-aware
- governance-aware
- profile-aware
- notification-aware
- fail-closed compatible
