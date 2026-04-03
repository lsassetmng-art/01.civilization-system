# ============================================================
# EXISTING NATION PHASE2 DEFAULT ASSIGNMENT MASTER
# ============================================================

status: canonical
layer: model
scope: nation-builder-enum-master-phase2
component: existing-nation-phase2-default-assignment-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ASSIGNMENTS
# ============================================================

assignments:
- nation: helios_democratic_kingdom
  military_service_mode: mixed_service
  conscription_mode: shortage_triggered
  mobilization_mode: reserve_ready
  infrastructure_governance_mode: mixed_public_private_control
  road_operator_mode: mixed_road_authority
  rail_operator_mode: public_corporation_rail_operator
  station_operator_mode: public_corporation_station_management
  port_operator_mode: national_port_authority

- nation: nova_commercial_federation
  military_service_mode: professional_standing_force
  conscription_mode: none
  mobilization_mode: strategic_sector_first
  infrastructure_governance_mode: mixed_public_private_control
  road_operator_mode: mixed_road_authority
  rail_operator_mode: licensed_private_rail_operator
  station_operator_mode: licensed_private_station_management
  port_operator_mode: mixed_port_authority

- nation: seiwa_nation
  military_service_mode: mixed_service
  conscription_mode: selective_merit_based
  mobilization_mode: phased_partial_callup
  infrastructure_governance_mode: public_corporation_control
  road_operator_mode: public_corporation_road_authority
  rail_operator_mode: national_rail_authority
  station_operator_mode: rail_authority_managed
  port_operator_mode: public_corporation_port_authority

- nation: gladia_military_alliance
  military_service_mode: mandatory_conscription
  conscription_mode: universal
  mobilization_mode: full_general_mobilization_capable
  infrastructure_governance_mode: direct_state_control
  road_operator_mode: national_road_authority
  rail_operator_mode: national_rail_authority
  station_operator_mode: rail_authority_managed
  port_operator_mode: national_port_authority

- nation: orpheus_maritime_federation
  military_service_mode: voluntary_enlistment
  conscription_mode: wartime_only
  mobilization_mode: border_threat_reactive
  infrastructure_governance_mode: city_authority_control
  road_operator_mode: city_road_authority
  rail_operator_mode: city_transit_authority
  station_operator_mode: city_transit_managed
  port_operator_mode: city_port_authority

- nation: aurelia_federal_republic
  military_service_mode: mandatory_conscription
  conscription_mode: limited_region_based
  mobilization_mode: phased_partial_callup
  infrastructure_governance_mode: direct_state_control
  road_operator_mode: national_road_authority
  rail_operator_mode: national_rail_authority
  station_operator_mode: rail_authority_managed
  port_operator_mode: national_port_authority

- nation: free_cities_union
  military_service_mode: mixed_service
  conscription_mode: shortage_triggered
  mobilization_mode: reserve_ready
  infrastructure_governance_mode: city_authority_control
  road_operator_mode: city_road_authority
  rail_operator_mode: mixed_rail_authority
  station_operator_mode: mixed_station_management
  port_operator_mode: mixed_port_authority


# ============================================================
# 2. FINAL RULE
# ============================================================

Existing nations
must have explicit default assignments
for military and infrastructure control vocabulary.
