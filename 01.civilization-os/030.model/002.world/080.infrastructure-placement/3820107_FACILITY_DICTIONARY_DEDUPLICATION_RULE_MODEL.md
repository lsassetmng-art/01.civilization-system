# ============================================================
# FACILITY DICTIONARY DEDUPLICATION RULE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-dictionary-alignment
component: facility-dictionary-deduplication-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DEDUPLICATION RULES
# ============================================================

deduplication_rules:
- field facility dictionary must not create a second facility type name for an existing master facility
- aliases may exist for UI labels but not for canonical facility_type
- service routing layers must consume canonical facility_type keys only
- placement layers must consume canonical facility_type keys only
- view-only market boards must remain distinct facility types from transactional financial facilities


# ============================================================
# 2. FINAL RULE
# ============================================================

Deduplication protects the system
from parallel facility taxonomies.
