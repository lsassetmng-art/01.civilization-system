# ============================================================
# TEST AND RELEASE PREPARATION
# ============================================================

status: draft

test_priorities:
  - duplicate import prevention
  - unit conversion correctness
  - average comparison correctness
  - score snapshot consistency
  - sharing scope enforcement
  - export permission separation
  - AI support boundary compliance

release_checks:
  - medical-claim wording review
  - reference source freshness review
  - privacy / audit verification
