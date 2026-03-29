# ============================================================
# OCCUPATION CONFIGURATION CATEGORY MODEL
# ============================================================

status: canonical
layer: model
scope: occupation-detail-ui-common
component: occupation-configuration-category

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMMON CATEGORIES
# ============================================================

common_configuration_categories:
- service_or_output_policy
- quality_policy
- cost_policy
- staffing_policy
- capacity_policy
- supply_or_input_policy
- safety_policy
- sanitation_policy
- compliance_policy
- local_priority_policy
- resilience_policy
- schedule_policy
- pricing_or_access_policy


# ============================================================
# 2. FINAL RULE
# ============================================================

Occupation configuration
must be category-based,
not free-form only.
