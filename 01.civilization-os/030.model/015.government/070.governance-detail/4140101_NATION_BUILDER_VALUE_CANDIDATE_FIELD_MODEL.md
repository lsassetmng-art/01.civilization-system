# ============================================================
# NATION BUILDER VALUE CANDIDATE FIELD MODEL
# ============================================================

status: canonical
layer: model
scope: builder-value-candidate-definition
component: nation-builder-value-candidate-field

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANDIDATE VALUE REQUIRED FIELDS
# ============================================================

candidate_value_required_fields:
- governance_type
- civilization_character_types
- nation_scale_class
- capital_rule_type
- city_hierarchy_rule_type
- succession_rule_type
- power_acquisition_route_profile
- legitimacy_profile
- election_system_type
- party_system_type
- head_of_state_selection_type
- legislative_structure_type
- executive_structure_type
- judicial_structure_type
- local_autonomy_type
- primary_power_route
- secondary_power_route
- blocked_power_route
- legitimacy_source_weight_profile
- crisis_opened_route_profile
- military_service_mode
- conscription_mode
- mobilization_mode
- military_control_type
- war_decision_authority_type
- diplomacy_posture_type
- alliance_policy_type
- sanction_policy_type
- border_control_type
- public_order_model
- policing_model
- intelligence_agency_model
- ideology_control_type
- religion_policy_type
- media_control_type
- economic_system_type
- market_openness_type
- state_intervention_type
- currency_policy_type
- taxation_model
- public_finance_model
- infrastructure_governance_mode
- road_operator_mode
- rail_operator_mode
- station_operator_mode
- port_operator_mode
- private_infrastructure_permission_type
- land_ownership_model
- redevelopment_policy_type
- eminent_domain_policy_type
- zoning_system_type


# ============================================================
# 2. FREE TEXT PREFERRED FIELDS
# ============================================================

free_text_preferred_fields:
- nation_display_name
- nation_short_description
- nation_flavor_summary
- optional_origin_note
- optional_designer_note


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation Builder
must use explicit candidates
for all fields that affect
governance,
authority,
or structural play.
