# ============================================================
# CIVILIZATION DETAIL DESIGN STANDARD
# ============================================================

status: canonical
layer: 130.development
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define required detail-design markers for CivilizationOS documents.

required_markers_when_applicable:
- primary_key
- natural_key
- state_transition
- idempotency_rule
- truth_boundary
- trigger_conditions
- success_condition
- failure_condition
- dead_letter_conditions
- retry_principles
- evaluation_order
- contract_version_rule
- versioning_rule

rule:
Any runtime, model, or sync-related document should include these markers
when the concept is applicable.
