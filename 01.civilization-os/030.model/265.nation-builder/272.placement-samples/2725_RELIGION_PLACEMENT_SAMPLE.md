# ============================================================
# RELIGION PLACEMENT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: placement-sample
component: religion-placement-sample

owner: Boss
prepared_by: Zero

nation_draft_ref: SAMPLE_RELIGION_NATION_001
zone_map_ref: sample_zone_map_sancta_v1

facility_placement_sample:
  - placement_code: FAC_SANCTA_001
    facility_function: governance_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_civic_order_01
    base_stat_profile_ref: facility_base_stat_governance_center_v1
    design_bonus_posture:
      allowed_axes:
        - administrative_efficiency
      bonus_cap_ratio: 0.20
    placement_priority: medium
    notes: governance kept secondary to sacred core

  - placement_code: FAC_SANCTA_002
    facility_function: grand_temple_complex
    zone_cell: R1
    design_provider_type: system_company
    design_package_ref: design_grand_temple_01
    base_stat_profile_ref: facility_base_stat_grand_temple_complex_v1
    design_bonus_posture:
      allowed_axes:
        - community_cohesion
        - sacred_visibility
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: sacred center of the nation

  - placement_code: FAC_SANCTA_003
    facility_function: doctrine_center
    zone_cell: R2
    design_provider_type: system_company
    design_package_ref: design_doctrine_hall_01
    base_stat_profile_ref: facility_base_stat_doctrine_center_v1
    design_bonus_posture:
      allowed_axes:
        - education_quality
        - ritual_coordination
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: doctrine and education linkage

  - placement_code: FAC_SANCTA_004
    facility_function: communications_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_civic_signal_01
    base_stat_profile_ref: facility_base_stat_communications_center_v1
    design_bonus_posture:
      allowed_axes:
        - coordination_speed
      bonus_cap_ratio: 0.20
    placement_priority: medium
    notes: coordination support without dominating sacred center

infrastructure_placement_sample:
  - infra_code: INF_SANCTA_001
    infrastructure_type: road
    node_from: R1
    node_to: R2
    corridor_role: sacred_procession_route
    effective_stat_posture:
      traffic_capacity: medium
      ceremonial_support: high
    topology_notes: ritual movement corridor

  - infra_code: INF_SANCTA_002
    infrastructure_type: road
    node_from: R2
    node_to: E1
    corridor_role: doctrine_learning_route
    effective_stat_posture:
      reliability: medium_to_high
      access_support: high
    topology_notes: temple to doctrine school corridor

  - infra_code: INF_SANCTA_003
    infrastructure_type: communications
    node_from: O1
    node_to: R1
    corridor_role: civic_sacred_coordination
    effective_stat_posture:
      signal_reliability: medium_to_high
      coordination_speed: medium
    topology_notes: governance-to-sacred support line
