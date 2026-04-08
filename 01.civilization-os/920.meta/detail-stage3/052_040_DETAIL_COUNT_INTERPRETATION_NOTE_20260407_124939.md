# ============================================================
# 040 DETAIL COUNT INTERPRETATION NOTE
# ============================================================

status: canonical-review
prepared_by: Zero
owner: Boss
target_domain: 040.detail

purpose:
Defines the formal interpretation rule for 040.detail review.

summary:
040.detail is an extended detail domain.
It contains both canonical detail-core files
and detail-support extension files.
Therefore it must not be judged by the standard
9/8 direct-count rule used for 004/005/006/012.

formal_rules:
- 040.detail uses extended-count interpretation
- count review and body-density review are separated
- body-density review must be split into:
  - core body set
  - support extension set
- both sets must pass for review closure

result:
- structure interpretation: PASS
- core body density: PASS
- support body density: PASS
- review closure readiness: PASS
