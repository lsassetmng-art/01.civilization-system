# ============================================================
# CIVILIZATION MODEL IDENTITY RULE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define canonical identity rules for CivilizationOS models.

required_identity_levels:
- primary_key
- natural_key where meaningful
- source_reference where reflected
- version marker where versioned

rules:
- every canonical model must define a primary_key
- every externally synchronized model should define a natural_key when meaningful
- reflected models must preserve source identity
- identity must remain stable under retry-safe processing

identity_examples:
primary_key:
- canonical surrogate identifier

natural_key:
- business-domain meaningful uniqueness
- cross-domain sync uniqueness
- registry uniqueness

prohibited:
- hidden identity mutation
- identity inferred only from payload body without explicit rule
