# ============================================================
# COMMERCE BOUNDARY
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona commerce boundaries.

# 2. CORE ENTITIES

- commerce_permission
- sale_unit
- commerce_restriction
- settlement_reference

# 3. STATE MODEL

commerce_permission:
- permission_id
- persona_id
- commerce_scope
- permission_status
- permission_type_code

sale_unit:
- sale_unit_id
- persona_id
- sale_type_code
- market_scope
- sale_status

commerce_restriction:
- restriction_id
- persona_id
- restriction_type_code
- restriction_reason
- restriction_status

settlement_reference:
- settlement_ref_id
- sale_unit_id
- settlement_scope
- settlement_status
- settled_at

# 4. INTEGRITY RULES

- commerce permission must be explicit
- sale unit must preserve market scope
- restriction must preserve reason
- sale without permission is prohibited

