# ============================================================
# STATIC ART OS PERSONA REFERENCE LAYER EXACT INSERTION POINTS
# ============================================================

status: active-design-note
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the exact insertion points for Persona reference usage inside
StaticArtOS under the non-duplication / snapshot-consumption rule.

core_rule:
- StaticArtOS consumes persona references and signed snapshots only.
- StaticArtOS must not duplicate Persona canonical mutable state.
- StaticArtOS must not directly mutate Persona canonical state.

# ------------------------------------------------------------
# 0. INSERTION POLICY
# ------------------------------------------------------------

insertion_policy:
- Add persona reference handling only where display/linkage is needed.
- Do not inject persona logic into unrelated canonical asset/business tables.
- Keep persona reference as a side-link layer, not as a second core model.
- Use signed snapshot basis for public/external/exhibition display.

# ------------------------------------------------------------
# 1. ROOT / OVERVIEW / ROADMAP INSERTION POINTS
# ------------------------------------------------------------

root_document_insertion_points:
  root_overview:
    file:
      - 000_STATIC_ART_OS_OVERVIEW.md
    add:
      - StaticArtOS uses Persona signed snapshot references only.
      - StaticArtOS does not own Persona canonical mutable state.
      - Public/exhibition display persona data is signed-snapshot based.

  root_roadmap:
    file:
      - 000_STATIC_ART_OS_ROADMAP.md
    add:
      - persona reference layer is side-link only
      - no persona core duplication
      - persona reference work belongs after base asset/publish backbone is stable

  policy_index:
    files:
      - 080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md
      - 080.policy/080170_STATIC_ART_OS_PERSONA_DUPLICATION_AUDIT_CHECKLIST.md
      - 080.policy/080180_STATIC_ART_OS_PERSONA_SNAPSHOT_REPLACEMENT_MATRIX.md
      - 080.policy/080190_STATIC_ART_OS_PERSONA_DIRECT_MUTATION_ABOLISH_LIST.md
      - 080.policy/080200_STATIC_ART_OS_PERSONA_REFERENCE_LAYER_EXACT_INSERTION_POINTS.md

# ------------------------------------------------------------
# 2. DB LAYER INSERTION POINTS
# ------------------------------------------------------------

db_layer_insertion_points:
  phase_target:
    - after Phase 1 base schema is stable
    - before persona-linked public/exhibition display is implemented

  allowed_new_tables:
    - staticart.asset_creator_persona_ref
    - staticart.asset_creator_signed_snapshot_ref
    - staticart.asset_public_display_snapshot_ref
    - staticart.asset_exhibition_display_snapshot_ref
    - staticart.asset_persona_applied_snapshot_history
    - staticart.asset_local_view_config
    - staticart.asset_creator_display_projection

  required_minimum_columns:
    asset_creator_persona_ref:
      - asset_id
      - persona_id
      - linked_at
      - source_event_id

    asset_creator_signed_snapshot_ref:
      - asset_id
      - persona_id
      - signed_snapshot_id
      - snapshot_id
      - applied_at
      - expires_at
      - source_event_id

    asset_public_display_snapshot_ref:
      - asset_id
      - persona_id
      - signed_snapshot_id
      - display_mode
      - applied_at
      - expires_at
      - source_event_id

    asset_exhibition_display_snapshot_ref:
      - asset_id
      - persona_id
      - signed_snapshot_id
      - display_mode
      - applied_at
      - expires_at
      - source_event_id

    asset_persona_applied_snapshot_history:
      - history_id
      - asset_id
      - persona_id
      - snapshot_id
      - signed_snapshot_id
      - applied_reason_code
      - applied_at
      - source_event_id

    asset_local_view_config:
      - asset_id
      - persona_id
      - local_view_config_json
      - updated_at

    asset_creator_display_projection:
      - asset_id
      - persona_id
      - signed_snapshot_id
      - display_name
      - profile_card_summary
      - avatar_render_ref
      - projection_generated_at

  explicit_do_not_add:
    - staticart.persona_core
    - staticart.persona_state
    - staticart.persona_growth
    - staticart.persona_memory
    - staticart.persona_signature
    - staticart.persona_rights
    - staticart.persona_contract
    - staticart.persona_profile_canonical

# ------------------------------------------------------------
# 3. API LAYER INSERTION POINTS
# ------------------------------------------------------------

api_layer_insertion_points:
  route_level_additions:
    assets_route_read_side_only:
      - GET asset detail may expose persona reference summary
      - GET asset detail may expose applied signed snapshot reference
      - no Persona direct mutation endpoints allowed

    internal_route_event_reflection_only:
      - official result-event reflection endpoint may update snapshot reference links
      - no canonical Persona mutation endpoint allowed

  dto_additions:
    add_reference_dto_only:
      - CreatorPersonaReferenceDto
      - SignedSnapshotReferenceDto
      - PublicDisplayPersonaProjectionDto
      - ExhibitionDisplayPersonaProjectionDto

    do_not_add_dto:
      - PersonaCoreWriteDto
      - PersonaStateWriteDto
      - PersonaMemoryWriteDto
      - PersonaGrowthWriteDto
      - PersonaSignatureIssueDto

  service_level_additions:
    add:
      - read persona snapshot reference summary
      - reflect official snapshot result event
      - update local display projection only
    do_not_add:
      - mutate Persona canonical state
      - issue/revoke signature directly
      - maintain Persona internal memory/emotion/growth locally

# ------------------------------------------------------------
# 4. UI LAYER INSERTION POINTS
# ------------------------------------------------------------

ui_layer_insertion_points:
  creator_workspace:
    add:
      - persona reference summary panel
      - applied signed snapshot status
      - local view config editor only
    do_not_add:
      - persona canonical editor
      - emotion/growth/memory editor
      - signature issuance editor

  marketplace_product_detail:
    add:
      - signed snapshot based creator display card
      - public-safe persona display projection
    do_not_add:
      - direct profile mutation
      - canonical persona edit actions

  exhibition_related_views:
    add:
      - exhibition display snapshot summary
      - public-safe signed snapshot projection
    do_not_add:
      - mutable persona state rendering as truth

  admin_views:
    add:
      - snapshot reference audit visibility if needed
    do_not_add:
      - direct Persona canonical repair/edit actions inside StaticArtOS

# ------------------------------------------------------------
# 5. TEST LAYER INSERTION POINTS
# ------------------------------------------------------------

test_layer_insertion_points:
  add_acceptance_cases:
    - signed snapshot reference appears in asset detail
    - public display uses signed snapshot basis
    - exhibition display uses signed snapshot basis
    - local_view_config changes do not mutate Persona canonical state
    - official result event can update applied_snapshot_id
    - no direct mutation endpoint exists

  add_policy_cases:
    - banned persona duplicate tables do not exist
    - banned direct mutation paths do not exist
    - cache is rebuildable only if present

# ------------------------------------------------------------
# 6. EVENT / INTEGRATION INSERTION POINTS
# ------------------------------------------------------------

event_insertion_points:
  allowed_event_usage:
    - persona snapshot applied result event
    - persona signed snapshot published result event
    - persona display-safe profile projection result event
    - rights verification result event from formal routes

  required_flow:
    - request event
    - PersonaOS apply
    - result event
    - StaticArtOS reflect

  forbidden_flow:
    - StaticArtOS direct Persona canonical update
    - StaticArtOS direct Persona signature issue/revoke
    - StaticArtOS local authoritative rights decision

# ------------------------------------------------------------
# 7. PHASE MAPPING
# ------------------------------------------------------------

phase_mapping:
  phase_1:
    - no persona core tables
    - reserve policy only

  phase_2:
    - allow DTO/service placeholders for persona reference read-side only

  phase_3:
    - no direct mutation introduction during governance/publish work

  phase_4_5:
    - if persona-linked display is needed, add reference/snapshot tables only
    - keep entitlement and persona state separate

  phase_6:
    - add signed snapshot based admin visibility only if required

  phase_7:
    - add acceptance/policy tests for persona non-duplication rule

# ------------------------------------------------------------
# 8. EXACT INSERTION JUDGEMENT
# ------------------------------------------------------------

exact_insertion_judgement:
- Persona reference belongs in read/display/linkage side layers only.
- Persona canonical mutable state never belongs in StaticArtOS.
- Signed snapshot reference is the correct insertion object.
- Local view config is allowed.
- Direct mutation path is always a removal target.
