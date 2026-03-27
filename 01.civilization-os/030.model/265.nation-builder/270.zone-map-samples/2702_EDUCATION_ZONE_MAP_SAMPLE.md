# ============================================================
# EDUCATION ZONE MAP SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: zone-map-sample
component: education-zone-map-sample

owner: Boss
prepared_by: Zero

zone_map_code: sample_zone_map_aurora_v1
nation_draft_ref: SAMPLE_EDUCATION_NATION_001
map_scope_summary: school-centered capital cluster with education core, service ring, and calm office support zone

capital_core_area:
- E1
- E2
- O1

zone_cells:
  - cell_code: E1
    zone_type: education_zone
    district_role: central_school_core
    opening_priority: highest
    allowed_expansion_direction:
      - east
      - south
    notes: primary school and curriculum concentration

  - cell_code: E2
    zone_type: education_zone
    district_role: advanced_learning_cluster
    opening_priority: high
    allowed_expansion_direction:
      - west
      - south
    notes: higher learning and teacher support zone

  - cell_code: O1
    zone_type: office_zone
    district_role: administrative_support_core
    opening_priority: high
    allowed_expansion_direction:
      - east
    notes: education administration and support service offices

  - cell_code: M1
    zone_type: mixed_use_zone
    district_role: family_service_buffer
    opening_priority: medium
    allowed_expansion_direction:
      - north
      - east
    notes: low-noise coexistence area for education-adjacent support services

  - cell_code: A1
    zone_type: arts_zone
    district_role: learning_culture_edge
    opening_priority: medium
    allowed_expansion_direction:
      - west
    notes: exhibitions and learning events

reserved_growth_areas:
- M1

special_corridors:
  - corridor_code: learning_axis_01
    corridor_type: education_access_corridor
    connected_cells:
      - E1
      - E2
      - O1
      - M1
    notes: main student and education-service flow

zone_adjacency:
  - from_cell: E1
    to_cell: E2
    relation_type: adjacent
  - from_cell: E1
    to_cell: O1
    relation_type: adjacent
  - from_cell: E2
    to_cell: M1
    relation_type: corridor_connected
  - from_cell: M1
    to_cell: A1
    relation_type: buffered

placement_notes:
- education companies should open in E1 then E2
- software support for schools should favor O1
- family-oriented services should expand into M1
- public event load should remain lighter than culture nations
