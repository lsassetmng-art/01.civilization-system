# ============================================================
# STATIC ART OS PERSONA NON-DUPLICATION AND SNAPSHOT CONSUMPTION RULE
# ============================================================

status: active-policy
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the strict Persona integration rule for StaticArtOS so that
Persona canonical state is never duplicated or directly mutated
inside StaticArtOS.

policy_summary:
- Persona mutable canonical state belongs only to PersonaOS.
- StaticArtOS consumes signed snapshot / snapshot references only.
- StaticArtOS must not re-implement persona core, emotion, growth,
  memory, signature, revocation, or rights canonical state.
- StaticArtOS may keep only dependent references and app-local view data.

# ------------------------------------------------------------
# 1. CANONICAL OWNERSHIP RULE
# ------------------------------------------------------------

canonical_ownership_rule:
- Persona mutable state canonical owner is PersonaOS only.
- StaticArtOS is never the canonical owner of persona internal state.
- StaticArtOS must not create a second canonical persona source.

strict_meaning:
- no persona core canonical copy
- no persona mutable state canonical copy
- no persona memory canonical copy
- no persona growth canonical copy
- no persona signature canonical copy
- no persona revocation canonical copy
- no persona rights canonical copy

# ------------------------------------------------------------
# 2. WHAT STATICARTOS MAY HOLD
# ------------------------------------------------------------

allowed_staticart_persona_fields:
- persona_id
- snapshot_id
- applied_snapshot_id
- signed_snapshot_id
- snapshot_generated_at
- snapshot_expires_at
- local_view_config_json
- display_profile_override_local
- app_local_render_state
- asset_creator_persona_ref
- asset_public_display_snapshot_ref
- asset_exhibition_display_snapshot_ref
- source_event_id

allowed_meaning:
- identify which persona is linked
- identify which snapshot is applied
- identify which signed snapshot is used for public/external display
- keep only app-local display/view configuration
- keep only rebuildable derived display/projection data

# ------------------------------------------------------------
# 3. WHAT STATICARTOS MUST NOT HOLD
# ------------------------------------------------------------

forbidden_persona_data_in_staticart:
- persona_core canonical row
- persona_profile canonical row
- persona_mutable_state
- persona_emotion_state
- persona_growth_state
- persona_memory_body
- persona_signature_canonical
- persona_revocation_canonical
- persona_internal_parameter_set
- persona_visual_generation_canonical_history
- persona_rights_canonical
- persona_contract_canonical
- persona_public_identity_canonical

forbidden_cache_meaning:
- Even cache-like copies are forbidden if treated as canonical.
- Any local cache must be rebuildable derived data only.
- Rebuild/replay must be possible from canonical source and formal events.

# ------------------------------------------------------------
# 4. DUPLICATE TABLE CANDIDATES TO BAN
# ------------------------------------------------------------

banned_table_patterns:
- staticart.persona_core
- staticart.persona_profile
- staticart.persona_state
- staticart.persona_emotion
- staticart.persona_growth
- staticart.persona_memory
- staticart.persona_signature
- staticart.persona_revocation
- staticart.persona_visual_profile
- staticart.persona_visual_generation
- staticart.persona_rights
- staticart.persona_contract
- staticart.persona_public_identity_canonical
- staticart.persona_cache_as_truth
- staticart.persona_snapshot_cache_as_truth
- staticart.persona_display_cache_as_truth

rule:
- If a table stores persona data as source of truth, it is banned.
- If a table stores only snapshot reference and app-local display state,
  it may be allowed.

# ------------------------------------------------------------
# 5. REPLACEMENT MODEL
# ------------------------------------------------------------

recommended_replacement_tables:
- staticart.asset_creator_persona_ref
- staticart.asset_creator_signed_snapshot_ref
- staticart.asset_persona_applied_snapshot_history
- staticart.asset_public_display_snapshot_ref
- staticart.asset_exhibition_display_snapshot_ref
- staticart.asset_local_view_config
- staticart.asset_creator_display_projection

recommended_minimum_fields:
- asset_id
- persona_id
- snapshot_id
- signed_snapshot_id
- applied_snapshot_id
- display_mode
- local_view_config_json
- applied_at
- expires_at
- source_event_id

replacement_rule:
- StaticArtOS binds assets to persona snapshot references.
- StaticArtOS does not bind assets to persona mutable canonical rows.
- Public display and external display use signed snapshot basis.

# ------------------------------------------------------------
# 6. DIRECT MUTATION BAN
# ------------------------------------------------------------

direct_mutation_ban:
- StaticArtOS must not directly update Persona mutable state.
- StaticArtOS must not directly issue/revoke persona signature.
- StaticArtOS must not directly update persona growth/emotion/memory.
- StaticArtOS must not directly update persona rights canonical state.
- StaticArtOS must not directly regenerate persona canonical visual state.

abolish_targets:
- route -> direct persona update
- service -> direct persona update
- repository -> direct persona mutable write
- UI -> direct persona canonical edit completion
- background job -> direct persona canonical rewrite

# ------------------------------------------------------------
# 7. REQUIRED CHANGE FLOW
# ------------------------------------------------------------

required_persona_change_flow:
- request event
- PersonaOS apply
- result event
- StaticArtOS reflect

meaning:
- StaticArtOS may request a change.
- PersonaOS performs canonical apply.
- StaticArtOS only reflects the official result and snapshot reference.

strict_rule:
- No bypass path is allowed around PersonaOS canonical apply.

# ------------------------------------------------------------
# 8. RIGHTS / CONTRACT RULE
# ------------------------------------------------------------

rights_rule:
- StaticArtOS must not own persona-related rights canonical state.
- Rights verification must use official events/contracts from
  PersonaOS / BusinessOS / CivilizationOS formal routes.
- StaticArtOS may keep only result references or derived display-safe digests.

# ------------------------------------------------------------
# 9. DISPLAY RULE
# ------------------------------------------------------------

display_rule:
- public display uses signed snapshot basis
- distribution display uses signed snapshot basis
- external presentation uses signed snapshot basis
- exhibition display uses signed snapshot basis
- app-local UI decoration may use local_view_config only

important_meaning:
- StaticArtOS may control presentation style.
- StaticArtOS may not redefine persona canonical identity truth.

# ------------------------------------------------------------
# 10. STATICARTOS-SPECIFIC HIGH RISK AREAS
# ------------------------------------------------------------

high_risk_areas:
- creator display profile
- public profile display on asset page
- exhibition display profile
- signed public display for marketplace/library surfaces
- persona-linked artwork presentation
- profile-like overlays on public asset detail

control_rule:
- These areas must read signed snapshot reference or approved projection.
- These areas must not read/write mutable persona canonical state locally.

# ------------------------------------------------------------
# 11. CACHE RULE
# ------------------------------------------------------------

cache_rule:
- Local cache is allowed only as rebuildable derived data.
- Canonical treatment of cache is forbidden.
- Cache must be disposable and reconstructable from official source/events.

allowed_cache_examples:
- render cache
- display projection cache
- signed snapshot render helper cache
- public card projection cache

forbidden_cache_examples:
- local canonical persona state cache treated as truth
- local rights truth cache treated as authority
- local signature truth cache treated as authority

# ------------------------------------------------------------
# 12. IMPLEMENTATION CHECKLIST
# ------------------------------------------------------------

implementation_checklist:
- no persona core duplicate tables in StaticArtOS
- no direct mutation routes to Persona canonical state
- only snapshot reference fields remain
- public/external display is signed snapshot based
- local caches are rebuildable only
- rights checks use formal event/contract paths
- direct mutation paths are listed and abolished if found

# ------------------------------------------------------------
# 13. FINAL JUDGEMENT
# ------------------------------------------------------------

final_judgement:
- StaticArtOS must be snapshot-consumption based for Persona integration.
- StaticArtOS must not duplicate Persona core.
- StaticArtOS must not directly mutate Persona canonical state.
- StaticArtOS may hold only dependent references and app-local view data.
