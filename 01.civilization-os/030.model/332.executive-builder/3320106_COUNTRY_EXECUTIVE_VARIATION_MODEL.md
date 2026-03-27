# ============================================================
# COUNTRY EXECUTIVE VARIATION MODEL
# ============================================================

status: canonical
layer: model
scope: executive-builder
component: country-executive-variation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HELIOS
# ============================================================

structure_note:
- formal_monarchical_state_structure
- formal_and_informal_power_diverge
- ruler_symbolism_and_ruler_pressure_coexist

control_note:
- old_noble_and_patron_network_influence_high
- king_informal_pressure_nontrivial
- cabinet_or_administration_can_be_formally_visible_but_practically_constrained

appointment_note:
- high_patronage_risk
- upper_appointments_may_follow_favor_logic


# ============================================================
# 2. NOVA
# ============================================================

structure_note:
- formal_federal_commercial_executive
- cabinet_and_finance_logic_high
- business_elite_access_to_executive_high

control_note:
- asic_and_finance_influence_must_be_expressible
- performance_pressure_on_executive_high

appointment_note:
- elite_technical_and_business_selection_pressure_high


# ============================================================
# 3. SEIWA
# ============================================================

structure_note:
- bureaucratic_legal_administrative_executive
- ministry_order_and procedural clarity_high

control_note:
- bureaucracy_control_high
- informal_distortion_lower_than_helios_or_nova

appointment_note:
- merit_and_procedural_qualification_visibility_high


# ============================================================
# 4. GLADIA
# ============================================================

structure_note:
- command_state_executive
- military_and_security_chain_high

control_note:
- emergency_scaling_high
- command_bypass_routes_must_be_modeled

appointment_note:
- service_record_and_command_loyalty_visibility_high


# ============================================================
# 5. ORPHEUS
# ============================================================

structure_note:
- weak_central_union_executive
- island_autonomy_high
- coordination_stronger_than_hard_central_control

control_note:
- central_executive_scope_limited
- local_island_weight_high

appointment_note:
- local_legitimacy_and_relationship_weight_high


# ============================================================
# 6. AURELIA
# ============================================================

structure_note:
- doctrine_or_reconstruction_distorted_executive
- formal_structure_and_real_control_can_diverge_extremely

control_note:
- instability_mode_and protected_channel_mode_must_be_supported

appointment_note:
- loyalty_and doctrinal legitimacy_can_override competence


# ============================================================
# 7. FREE CITIES UNION
# ============================================================

structure_note:
- city_delegate_executive_or_loose_federal_executive
- local_identity_prioritized

control_note:
- central_executive_strength_limited
- city_blocking_and_negotiation_power_high

appointment_note:
- delegate_consensus_and local bargaining_visibility_high


# ============================================================
# 8. FINAL RULE
# ============================================================

Executive Builder must support
strong divergence between visible office form
and real operating control.
