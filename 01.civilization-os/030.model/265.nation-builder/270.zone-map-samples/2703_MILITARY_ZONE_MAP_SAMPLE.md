# ============================================================
# MILITARY ZONE MAP SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: zone-map-sample
component: military-zone-map-sample

owner: Boss
prepared_by: Zero

zone_map_code: sample_zone_map_horizon_v1
nation_draft_ref: SAMPLE_MILITARY_NATION_001
map_scope_summary: strategic command capital with restricted operational zone, logistics corridor, and controlled office network

capital_core_area:
- O1
- S1

zone_cells:
  - cell_code: O1
    zone_type: office_zone
    district_role: strategic_command_core
    opening_priority: highest
    allowed_expansion_direction:
      - east
    notes: command administration and high-priority operational offices

  - cell_code: S1
    zone_type: special_restricted_zone
    district_role: controlled_operations_block
    opening_priority: highest
    allowed_expansion_direction:
      - south
    notes: restricted system-sensitive activity zone

  - cell_code: O2
    zone_type: office_zone
    district_role: logistics_admin_corridor
    opening_priority: high
    allowed_expansion_direction:
      - west
      - south
    notes: logistics and continuity operations support

  - cell_code: M1
    zone_type: mixed_use_zone
    district_role: support_service_buffer
    opening_priority: medium
    allowed_expansion_direction:
      - north
    notes: limited mixed-use support area

  - cell_code: S2
    zone_type: special_restricted_zone
    district_role: reserve_sensitive_area
    opening_priority: low
    allowed_expansion_direction:
      - none
    notes: expansion only under explicit policy

reserved_growth_areas:
- O2
- S2

special_corridors:
  - corridor_code: strategic_spine_01
    corridor_type: logistics_command_corridor
    connected_cells:
      - O1
      - O2
      - S1
    notes: continuity-critical backbone

zone_adjacency:
  - from_cell: O1
    to_cell: S1
    relation_type: adjacent
  - from_cell: O1
    to_cell: O2
    relation_type: corridor_connected
  - from_cell: O2
    to_cell: M1
    relation_type: buffered
  - from_cell: S1
    to_cell: S2
    relation_type: separated

placement_notes:
- special-restricted openings must remain tightly scoped
- office openings should prioritize O1 then O2
- mixed-use support should not dilute restricted posture
- adjacency between S and open zones should stay buffered where possible
