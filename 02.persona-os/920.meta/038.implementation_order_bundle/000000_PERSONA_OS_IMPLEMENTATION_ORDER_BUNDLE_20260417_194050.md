# ============================================================
# PERSONA OS IMPLEMENTATION ORDER BUNDLE
# ============================================================

status: completed
system: PersonaOS
generated_at: 20260417_194050

summary:
- first_wave_count: 4
- second_wave_count: 3
- dependency_rule_count: 9
- gate_rule_count: 10

first_wave:
- 1|edge_apply|first_wave|event intake and terminal feedback|120.implementation/1200002_PERSONA_EDGE_FUNCTION_SPEC.md
- 2|state_apply|first_wave|canonical truth mutation and transition control|120.implementation/1200003_PERSONA_STATE_APPLY_SPEC.md
- 3|builder_api|first_wave|authoring contract and publish gate|120.implementation/1200700002_PERSONA_BUILDER_API_SPEC.md
- 4|builder_storage|first_wave|draft or validation persistence mapping|120.implementation/1200700003_PERSONA_BUILDER_STORAGE_MAPPING.md

second_wave:
- 5|runtime_session|second_wave|runtime lifecycle hosting|120.implementation/080.runtime_hosting/1200800002_PERSONA_RUNTIME_SESSION_IMPLEMENTATION.md
- 6|visual_runtime|second_wave|released visual resolution|120.implementation/070.visual/1200700002_PERSONA_VISUAL_RUNTIME_IMPLEMENTATION.md
- 7|external_release|second_wave|external release dispatch and result handling|120.implementation/120.external_rights/1201200002_PERSONA_EXTERNAL_RELEASE_IMPLEMENTATION.md

implementation_dependencies:
- edge_apply -> state_apply | validated inbound command must hand off to canonical apply
- builder_api -> builder_storage | authoring contract must map to stable draft persistence
- builder_api -> state_apply | publish or validation actions must use canonical truth transition
- builder_storage -> builder_api | builder persistence fields must satisfy API contract and status family
- state_apply -> runtime_session | runtime entry should consume already-fixed truth-side transitions
- state_apply -> visual_runtime | released or publishable state must precede runtime visual resolution
- state_apply -> external_release | external release must consume immutable or release-safe source state
- runtime_session -> visual_runtime | runtime host may require resolved released visual inputs
- external_release -> audit evidence | release result must preserve correlation and dispatch outcome

implementation_gates:
- FIRST_WAVE_GATE_1: edge_apply must have fixed payload, code family, transition table, persistence touchpoints, and acceptance gate
- FIRST_WAVE_GATE_2: state_apply must have fixed pre_state, action_code, post_state, reject family, and audit linkage
- FIRST_WAVE_GATE_3: builder_api must have fixed request and response families and publish gate conditions
- FIRST_WAVE_GATE_4: builder_storage must have fixed status columns, linkage rules, and lineage-safe publish mapping
- SECOND_WAVE_GATE_1: runtime_session starts only after release-safe entry conditions are explicit
- SECOND_WAVE_GATE_2: visual_runtime starts only after released visual resolution inputs are explicit
- SECOND_WAVE_GATE_3: external_release starts only after immutable source and policy block rules are explicit
- GLOBAL_GATE_1: no DB or app implementation before exact payload review is accepted
- GLOBAL_GATE_2: no ambiguous status or error family may remain in first-wave docs
- GLOBAL_GATE_3: no hidden persistence write path may remain in implementation docs
