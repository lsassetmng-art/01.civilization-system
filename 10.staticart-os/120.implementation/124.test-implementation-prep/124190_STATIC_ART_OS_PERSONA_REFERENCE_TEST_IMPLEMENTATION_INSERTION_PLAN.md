# ============================================================
# STATIC ART OS PERSONA REFERENCE TEST IMPLEMENTATION INSERTION PLAN
# ============================================================

status: active-implementation-insertion-plan
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define where Persona reference exact tests should be inserted into
actual StaticArtOS implementation testing.

test_insertion_targets:
  db_tests:
    - required reference tables exist when enabled
    - forbidden Persona duplicate tables do not exist
    - source_event_id idempotency works

  api_tests:
    - asset detail returns reference-safe fields only
    - local_view_config rejects forbidden keys
    - reflection endpoints are idempotent
    - forbidden write endpoints do not exist

  ui_tests:
    - creator workspace shows reference/projection safely
    - public/exhibition displays use signed snapshot basis
    - expired snapshot state renders correctly
    - no canonical Persona edit action exists

  policy_tests:
    - Persona rule anchor exists
    - Persona wording markers remain present
    - Persona addendum markers remain present

recommended_test_order:
  1:
    - policy/no-duplication tests
  2:
    - DB reflection/idempotency tests
  3:
    - API payload/forbidden write tests
  4:
    - UI signed snapshot basis tests
  5:
    - regression tests around boundary safety

test_integration_judgement:
- Tests must prove boundary preservation, not only happy-path rendering.
