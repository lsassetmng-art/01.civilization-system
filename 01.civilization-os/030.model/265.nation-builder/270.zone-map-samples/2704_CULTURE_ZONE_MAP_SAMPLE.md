# ============================================================
# CULTURE ZONE MAP SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: zone-map-sample
component: culture-zone-map-sample

owner: Boss
prepared_by: Zero

zone_map_code: sample_zone_map_lumen_v1
nation_draft_ref: SAMPLE_CULTURE_NATION_001
map_scope_summary: arts-centered public culture district with exhibition spine, screening cluster, and mixed-use visitor ring

capital_core_area:
- A1
- A2
- M1

zone_cells:
  - cell_code: A1
    zone_type: arts_zone
    district_role: national_gallery_core
    opening_priority: highest
    allowed_expansion_direction:
      - east
      - south
    notes: flagship arts and exhibition district

  - cell_code: A2
    zone_type: arts_zone
    district_role: screening_and_performance_cluster
    opening_priority: high
    allowed_expansion_direction:
      - west
      - south
    notes: screening and event venue concentration

  - cell_code: M1
    zone_type: mixed_use_zone
    district_role: visitor_support_ring
    opening_priority: high
    allowed_expansion_direction:
      - north
      - east
    notes: coexistence area for retail, culture, and service flow

  - cell_code: C1
    zone_type: commercial_zone
    district_role: event_commerce_edge
    opening_priority: medium
    allowed_expansion_direction:
      - west
    notes: commerce linked to cultural visitors

  - cell_code: O1
    zone_type: office_zone
    district_role: administration_and_production_support
    opening_priority: medium
    allowed_expansion_direction:
      - east
    notes: creative administration and studio support

reserved_growth_areas:
- M1
- C1

special_corridors:
  - corridor_code: culture_spine_01
    corridor_type: exhibition_screening_corridor
    connected_cells:
      - A1
      - A2
      - M1
      - C1
    notes: main public event flow

zone_adjacency:
  - from_cell: A1
    to_cell: A2
    relation_type: adjacent
  - from_cell: A1
    to_cell: M1
    relation_type: adjacent
  - from_cell: A2
    to_cell: C1
    relation_type: corridor_connected
  - from_cell: M1
    to_cell: O1
    relation_type: adjacent

placement_notes:
- arts openings should concentrate in A1 and A2 first
- mixed-use support should absorb public spillover
- commercial activity should stay event-linked rather than dominant
