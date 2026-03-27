# ============================================================
# HYBRID ZONE MAP SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: zone-map-sample
component: hybrid-zone-map-sample

owner: Boss
prepared_by: Zero

zone_map_code: sample_zone_map_concordia_v1
nation_draft_ref: SAMPLE_HYBRID_NATION_001
map_scope_summary: balanced capital with mixed-use center and distributed commercial, education, arts, and office arms

capital_core_area:
- M1
- O1

zone_cells:
  - cell_code: M1
    zone_type: mixed_use_zone
    district_role: civic_coexistence_core
    opening_priority: highest
    allowed_expansion_direction:
      - east
      - west
      - south
    notes: balanced opening zone for multiple company families

  - cell_code: C1
    zone_type: commercial_zone
    district_role: market_support_arm
    opening_priority: high
    allowed_expansion_direction:
      - west
    notes: retail and public-facing business support

  - cell_code: E1
    zone_type: education_zone
    district_role: learning_support_arm
    opening_priority: high
    allowed_expansion_direction:
      - east
    notes: schools and education services

  - cell_code: A1
    zone_type: arts_zone
    district_role: culture_support_arm
    opening_priority: high
    allowed_expansion_direction:
      - south
    notes: galleries, studios, and cultural support

  - cell_code: O1
    zone_type: office_zone
    district_role: administrative_balance_core
    opening_priority: high
    allowed_expansion_direction:
      - north
    notes: governance, investment, and coordination offices

reserved_growth_areas:
- M1
- C1
- E1
- A1

special_corridors:
  - corridor_code: balanced_axis_01
    corridor_type: multi-sector_civic_corridor
    connected_cells:
      - M1
      - C1
      - E1
      - A1
      - O1
    notes: balanced civic and economic circulation spine

zone_adjacency:
  - from_cell: M1
    to_cell: C1
    relation_type: adjacent
  - from_cell: M1
    to_cell: E1
    relation_type: adjacent
  - from_cell: M1
    to_cell: A1
    relation_type: adjacent
  - from_cell: M1
    to_cell: O1
    relation_type: adjacent

placement_notes:
- hybrid nations should use M1 as first growth absorber
- specialized openings can branch into C1, E1, A1, or O1
- keep no single arm dominant at initial stage
