# ============================================================
# ESTIMATE PREMIUM FEATURE STATE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_premium_feature_state stores effective premium capability state
for a user or broader owning scope.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- premium_state_id
- owner_scope_type
- owner_scope_id
- premium_plan_code
- is_active
- activated_at
- expired_at
- last_verified_at

# ============================================================
# 3. OWNER SCOPE
# ============================================================

Representative owner_scope_type values:

- user
- workspace
- application

# ============================================================
# 4. CONTROLLED FEATURES
# ============================================================

Premium-controlled features include:

- structured meeting note
- qa management
- estimate templates
- expanded default template access

# ============================================================
# 5. GATE RULE
# ============================================================

Unknown or inactive premium state
must fail closed for premium-only write actions.

