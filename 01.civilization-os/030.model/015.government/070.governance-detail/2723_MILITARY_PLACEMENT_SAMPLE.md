# ============================================================
# MILITARY PLACEMENT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: placement-sample
component: military-placement-sample

owner: Boss
prepared_by: Zero

nation_draft_ref: SAMPLE_MILITARY_NATION_001
zone_map_ref: sample_zone_map_horizon_v1

facility_placement_sample:
  - placement_code: FAC_HORIZON_001
    facility_function: governance_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_command_admin_01
    base_stat_profile_ref: facility_base_stat_governance_center_v1
    design_bonus_posture:
      allowed_axes:
        - administrative_efficiency
        - command_coordination
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: strategic governance anchor

  - placement_code: FAC_HORIZON_002
    facility_function: defense_command_center
    zone_cell: S1
    design_provider_type: system_company
    design_package_ref: design_defense_command_01
    base_stat_profile_ref: facility_base_stat_defense_command_center_v1
    design_bonus_posture:
      allowed_axes:
        - operational_coordination
        - readiness
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: restricted strategic control center

  - placement_code: FAC_HORIZON_003
    facility_function: logistics_control_center
    zone_cell: O2
    design_provider_type: system_company
    design_package_ref: design_logistics_grid_01
    base_stat_profile_ref: facility_base_stat_logistics_control_center_v1
    design_bonus_posture:
      allowed_axes:
        - throughput
        - continuity
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: continuity backbone facility

  - placement_code: FAC_HORIZON_004
    facility_function: communications_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_secure_comms_01
    base_stat_profile_ref: facility_base_stat_communications_center_v1
    design_bonus_posture:
      allowed_axes:
        - coordination_speed
        - resilience
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: secure nation-wide signal anchor

infrastructure_placement_sample:
  - infra_code: INF_HORIZON_001
    infrastructure_type: road
    node_from: O1
    node_to: O2
    corridor_role: strategic_admin_route
    effective_stat_posture:
      traffic_capacity: medium
      reliability: high
    topology_notes: capital operations corridor

  - infra_code: INF_HORIZON_002
    infrastructure_type: rail
    node_from: O2
    node_to: S1
    corridor_role: logistics_command_link
    effective_stat_posture:
      throughput: high
      reliability: high
    topology_notes: restricted support line

  - infra_code: INF_HORIZON_003
    infrastructure_type: logistics_hub
    node_from: O2
    node_to: S2
    corridor_role: reserve_supply_coordination
    effective_stat_posture:
      throughput: high
      redundancy: high
    topology_notes: reserve continuity node

  - infra_code: INF_HORIZON_004
    infrastructure_type: communications
    node_from: O1
    node_to: S1
    corridor_role: secure_command_backbone
    effective_stat_posture:
      signal_reliability: high
      coordination_speed: high
    topology_notes: secure command route
