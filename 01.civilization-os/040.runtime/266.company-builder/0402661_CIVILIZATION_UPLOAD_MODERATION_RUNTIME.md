# ============================================================
# CIVILIZATION UPLOAD MODERATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for upload moderation and illegality control
inside CivilizationOS.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- prohibited notice applicability
- agreement validity
- upload acceptance eligibility
- AI review result
- human review result
- publication eligibility
- post-publication restriction readiness


# ============================================================
# 2. AGREEMENT RULE
# ============================================================

Upload submission must fail closed if:
- applicable prohibited notice is missing
- agreement is missing
- agreement version is unresolved
- agreement is expired or invalid where policy requires


# ============================================================
# 3. REVIEW RULE
# ============================================================

The runtime must distinguish:
- AI pass
- AI fail
- AI escalation
- human pass
- human reject
- human hold

Human review is mandatory before publication.


# ============================================================
# 4. PUBLICATION RULE
# ============================================================

Publication is allowed only if:
- agreement is valid
- AI review is passed or escalated safely
- human review is passed
- illegality/rights/prohibited-category checks are passed
- no unresolved policy state remains

Fail closed if publication eligibility cannot be resolved safely.


# ============================================================
# 5. FINAL RUNTIME RULE
# ============================================================

Upload moderation runtime must be:
- agreement-aware
- AI-review-aware
- human-review-aware
- publication-gated
- fail-closed
