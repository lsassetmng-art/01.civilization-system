# ============================================================
# ESTIMATE TEMPLATE MODEL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

estimate_template stores reusable estimate templates
used to accelerate estimate preparation.

This is a premium-oriented object.

# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

- template_id
- owner_scope_type
- owner_scope_id
- template_name
- template_category
- is_app_default
- is_premium_only
- is_enabled
- created_at
- updated_at

# ============================================================
# 3. TEMPLATE CATEGORIES
# ============================================================

Representative categories:

- general_estimate
- service_estimate
- maintenance_estimate
- stock_based_estimate
- rough_only_estimate

# ============================================================
# 4. OWNERSHIP
# ============================================================

Representative owner_scope_type values:

- application_default
- workspace
- user

# ============================================================
# 5. ENABLEMENT RULE
# ============================================================

Disabled templates remain historically meaningful
but should not be available for new application actions.

