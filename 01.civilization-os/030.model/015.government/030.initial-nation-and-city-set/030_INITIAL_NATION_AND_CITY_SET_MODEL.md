# ============================================================
# INITIAL NATION AND CITY SET
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for initial nation and city sets.

# 2. CORE ENTITIES

- initial_nation_set
- initial_city_set
- initial_assignment
- initial_set_status

# 3. STATE MODEL

initial_nation_set:
- initial_nation_set_id
- world_scope
- set_version
- set_status
- created_at

initial_city_set:
- initial_city_set_id
- initial_nation_set_id
- nation_id
- set_status
- created_at

initial_assignment:
- assignment_id
- initial_city_set_id
- city_id
- assignment_type_code
- assignment_status

initial_set_status:
- set_status_id
- initial_nation_set_id
- publication_status
- validation_status
- changed_at

# 4. INTEGRITY RULES

- city set must belong to one nation set
- assignment must preserve nation/city identity
- publication status must be explicit
- incomplete initial set publication is prohibited

