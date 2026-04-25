# ============================================================
# STREAMING OS PERSONA FILE BY FILE REWRITE INSTRUCTION PACK
# ============================================================

status: canonical-instruction-pack
layer: meta
domain: persona-boundary-realignment
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Defines the next exact rewrite targets by document.

rewrite_instructions:

instruction_01:
- file: 0300400005_STREAMING_PERSONA_GROWTH_REF_MODEL.md
- action:
  - remove local growth-ref canonical wording
  - convert to request/result/snapshot consume ref model
- expected_result:
  - no local growth truth remains

instruction_02:
- file: 0300400006_STREAMING_PERSONA_TRUST_REF_MODEL.md
- action:
  - remove trust_score / trust_level canonical interpretation
  - convert to trust result consume reference + local display projection
- expected_result:
  - no local trust truth remains

instruction_03:
- file: 0200012_STREAMING_TO_PERSONA_GROWTH_SYNC_ARCHITECTURE.md
- action:
  - rewrite as request-event / result-event architecture only
- expected_result:
  - no sync-like direct apply implication remains

instruction_04:
- file: 0300500003_STREAMING_PERSONA_GROWTH_REQUEST_MODEL.md
- action:
  - keep request payload only
  - remove any local-applied meaning
- expected_result:
  - request-only model

instruction_05:
- file: 0400010_STREAMING_TO_PERSONA_GROWTH_REQUEST_RUNTIME.md
- action:
  - rewrite runtime as dispatch-only
- expected_result:
  - no local growth apply path

instruction_06:
- file: 0500003_STREAMING_TO_PERSONA_GROWTH_REQUEST_FLOW.md
- action:
  - enforce request -> PersonaOS apply -> result consume
- expected_result:
  - no direct mutation flow wording

instruction_07:
- file: 0500005_PERSONA_TO_STREAMING_TRUST_SYNC_FLOW.md
- action:
  - rewrite as result consume flow only
- expected_result:
  - no trust sync replication wording

instruction_08:
- file: 0400012_PERSONA_TRUST_SYNC_CONSUME_RUNTIME.md
- action:
  - remove canonical trust persistence implication
- expected_result:
  - consume + derived display only

instruction_09:
- file: 0302201_STREAMING_PERSONA_PERFORMER_BINDING_MODEL.md
- action:
  - replace persona binding truth wording with performer assignment reference wording
  - keep participation-safety assignment truth only
- expected_result:
  - Streaming owns assignment truth, not persona internal truth

instruction_10:
- file: 0601200_STREAMING_OS_PERSONA_REACTION_INTEGRATION.md
- action:
  - replace personality-context consumption wording with signed snapshot / formal output consumption wording
- expected_result:
  - no persona internal-state read implication

instruction_11:
- file: auto tipping related exact design docs
- action:
  - replace persona_profile_reference with signed snapshot ref / formal Persona result ref
- expected_result:
  - no local persona profile canonical dependency

next_step_rule:
After these rewrites, run one more pass for:
- direct mutation wording
- local canonical mirror wording
- signed snapshot display compliance
