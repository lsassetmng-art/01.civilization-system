# ============================================================
# EDUCATION PLACEMENT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: placement-sample
component: education-placement-sample

owner: Boss
prepared_by: Zero

nation_draft_ref: SAMPLE_EDUCATION_NATION_001
zone_map_ref: sample_zone_map_aurora_v1

facility_placement_sample:
  - placement_code: FAC_AURORA_001
    facility_function: governance_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_civic_learning_admin_01
    base_stat_profile_ref: facility_base_stat_governance_center_v1
    design_bonus_posture:
      allowed_axes:
        - administrative_efficiency
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: civic governance anchor

  - placement_code: FAC_AURORA_002
    facility_function: central_school_complex
    zone_cell: E1
    design_provider_type: system_company
    design_package_ref: design_central_school_01
    base_stat_profile_ref: facility_base_stat_central_school_complex_v1
    design_bonus_posture:
      allowed_axes:
        - education_capacity
        - learning_quality
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: national school core

  - placement_code: FAC_AURORA_003
    facility_function: public_service_center
    zone_cell: M1
    design_provider_type: system_company
    design_package_ref: design_family_service_center_01
    base_stat_profile_ref: facility_base_stat_public_service_center_v1
    design_bonus_posture:
      allowed_axes:
        - service_access
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: child and family support access

  - placement_code: FAC_AURORA_004
    facility_function: communications_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_education_network_01
    base_stat_profile_ref: facility_base_stat_communications_center_v1
    design_bonus_posture:
      allowed_axes:
        - coordination_speed
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: education administration network

infrastructure_placement_sample:
  - infra_code: INF_AURORA_001
    infrastructure_type: road
    node_from: E1
    node_to: E2
    corridor_role: school_access_route
    effective_stat_posture:
      traffic_capacity: medium
      safety_support: high
    topology_notes: safe student movement corridor

  - infra_code: INF_AURORA_002
    infrastructure_type: communications
    node_from: E1
    node_to: O1
    corridor_role: education_admin_backbone
    effective_stat_posture:
      signal_reliability: high
      coordination_speed: high
    topology_notes: school to administration connection

  - infra_code: INF_AURORA_003
    infrastructure_type: rail
    node_from: E2
    node_to: M1
    corridor_role: service_access_support
    effective_stat_posture:
      throughput: medium
      reliability: medium_to_high
    topology_notes: moderate access support line
