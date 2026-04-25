# ============================================================
# STATIC ART OS PERSONA REFERENCE IMPACT REGISTER
# ============================================================

status: active-register
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Record the exact existing design areas that are affected by the
Persona non-duplication and signed-snapshot consumption rule.

rule_anchor_files:
- 080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md
- 080170_STATIC_ART_OS_PERSONA_DUPLICATION_AUDIT_CHECKLIST.md
- 080180_STATIC_ART_OS_PERSONA_SNAPSHOT_REPLACEMENT_MATRIX.md
- 080190_STATIC_ART_OS_PERSONA_DIRECT_MUTATION_ABOLISH_LIST.md
- 080200_STATIC_ART_OS_PERSONA_REFERENCE_LAYER_EXACT_INSERTION_POINTS.md
- 121260_STATIC_ART_OS_PERSONA_REFERENCE_DB_ADDENDUM.md
- 122360_STATIC_ART_OS_PERSONA_REFERENCE_API_ADDENDUM.md
- 123170_STATIC_ART_OS_PERSONA_REFERENCE_UI_ADDENDUM.md
- 124170_STATIC_ART_OS_PERSONA_REFERENCE_TEST_ADDENDUM.md

impact_register:
  root_overview:
    file:
      - 000_STATIC_ART_OS_OVERVIEW.md
    impact_type:
      - wording_addition
    required_change:
      - add explicit statement that StaticArtOS consumes Persona signed snapshots only
      - add explicit statement that Persona canonical mutable state is not owned locally
    change_scope:
      - root policy wording only

  root_roadmap:
    file:
      - 000_STATIC_ART_OS_ROADMAP.md
    impact_type:
      - roadmap_annotation
    required_change:
      - add Persona reference layer as side-link only
      - keep persona reference work after core asset/publish backbone stability
    change_scope:
      - roadmap wording only

  db_phase_design:
    files:
      - 121.db-implementation-prep/*
    impact_type:
      - schema extension planning
    required_change:
      - allow persona reference tables only
      - ban persona core duplicate tables
      - keep signed snapshot refs as display/public/exhibition basis
    change_scope:
      - future additive DB design only

  api_phase_design:
    files:
      - 122.api-implementation-prep/*
    impact_type:
      - dto/service/route read-side extension
    required_change:
      - expose persona reference summary only
      - forbid direct Persona mutation endpoints
      - allow official result-event reflection only
    change_scope:
      - additive API design only

  ui_phase_design:
    files:
      - 123.ui-implementation-prep/*
    impact_type:
      - display/reference extension
    required_change:
      - creator/public/exhibition persona display must use signed snapshot basis
      - local_view_config editor allowed
      - persona canonical editor forbidden
    change_scope:
      - additive UI design only

  test_phase_design:
    files:
      - 124.test-implementation-prep/*
    impact_type:
      - acceptance/policy coverage extension
    required_change:
      - add signed snapshot basis tests
      - add no direct mutation path tests
      - add no duplicate table rule tests
    change_scope:
      - additive test design only

  policy_layer:
    files:
      - 080.policy/*
    impact_type:
      - policy anchor expansion
    required_change:
      - keep Persona non-duplication as authoritative rule layer
      - route all later implementation through this rule
    change_scope:
      - policy/reference only

  governance_and_signoff:
    files:
      - 920.meta/056.signoff_pack/*
      - 132.operations/132220_STATIC_ART_OS_PRE_IMPLEMENTATION_GATE_MATRIX.md
    impact_type:
      - signoff criteria extension
    required_change:
      - add persona direct mutation absence as review item
      - add signed snapshot basis confirmation as review item
    change_scope:
      - signoff/review wording only

non_impact_areas:
- asset sales/business backbone logic does not need persona canonical duplication
- entitlement/access logic remains separate from Persona mutable state
- library/continuity remains separate from Persona mutable state
- review/publish lifecycle remains separate from Persona mutable state

final_rule:
- Persona rule affects link/display/reference layers.
- Persona rule does not replace StaticArtOS asset/business/governance core.
