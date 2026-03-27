# ============================================================
# DISSOLUTION TERM AND LEGISLATURE LOCK MODEL
# ============================================================

status: canonical
layer: model
scope: legislature-builder
component: dissolution-term-and-legislature-lock

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TERM FIELDS
# ============================================================

term_fields:
- default_term_length
- staggered_term_supported
- partial_renewal_supported
- early_dissolution_supported
- dissolution_trigger_rule
- emergency_extension_supported
- vacancy_fill_rule


# ============================================================
# 2. LOCK RULE
# ============================================================

lock_rule:
- chamber existence is structure-layer locked after nation creation
- seat class types are structure-layer locked after nation creation
- core legislative powers are structure-layer locked after nation creation
- term base is structure-layer locked after nation creation
- dissolution base is structure-layer locked after nation creation

editable_scope_examples:
- practical committee activity level
- party discipline level
- elite capture intensity
- oversight usage intensity
- effective budget bargaining intensity


# ============================================================
# 3. FINAL RULE
# ============================================================

Election-based legislatures must not have
their chamber existence or electoral seat structure
rewritten in normal operation mode.
