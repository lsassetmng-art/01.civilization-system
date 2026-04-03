# ============================================================
# SEAT COMPOSITION AND MEMBER ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: legislature-builder
component: seat-composition-and-member-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SEAT COMPOSITION TYPES
# ============================================================

seat_composition_types:
- fully_elected
- mixed_elected_and_appointed
- mixed_elected_and_hereditary
- city_delegate_based
- regional_delegate_based
- guild_or_sector_delegate_based
- ruler_appointed
- military_reserved
- doctrine_reserved
- noble_reserved


# ============================================================
# 2. MEMBER ENTRY TYPES
# ============================================================

member_entry_types:
- direct_election
- proportional_election
- regional_election
- city_delegate_selection
- appointment_by_head_of_state
- appointment_by_executive
- hereditary_entry
- party_list_entry
- guild_nomination
- military_nomination
- doctrine_nomination


# ============================================================
# 3. SEAT CLASS FIELDS
# ============================================================

seat_class_fields:
- seat_class_id
- seat_class_name
- seat_class_count
- seat_class_entry_type
- seat_class_eligibility_rule
- seat_class_removal_rule
- seat_class_term_length
- seat_class_reserved_group


# ============================================================
# 4. FINAL RULE
# ============================================================

Seat composition must explicitly show
who gets voice,
why they get voice,
and whether that voice is popular,
elite, inherited, delegated, or controlled.
