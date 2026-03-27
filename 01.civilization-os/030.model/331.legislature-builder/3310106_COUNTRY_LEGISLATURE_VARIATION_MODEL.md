# ============================================================
# COUNTRY LEGISLATURE VARIATION MODEL
# ============================================================

status: canonical
layer: model
scope: legislature-builder
component: country-legislature-variation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HELIOS
# ============================================================

structure_note:
- formal_legislature_exists
- old_noble_capture_high
- formal_representation_and_real_capture_diverge
- king_informal_influence_remains_nontrivial

seat_note:
- elected_elements_possible
- elite_or_noble_dominance_visible
- practical_access_gap_high

power_note:
- formal_law_power_exists
- real_outcome_heavily_filtered_by_old_elite_network


# ============================================================
# 2. NOVA
# ============================================================

structure_note:
- federal_commercial_legislature
- strong_finance_and_asic_influence
- representation_formally_modern_but_heavily_elite_shaped

seat_note:
- elected_or_delegate_mix_possible
- high_business_lobby_visibility

power_note:
- budget_and_market_law_power_high
- scandal_and_performance_pressure_high


# ============================================================
# 3. SEIWA
# ============================================================

structure_note:
- orderly_legal_legislature
- procedural_legitimacy_high
- committee_order_strong

seat_note:
- election_legitimacy_high
- low_hereditary_distortion

power_note:
- oversight_and_budget_process_stable
- petition_and_systemic_redress_linked_to_legislature


# ============================================================
# 4. GLADIA
# ============================================================

structure_note:
- legislature_exists_but_command_state_shadow_strong
- open_dissent_visibility_low

seat_note:
- representation_form_exists
- practical_chain_of_command_pressure_high

power_note:
- emergency_and_security_fields_heavily_constrained_by_command_logic


# ============================================================
# 5. ORPHEUS
# ============================================================

structure_note:
- weak_central_union_deliberation
- island_delegate_logic_strong

seat_note:
- island_voice_weight_high
- local_relationship_legitimacy_high

power_note:
- central_law_power_weaker
- coordination_role_stronger_than_strict_unified_control


# ============================================================
# 6. AURELIA
# ============================================================

structure_note:
- historical_or_fragmented_legislature
- doctrine_and_instability_distort_normal_legislative_order

seat_note:
- participation_legitimacy_weak
- protected_or_filtered_entry_possible

power_note:
- formal_power_and_real_power_can_diverge_extremely


# ============================================================
# 7. FREE CITIES UNION
# ============================================================

structure_note:
- city_delegate_union_model_strong
- local_identity_prioritized_over_unified_mass_politics

seat_note:
- city_representation_core
- delegate_logic_more_natural_than_standard_party_mass_model

power_note:
- negotiation_and_compromise_heavy
- local_interest_blocking_power_high


# ============================================================
# 8. FINAL RULE
# ============================================================

Legislature Builder must support
strongly different relationships
between formal representation and real power.
