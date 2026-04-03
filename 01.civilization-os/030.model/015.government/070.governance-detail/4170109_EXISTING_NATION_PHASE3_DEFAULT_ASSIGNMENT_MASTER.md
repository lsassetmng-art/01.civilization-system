# ============================================================
# EXISTING NATION PHASE3 DEFAULT ASSIGNMENT MASTER
# ============================================================

status: canonical
layer: model
scope: nation-builder-enum-master-phase3
component: existing-nation-phase3-default-assignment-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ASSIGNMENTS
# ============================================================

assignments:
- nation: helios_democratic_kingdom
  media_control_type: regulated_plural_media
  market_openness_type: mixed_regulated_market
  zoning_system_type: layered_civic_zoning
  land_ownership_model: mixed_private_public_land
  redevelopment_policy_type: growth_balanced_redevelopment
  eminent_domain_policy_type: public_interest_only_taking
  public_order_model: procedural_order
  policing_model: procedural_state_policing

- nation: nova_commercial_federation
  media_control_type: free_media
  market_openness_type: finance_center_open_market
  zoning_system_type: market_reactive_zoning
  land_ownership_model: dominantly_private_land
  redevelopment_policy_type: aggressive_redevelopment
  eminent_domain_policy_type: compensated_growth_taking
  public_order_model: surveillance_supported_order
  policing_model: centralized_security_policing

- nation: seiwa_nation
  media_control_type: regulated_plural_media
  market_openness_type: mixed_regulated_market
  zoning_system_type: layered_civic_zoning
  land_ownership_model: mixed_private_public_land
  redevelopment_policy_type: gradual_redevelopment
  eminent_domain_policy_type: public_interest_only_taking
  public_order_model: trust_first_order
  policing_model: community_policing

- nation: gladia_military_alliance
  media_control_type: state_dominant_media
  market_openness_type: state_screened_market
  zoning_system_type: state_planned_zoning
  land_ownership_model: public_core_private_outer_land
  redevelopment_policy_type: state_priority_redevelopment
  eminent_domain_policy_type: broad_state_taking_power
  public_order_model: force_backed_order
  policing_model: militarized_policing

- nation: orpheus_maritime_federation
  media_control_type: regulated_plural_media
  market_openness_type: open_competitive_market
  zoning_system_type: mixed_use_flexible_zoning
  land_ownership_model: mixed_private_public_land
  redevelopment_policy_type: preservation_first
  eminent_domain_policy_type: highly_restricted_taking
  public_order_model: trust_first_order
  policing_model: community_policing

- nation: aurelia_federal_republic
  media_control_type: censorship_heavy_media
  market_openness_type: state_screened_market
  zoning_system_type: state_planned_zoning
  land_ownership_model: state_owned_land
  redevelopment_policy_type: state_priority_redevelopment
  eminent_domain_policy_type: emergency_priority_taking
  public_order_model: fear_dominant_order
  policing_model: secret_police_supported_policing

- nation: free_cities_union
  media_control_type: free_media
  market_openness_type: open_competitive_market
  zoning_system_type: mixed_use_flexible_zoning
  land_ownership_model: dominantly_private_land
  redevelopment_policy_type: growth_balanced_redevelopment
  eminent_domain_policy_type: compensated_growth_taking
  public_order_model: procedural_order
  policing_model: community_policing


# ============================================================
# 2. FINAL RULE
# ============================================================

Existing nations
must have explicit default assignments
for media, market, land, and public-order vocabulary.
