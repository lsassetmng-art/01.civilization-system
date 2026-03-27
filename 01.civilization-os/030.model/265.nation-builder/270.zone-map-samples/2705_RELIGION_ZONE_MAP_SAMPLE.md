# ============================================================
# RELIGION ZONE MAP SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: zone-map-sample
component: religion-zone-map-sample

owner: Boss
prepared_by: Zero

zone_map_code: sample_zone_map_sancta_v1
nation_draft_ref: SAMPLE_RELIGION_NATION_001
map_scope_summary: temple-centered sacred capital with doctrine education belt and controlled mixed-use support area

capital_core_area:
- R1
- R2

zone_cells:
  - cell_code: R1
    zone_type: religious_zone
    district_role: grand_temple_core
    opening_priority: highest
    allowed_expansion_direction:
      - east
    notes: primary ritual and temple operations center

  - cell_code: R2
    zone_type: religious_zone
    district_role: doctrine_and_ritual_belt
    opening_priority: high
    allowed_expansion_direction:
      - south
    notes: linked temple, ritual, and doctrine services

  - cell_code: E1
    zone_type: education_zone
    district_role: scripture_learning_cluster
    opening_priority: high
    allowed_expansion_direction:
      - west
    notes: doctrine-compatible education zone

  - cell_code: M1
    zone_type: mixed_use_zone
    district_role: community_support_ring
    opening_priority: medium
    allowed_expansion_direction:
      - north
    notes: support area for pilgrims, education, and services

  - cell_code: O1
    zone_type: office_zone
    district_role: civic_order_admin_edge
    opening_priority: low
    allowed_expansion_direction:
      - east
    notes: administration kept secondary to sacred center

reserved_growth_areas:
- M1

special_corridors:
  - corridor_code: sacred_axis_01
    corridor_type: temple_doctrine_corridor
    connected_cells:
      - R1
      - R2
      - E1
      - M1
    notes: sacred and learning circulation route

zone_adjacency:
  - from_cell: R1
    to_cell: R2
    relation_type: adjacent
  - from_cell: R2
    to_cell: E1
    relation_type: adjacent
  - from_cell: E1
    to_cell: M1
    relation_type: corridor_connected
  - from_cell: M1
    to_cell: O1
    relation_type: buffered

placement_notes:
- religious corporations should prioritize R1 then R2
- education openings compatible with doctrine should use E1
- mixed-use support must remain subordinate to sacred identity
