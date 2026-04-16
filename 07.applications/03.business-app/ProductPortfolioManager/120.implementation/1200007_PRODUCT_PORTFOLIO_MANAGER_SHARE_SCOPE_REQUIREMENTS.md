# ============================================================
# PRODUCT PORTFOLIO MANAGER SHARE SCOPE REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for share scope handling
without entering implementation code.

# ============================================================
# 1. REQUIRED SHARE MODEL FIELDS
# ============================================================

required_share_model_fields:
- share_scope_id
- target_entity_type
- target_entity_id
- share_type
- shared_to_type
- shared_to_id
- created_by_user_id
- created_at
- revoked_at

# ============================================================
# 2. REQUIRED UI SURFACES
# ============================================================

required_ui_surfaces:
- share scope summary on shareable entities where relevant
- share scope detail / confirmation surface
- share creation flow
- share revocation flow
- share history visibility where role permits

# ============================================================
# 3. REQUIRED USER ACTIONS
# ============================================================

required_user_actions:
- create bounded share
- expand share where authorized
- revoke share where authorized
- inspect who currently has visibility
- inspect share history where permitted

# ============================================================
# 4. VALIDATION REQUIREMENTS
# ============================================================

validation_requirements:
- target_entity_type must be explicit
- target_entity_id must resolve to a valid entity
- share_type must be one of private/team/org/limited
- shared_to_type must be one of user/role/team/org
- invalid scope combinations must be rejected
- revoked shares must not be treated as active

# ============================================================
# 5. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- the UI should make clear that sharing affects visibility, not authority
- the UI should show current share type in plain language
- broader visibility changes should be explicit before confirmation
- revocation effects should be understandable to the operator

# ============================================================
# 6. TRACEABILITY REQUIREMENTS
# ============================================================

traceability_requirements:
- share creation should be traceable
- share modification should be traceable
- share revocation should be traceable
- important visibility expansions should remain auditable

# ============================================================
# 7. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready share labels and explanations
- cross-device consistent meaning
- no hidden share changes through indirect actions
- no assumption that visible means editable
- no assumption that visible means approvable

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must handle share scope
as an explicit visibility-control layer,
not as a shortcut for authority transfer.
