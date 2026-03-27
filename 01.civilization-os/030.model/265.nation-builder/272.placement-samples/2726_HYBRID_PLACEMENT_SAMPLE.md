# ============================================================
# HYBRID PLACEMENT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: placement-sample
component: hybrid-placement-sample

owner: Boss
prepared_by: Zero

nation_draft_ref: SAMPLE_HYBRID_NATION_001
zone_map_ref: sample_zone_map_concordia_v1

facility_placement_sample:
  - placement_code: FAC_CONCORDIA_001
    facility_function: governance_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_balanced_admin_01
    base_stat_profile_ref: facility_base_stat_governance_center_v1
    design_bonus_posture:
      allowed_axes:
        - administrative_efficiency
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: balanced government anchor

  - placement_code: FAC_CONCORDIA_002
    facility_function: public_service_center
    zone_cell: M1
    design_provider_type: system_company
    design_package_ref: design_civic_service_hub_01
    base_stat_profile_ref: facility_base_stat_public_service_center_v1
    design_bonus_posture:
      allowed_axes:
        - service_access
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: mixed civic support hub

  - placement_code: FAC_CONCORDIA_003
    facility_function: mixed_civic_hub
    zone_cell: M1
    design_provider_type: user_company
    design_package_ref: design_mixed_civic_complex_01
    base_stat_profile_ref: facility_base_stat_mixed_civic_hub_v1
    design_bonus_posture:
      allowed_axes:
        - flexibility
        - public_visibility
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: coexistence-oriented civic centerpiece

  - placement_code: FAC_CONCORDIA_004
    facility_function: communications_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_balanced_network_01
    base_stat_profile_ref: facility_base_stat_communications_center_v1
    design_bonus_posture:
      allowed_axes:
        - coordination_speed
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: balanced cross-sector coordination

infrastructure_placement_sample:
  - infra_code: INF_CONCORDIA_001
    infrastructure_type: road
    node_from: M1
    node_to: C1
    corridor_role: commerce_access_route
    effective_stat_posture:
      traffic_capacity: medium
      reliability: medium
    topology_notes: mixed core to market arm

  - infra_code: INF_CONCORDIA_002
    infrastructure_type: road
    node_from: M1
    node_to: E1
    corridor_role: education_access_route
    effective_stat_posture:
      traffic_capacity: medium
      safety_support: medium_to_high
    topology_notes: mixed core to learning arm

  - infra_code: INF_CONCORDIA_003
    infrastructure_type: road
    node_from: M1
    node_to: A1
    corridor_role: culture_access_route
    effective_stat_posture:
      traffic_capacity: medium
      event_support: medium
    topology_notes: mixed core to culture arm

  - infra_code: INF_CONCORDIA_004
    infrastructure_type: communications
    node_from: O1
    node_to: M1
    corridor_role: governance_coordination_backbone
    effective_stat_posture:
      signal_reliability: high
      coordination_speed: high
    topology_notes: balanced civic coordination backbone
