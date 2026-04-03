# ============================================================
# APPOINTMENT SUCCESSION AND REMOVAL MODEL
# ============================================================

status: canonical
layer: model
scope: executive-builder
component: appointment-succession-and-removal

owner: Boss
prepared_by: Zero


# ============================================================
# 1. APPOINTMENT TYPES
# ============================================================

appointment_types:
- direct_election
- legislative_selection
- ruler_appointment
- cabinet_appointment
- military_appointment
- doctrine_appointment
- bureaucratic_promotion
- city_delegate_selection
- emergency_provisional_appointment


# ============================================================
# 2. REMOVAL TYPES
# ============================================================

removal_types:
- election_loss
- confidence_loss
- ruler_dismissal
- legislative_impeachment
- military_removal
- doctrine_removal
- term_expiration
- emergency_override
- succession_on_death_or_incapacity


# ============================================================
# 3. SUCCESSION FIELDS
# ============================================================

succession_fields:
- succession_trigger
- acting_successor_rule
- interim_authority_rule
- permanent_replacement_rule
- succession_confirmation_required
- emergency_succession_override


# ============================================================
# 4. FINAL RULE
# ============================================================

Executive continuity must define
who fills absence,
who confirms succession,
and who can force removal.
