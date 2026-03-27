# ============================================================
# CULTURE PLACEMENT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: placement-sample
component: culture-placement-sample

owner: Boss
prepared_by: Zero

nation_draft_ref: SAMPLE_CULTURE_NATION_001
zone_map_ref: sample_zone_map_lumen_v1

facility_placement_sample:
  - placement_code: FAC_LUMEN_001
    facility_function: governance_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_civic_culture_admin_01
    base_stat_profile_ref: facility_base_stat_governance_center_v1
    design_bonus_posture:
      allowed_axes:
        - administrative_efficiency
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: civic administration anchor

  - placement_code: FAC_LUMEN_002
    facility_function: national_gallery_complex
    zone_cell: A1
    design_provider_type: user_company
    design_package_ref: design_gallery_signature_01
    base_stat_profile_ref: facility_base_stat_national_gallery_complex_v1
    design_bonus_posture:
      allowed_axes:
        - visitor_flow
        - cultural_visibility
      bonus_cap_ratio: 0.20
    placement_priority: highest
    notes: flagship cultural identity facility

  - placement_code: FAC_LUMEN_003
    facility_function: central_event_venue
    zone_cell: A2
    design_provider_type: user_company
    design_package_ref: design_event_hall_01
    base_stat_profile_ref: facility_base_stat_central_event_venue_v1
    design_bonus_posture:
      allowed_axes:
        - event_capacity
        - public_visibility
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: screening and performance core

  - placement_code: FAC_LUMEN_004
    facility_function: communications_center
    zone_cell: O1
    design_provider_type: system_company
    design_package_ref: design_media_network_01
    base_stat_profile_ref: facility_base_stat_communications_center_v1
    design_bonus_posture:
      allowed_axes:
        - coordination_speed
      bonus_cap_ratio: 0.20
    placement_priority: high
    notes: event and media coordination

infrastructure_placement_sample:
  - infra_code: INF_LUMEN_001
    infrastructure_type: road
    node_from: A1
    node_to: A2
    corridor_role: event_flow_route
    effective_stat_posture:
      traffic_capacity: medium_to_high
      event_support: high
    topology_notes: exhibition to screening flow

  - infra_code: INF_LUMEN_002
    infrastructure_type: communications
    node_from: O1
    node_to: A1
    corridor_role: cultural_signal_backbone
    effective_stat_posture:
      signal_reliability: high
      broadcast_support: high
    topology_notes: coordination backbone for culture operations

  - infra_code: INF_LUMEN_003
    infrastructure_type: logistics_hub
    node_from: M1
    node_to: C1
    corridor_role: event_supply_support
    effective_stat_posture:
      throughput: medium
      flexibility: high
    topology_notes: event setup and visitor support
