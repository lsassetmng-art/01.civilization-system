# ============================================================
# STATIC ART OS PERSONA REFERENCE TEST EXACTNESS
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define exact test coverage for Persona reference usage in StaticArtOS.

# ------------------------------------------------------------
# 1. DB EXACTNESS TESTS
# ------------------------------------------------------------

db_tests:
- banned tables do not exist:
  - persona_core
  - persona_state
  - persona_growth
  - persona_memory
  - persona_signature
  - persona_rights
- required reference tables exist when persona-linked display is introduced
- source_event_id uniqueness prevents duplicate reflection
- local_view_config_json rejects forbidden truth-like keys by application validation rule
- projection tables remain rebuildable and not canonical

# ------------------------------------------------------------
# 2. API CONTRACT TESTS
# ------------------------------------------------------------

api_tests:
- GET asset detail returns creator_persona_reference only as reference
- GET asset detail does not expose mutable persona truth fields
- PATCH local_view_config accepts presentation-only keys
- PATCH local_view_config rejects mutable persona truth keys with 422
- internal result reflection endpoint accepts valid result payload
- internal result reflection endpoint is idempotent for same source_event_id
- forbidden direct mutation endpoints do not exist

# ------------------------------------------------------------
# 3. EVENT CONTRACT TESTS
# ------------------------------------------------------------

event_tests:
- snapshot apply result reflects to correct reference/history tables
- projection refresh result updates projection table only
- rights verified result updates digest/reference only
- stale replay does not overwrite newer reflected state
- duplicate source_event_id does not create duplicate history row

# ------------------------------------------------------------
# 4. UI STATEFLOW TESTS
# ------------------------------------------------------------

ui_tests:
- creator workspace shows signed snapshot status and projection tabs
- public asset detail renders display-safe creator card only
- exhibition display uses exhibition projection only
- expired snapshot renders stale/unavailable state without fabricating local truth
- local_view_config edit affects presentation only
- UI has no persona canonical edit action

# ------------------------------------------------------------
# 5. POLICY / REGRESSION TESTS
# ------------------------------------------------------------

policy_tests:
- Persona non-duplication rule anchor file exists
- Persona final recheck launcher exists
- wording markers remain present in overview/roadmap/checklist/gate/signoff/dashboard
- freeze/handoff/signoff addendum markers remain present
- signed snapshot basis remains the declared display rule

regression_tests:
- adding Persona-linked display does not blur asset/business core ownership
- adding projection refresh does not create Persona truth cache
- next-chat handoff and final landing portal still point to Persona rule where relevant

# ------------------------------------------------------------
# 6. FINAL TEST JUDGEMENT
# ------------------------------------------------------------

final_test_judgement:
- StaticArtOS Persona reference implementation is acceptable only if exactness tests prove:
  - no canonical duplication
  - no direct mutation
  - signed snapshot display basis
  - presentation-only local config
  - rebuildable projection/cache behavior
