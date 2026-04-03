# ============================================================
# EXECUTIVE STRUCTURE MODEL
# ============================================================

status: canonical
layer: model
scope: executive-builder
component: executive-structure

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EXECUTIVE CONFIG TYPES
# ============================================================

executive_config_types:
- ruler_cabinet_split
- strong_presidential
- parliamentary_cabinet
- command_executive
- council_executive
- city_delegate_executive
- doctrine_executive
- provisional_reconstruction_executive
- symbolic_ruler_bureaucratic_executive


# ============================================================
# 2. STRUCTURE FIELDS
# ============================================================

structure_fields:
- executive_id
- executive_name
- head_of_state_type
- head_of_government_type
- cabinet_exists
- cabinet_selection_type
- executive_term_length
- executive_removal_rule
- deputy_structure
- succession_rule
- collective_or_single_executive
- executive_legitimacy_source


# ============================================================
# 3. LEGITIMACY SOURCES
# ============================================================

executive_legitimacy_sources:
- election
- parliamentary_confidence
- hereditary
- appointment
- command_control
- doctrine_authority
- city_delegate_consensus
- emergency_reconstruction
- mixed_source


# ============================================================
# 4. FINAL RULE
# ============================================================

Every executive must explicitly define
who formally leads,
who operationally leads,
and where legitimacy is claimed from.
