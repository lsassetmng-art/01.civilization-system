# ============================================================
# COMMERCIAL PLACEMENT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: placement-sample
component: commercial-placement-sample

owner: Boss
prepared_by: Zero

nation_draft_ref: SAMPLE_COMMERCIAL_NATION_001
zone_map_ref: sample_zone_map_meridian_v1

facility_placement_sample:
  - placement_code: FAC_MERIDIAN_001
    facility_function: governance_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_governance_modern_01
    base_stat_profile_ref: facility_base_stat_governance_center_v1
    design_bonus_posture:
      allowed_axes:
        - administrative_efficiency
        - visibility
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: capital administration anchor

  - placement_code: FAC_MERIDIAN_002
    facility_function: financial_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_finance_tower_01
    base_stat_profile_ref: facility_base_stat_financial_center_v1
    design_bonus_posture:
      allowed_axes:
        - market_throughput
        - investor_visibility
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: financial market support core

  - placement_code: FAC_MERIDIAN_003
    facility_function: marketplace_hub
    zone_cell: C1
    design_provider_type: user_company
    design_package_ref: design_market_hall_01
    base_stat_profile_ref: facility_base_stat_marketplace_hub_v1
    design_bonus_posture:
      allowed_axes:
        - customer_flow
        - brand_visibility
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: retail and commerce focal facility

  - placement_code: FAC_MERIDIAN_004
    facility_function: communications_center
    zone_cell: L1
    design_provider_type: system_company
    design_package_ref: design_comms_grid_01
    base_stat_profile_ref: facility_base_stat_communications_center_v1
    design_bonus_posture:
      allowed_axes:
        - coordination_speed
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: logistics and market connectivity support

infrastructure_placement_sample:
  - infra_code: INF_MERIDIAN_001
    infrastructure_type: road
    node_from: C1
    node_to: C2
    corridor_role: primary_commercial_flow
    effective_stat_posture:
      traffic_capacity: high
      maintenance_level: standard
    topology_notes: core retail corridor

  - infra_code: INF_MERIDIAN_002
    infrastructure_type: rail
    node_from: O1
    node_to: L1
    corridor_role: admin_logistics_support
    effective_stat_posture:
      throughput: medium
      reliability: high
    topology_notes: links finance and logistics support

  - infra_code: INF_MERIDIAN_003
    infrastructure_type: logistics_hub
    node_from: L1
    node_to: O1
    corridor_role: commercial_supply_coordination
    effective_stat_posture:
      throughput: high
      coordination_bonus: medium
    topology_notes: commercial backend node

  - infra_code: INF_MERIDIAN_004
    infrastructure_type: communications
    node_from: O1
    node_to: C1
    corridor_role: market_signal_backbone
    effective_stat_posture:
      signal_reliability: high
      coordination_speed: high
    topology_notes: capital connectivity backbone
