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


# ============================================================
# 6. BILLING SUPPORT FIELDS
# ============================================================

Recommended billing-support fields include:

- billing_cycle_type
- plan_price_snapshot
- currency_code
- grace_until
- purchased_at
- renewed_at
- canceled_at
- downgrade_effective_at
- source_of_truth

These fields help preserve clear entitlement behavior
even when billing source of truth is external.

# ============================================================
# 7. ENTITLEMENT SEMANTICS
# ============================================================

Representative premium entitlement states:

- inactive
- active
- grace
- expired
- unknown

unknown must fail closed for premium-only write operations.

