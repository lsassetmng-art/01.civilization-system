# ============================================================
# STORY CORE DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines development guidance for canonical story implementation.

development_rules:
- Do not place canonical story meaning only in UI text or localization files.
- Do not merge live-stage selection and replay/history reading into one resolver.
- Do not skip branch evaluation because "current_stage is enough."
- Do not drop prior stage lineage during corrections.
- Do not expose restricted branch context before projection filtering.
- Do not let public summary generation read internal-only branch details directly.

test_matrix:
- story_scope validation -> required
- stage selection -> required
- branch evaluation -> required
- branch-visibility filtering -> required
- live/replay separation -> required
- correction lineage preservation -> required
- replay labeling -> required
- denial trace on branch access failure -> required

anti_patterns:
- replay view built from live current-stage query
- branch logic stored only in UI components
- correction overwriting stage history without revision link
- public summary serializer reusing internal detail serializer
- story replay path mutating current-story caches

review_checklist:
- story_scope and story_type are explicit
- stage selection runs before projection
- branch visibility is enforced after evaluation
- live and replay paths are separated
- correction preserves previous stage and branch lineage
- restricted details are never serialized into public summary path
- trace exists for branch decisions and denials where required

migration_rules:
- Move embedded UI branch flags into branch evaluation modules.
- Introduce replay reader before retiring legacy live-history mixed endpoints.
- Preserve revision_ref linkage during correction refactors.
- Add public-summary regression tests when changing story serializers.

failure_focus:
- invalid current_stage must fail closed
- missing replay_context must fail closed for replay reads
- unauthorized branch read must fail closed

example_scenarios:
- A replay page is rebuilt to use story_replay_reader only, while live dashboards continue using current_stage_selector with branch evaluation.

scope:
Covers development guidance, test expectations, migration caution,
and review focus for this subdomain.

required_behavior:
- preserve canonical separation defined by earlier layers
- add tests for the riskiest failure paths
- keep history and live paths distinct where applicable

validation_rules:
- new code must preserve layer intent
- new code must preserve failure-code stability where applicable
- new code must not weaken authority or visibility boundaries

failure_codes:
- DEVELOPMENT_GUIDANCE_SCOPE_DRIFT
- DEVELOPMENT_GUIDANCE_TEST_GAP
- DEVELOPMENT_GUIDANCE_HISTORY_LIVE_MIX
- DEVELOPMENT_GUIDANCE_AUTHORITY_REGRESSION
