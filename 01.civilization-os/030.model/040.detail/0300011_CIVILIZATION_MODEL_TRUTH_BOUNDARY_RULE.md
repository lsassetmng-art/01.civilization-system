# ============================================================
# CIVILIZATION MODEL TRUTH BOUNDARY RULE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define truth-boundary semantics for CivilizationOS models.

required_categories:
- canonical_truth_model
- reflected_sync_model
- derived_model
- operational_model
- audit_model

truth_boundary_rule:
- every model should declare whether it is truth, reflection, derived, or operational
- reflected sync models must preserve their source truth domain
- derived models must preserve lineage
- operational models must not silently become truth models
