# ============================================================
# CONFIRMATION REMOVAL AND PURGE MODEL
# ============================================================

status: canonical
layer: model
scope: official-executive-and-elite-appointment-builder
component: confirmation-removal-and-purge

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CONFIRMATION TYPES
# ============================================================

confirmation_types:
- none
- legislative_confirmation
- upper_house_confirmation
- ruler_confirmation
- cabinet_confirmation
- military_confirmation
- doctrine_confirmation
- city_delegate_confirmation


# ============================================================
# 2. REMOVAL TYPES
# ============================================================

removal_types:
- executive_dismissal
- ruler_dismissal
- legislative_removal
- impeachment
- forced_resignation
- disciplinary_removal
- emergency_purge
- military_removal
- doctrine_removal
- term_expiration
- death_or_incapacity


# ============================================================
# 3. REMOVAL FIELDS
# ============================================================

removal_fields:
- office_id
- normal_removal_type
- extraordinary_removal_type
- purge_supported
- suspension_supported
- interim_replacement_rule
- review_or_appeal_exists
- political_protection_strength


# ============================================================
# 4. FINAL RULE
# ============================================================

Appointment design must define
who can be removed,
how safely they can be removed,
and who can survive scandal or purge pressure.
