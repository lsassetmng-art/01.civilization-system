# ============================================================
# SUCCESSION CONTINUITY MODEL
# ============================================================

status: canonical
layer: model
scope: official-executive-and-elite-appointment-builder
component: succession-continuity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUCCESSION TYPES
# ============================================================

succession_types:
- acting_deputy_succeeds
- cabinet_designated_successor
- ruler_designated_successor
- legislative_interim_selection
- military_chain_successor
- doctrine_chain_successor
- hereditary_successor
- emergency_provisional_successor
- local_delegate_interim_successor


# ============================================================
# 2. SUCCESSION FIELDS
# ============================================================

succession_fields:
- office_id
- default_succession_type
- interim_holder_rule
- permanent_replacement_rule
- confirmation_requirement_after_succession
- emergency_bypass_supported
- succession_delay_tolerance


# ============================================================
# 3. FINAL RULE
# ============================================================

Critical offices must define
how continuity is preserved
when a holder disappears suddenly.
