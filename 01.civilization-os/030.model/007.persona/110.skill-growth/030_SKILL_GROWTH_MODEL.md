# ============================================================
# SKILL GROWTH
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona skill growth.

# 2. CORE ENTITIES

- skill_profile
- skill_state
- skill_growth_event
- skill_growth_result

# 3. STATE MODEL

skill_profile:
- profile_id
- persona_id
- skill_family_code
- profile_status
- version_code

skill_state:
- skill_state_id
- profile_id
- skill_code
- skill_level
- skill_status

skill_growth_event:
- growth_event_id
- persona_id
- source_scope
- growth_type_code
- occurred_at

skill_growth_result:
- growth_result_id
- growth_event_id
- skill_code
- changed_level
- result_status

# 4. INTEGRITY RULES

- skill state must belong to one profile
- growth result must reference one growth event
- growth source scope must be explicit
- hidden skill mutation without growth event is prohibited

