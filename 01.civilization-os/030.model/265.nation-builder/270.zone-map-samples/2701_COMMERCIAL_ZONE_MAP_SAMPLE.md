# ============================================================
# COMMERCIAL ZONE MAP SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: zone-map-sample
component: commercial-zone-map-sample

owner: Boss
prepared_by: Zero

zone_map_code: sample_zone_map_meridian_v1
nation_draft_ref: SAMPLE_COMMERCIAL_NATION_001
map_scope_summary: dense commercial capital with finance corridor, logistics belt, and mixed-use expansion ring

capital_core_area:
- C1
- C2
- O1

zone_cells:
  - cell_code: C1
    zone_type: commercial_zone
    district_role: capital_market_core
    opening_priority: highest
    allowed_expansion_direction:
      - east
      - south
    notes: flagship retail and market-facing company concentration

  - cell_code: C2
    zone_type: commercial_zone
    district_role: high_traffic_retail_belt
    opening_priority: high
    allowed_expansion_direction:
      - west
      - south
    notes: dense public-facing store corridor

  - cell_code: O1
    zone_type: office_zone
    district_role: finance_and_headquarters_core
    opening_priority: highest
    allowed_expansion_direction:
      - east
      - south
    notes: investment, treasury-adjacent, and corporate headquarters zone

  - cell_code: M1
    zone_type: mixed_use_zone
    district_role: flexible_growth_ring
    opening_priority: high
    allowed_expansion_direction:
      - north
      - east
      - west
    notes: early growth buffer for retail plus culture plus office coexistence

  - cell_code: A1
    zone_type: arts_zone
    district_role: culture_support_strip
    opening_priority: medium
    allowed_expansion_direction:
      - west
    notes: gallery and exhibition support for commercial vitality

  - cell_code: L1
    zone_type: office_zone
    district_role: logistics_admin_edge
    opening_priority: medium
    allowed_expansion_direction:
      - north
    notes: logistics coordination and support administration

reserved_growth_areas:
- M1
- L1

special_corridors:
  - corridor_code: trade_spine_01
    corridor_type: commercial_flow_corridor
    connected_cells:
      - C1
      - C2
      - O1
      - M1
    notes: primary opening and traffic corridor

zone_adjacency:
  - from_cell: C1
    to_cell: C2
    relation_type: adjacent
  - from_cell: C1
    to_cell: O1
    relation_type: adjacent
  - from_cell: C2
    to_cell: M1
    relation_type: corridor_connected
  - from_cell: O1
    to_cell: L1
    relation_type: corridor_connected
  - from_cell: M1
    to_cell: A1
    relation_type: adjacent

placement_notes:
- commercial opening should prefer C1 and C2 first
- office-heavy companies should prefer O1
- mixed-use overflow should expand into M1
- arts support should remain secondary but connected
