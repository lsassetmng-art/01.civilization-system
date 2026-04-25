# ============================================================
# STATIC ART OS PERSONA REFERENCE EXACT WORDING INSERTION BUNDLE
# ============================================================

status: active-wording-bundle
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Provide exact wording blocks to be inserted into existing StaticArtOS
documents so that Persona non-duplication and signed-snapshot
consumption are explicitly reflected.

core_rule:
- StaticArtOS consumes Persona signed snapshot references only.
- StaticArtOS does not own Persona mutable canonical state.
- StaticArtOS must not directly mutate Persona canonical state.

# ------------------------------------------------------------
# 1. ROOT OVERVIEW INSERTION
# ------------------------------------------------------------

target_file:
- 000_STATIC_ART_OS_OVERVIEW.md

recommended_section_title:
- persona_reference_rule

exact_wording:
- StaticArtOS uses Persona signed snapshot references only.
- StaticArtOS does not own Persona mutable canonical state locally.
- StaticArtOS must not duplicate Persona core, emotion, growth, memory, signature, revocation, or rights canonical state.
- Public display, distribution display, and exhibition-facing display must use signed snapshot basis.
- StaticArtOS may keep only persona_id, snapshot_id, signed_snapshot_id, applied_snapshot_id, local_view_config, and rebuildable derived display data.

# ------------------------------------------------------------
# 2. ROOT ROADMAP INSERTION
# ------------------------------------------------------------

target_file:
- 000_STATIC_ART_OS_ROADMAP.md

recommended_section_title:
- persona_reference_side_link_rule

exact_wording:
- Persona integration in StaticArtOS is side-link only.
- StaticArtOS does not add Persona core canonical tables.
- Persona reference work may add signed snapshot reference tables and local display projection only.
- Persona mutable state change must follow request event -> PersonaOS apply -> result event -> StaticArtOS reflect.
- Persona reference alignment should be treated as additive design work after core asset/publish backbone stability.

# ------------------------------------------------------------
# 3. FINAL CHECKLIST INSERTION
# ------------------------------------------------------------

target_file:
- 131.implementation-roadmap/131330_STATIC_ART_OS_IMPLEMENTATION_READY_FINAL_CHECKLIST.md

recommended_section_title:
- persona_reference_rule_checks

exact_wording:
- no persona core duplicate tables exist in StaticArtOS
- no direct mutation path to Persona canonical state exists
- signed snapshot reference is used for public display
- signed snapshot reference is used for exhibition display
- local_view_config remains presentation-only
- local cache/projection remains rebuildable only
- Persona canonical ownership remains outside StaticArtOS

# ------------------------------------------------------------
# 4. PRE IMPLEMENTATION GATE MATRIX INSERTION
# ------------------------------------------------------------

target_file:
- 132.operations/132220_STATIC_ART_OS_PRE_IMPLEMENTATION_GATE_MATRIX.md

recommended_section_title:
- gate_5b_persona_reference_readiness

exact_wording:
  required:
    - Persona non-duplication rule has been reviewed
    - Persona signed snapshot consumption rule has been reviewed
    - no local Persona canonical duplication is planned
    - no direct Persona mutation path is planned
    - public/exhibition display uses signed snapshot basis when Persona-linked display is introduced
  check_entry:
    - bash 132.operations/132250_staticart_persona_rule_review.sh short
    - bash 132.operations/132260_staticart_persona_reference_addendum_review.sh short
    - bash 132.operations/132270_staticart_persona_reference_impact_review.sh short

# ------------------------------------------------------------
# 5. SIGNOFF MEMO INSERTION
# ------------------------------------------------------------

target_file:
- 920.meta/056.signoff_pack/000001_STATIC_ART_OS_PRE_IMPLEMENTATION_SIGNOFF_MEMO_TEMPLATE.md

recommended_section_title:
- persona_reference_review_result

exact_wording:
  persona_reference_review_result:
    persona_non_duplication_rule_reviewed: yes_or_no
    persona_signed_snapshot_rule_reviewed: yes_or_no
    no_persona_core_duplication_planned: yes_or_no
    no_direct_persona_mutation_path_planned: yes_or_no
    signed_snapshot_basis_for_public_display_confirmed: yes_or_no
    signed_snapshot_basis_for_exhibition_display_confirmed: yes_or_no

# ------------------------------------------------------------
# 6. DASHBOARD INSERTION
# ------------------------------------------------------------

target_file:
- 000002_STATIC_ART_OS_STATUS_DASHBOARD.md

recommended_section_title:
- persona_reference_status

exact_wording:
| Persona rule item | Status |
|---|---|
| persona_non_duplication_rule_defined | OK |
| persona_snapshot_consumption_rule_defined | OK |
| persona_direct_mutation_ban_defined | OK |
| persona_reference_addendum_defined | OK |
| persona_reference_impact_register_defined | OK |

# ------------------------------------------------------------
# 7. HEALTHCHECK / GATE INTERPRETATION NOTE
# ------------------------------------------------------------

target_files:
- 132.operations/132190_staticart_healthcheck.sh
- 132.operations/132240_staticart_pre_implementation_gate.sh

recommended_note:
- Healthcheck and gate scripts remain read-only.
- Persona rule confirmation is a review/signoff requirement, not a DB mutation flow.
- Persona canonical mutation remains outside StaticArtOS.

# ------------------------------------------------------------
# 8. DO NOT INSERT
# ------------------------------------------------------------

do_not_insert:
- wording that implies StaticArtOS owns Persona mutable state
- wording that implies StaticArtOS may issue/revoke Persona signature directly
- wording that implies local Persona cache is canonical
- wording that mixes Persona canonical growth with asset/business lifecycle
- wording that gives StaticArtOS authority over Persona rights canonical truth

# ------------------------------------------------------------
# 9. FINAL WORDING RULE
# ------------------------------------------------------------

final_wording_rule:
- Use "signed snapshot basis" consistently.
- Use "Persona canonical mutable state remains outside StaticArtOS" consistently.
- Use "request event -> PersonaOS apply -> result event -> StaticArtOS reflect" consistently when describing change flow.
