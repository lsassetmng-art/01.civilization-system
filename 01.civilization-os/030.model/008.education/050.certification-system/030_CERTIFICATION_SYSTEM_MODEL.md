# ============================================================
# CERTIFICATION SYSTEM
# MODEL
# ============================================================

status: draft
layer: model
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for certification system structures.

# 2. CORE ENTITIES

- certification_definition
- certification_requirement
- certification_award
- certification_status

# 3. STATE MODEL

certification_definition:
- certification_definition_id
- certification_code
- certification_scope
- certification_type_code
- certification_status

certification_requirement:
- certification_requirement_id
- certification_definition_id
- requirement_type_code
- requirement_value
- requirement_status

certification_award:
- certification_award_id
- certification_definition_id
- recipient_scope
- award_status
- awarded_at

certification_status:
- certification_status_id
- certification_award_id
- active_flag
- revoked_flag
- changed_at

# 4. INTEGRITY RULES

- requirement must belong to one certification definition
- award must preserve recipient scope
- status must reference one certification award
- hidden revocation without status change is prohibited

