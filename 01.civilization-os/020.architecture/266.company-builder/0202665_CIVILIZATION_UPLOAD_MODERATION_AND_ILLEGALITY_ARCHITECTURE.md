# ============================================================
# CIVILIZATION UPLOAD MODERATION AND ILLEGALITY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official upload moderation and illegality architecture
inside CivilizationOS.

This architecture covers:
- prohibited item notice
- mandatory agreement
- AI review
- human review
- publish gating
- illegality / rights violation / prohibited-category control


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Upload acceptance is not the same as publication approval.

The system must distinguish:

- prohibited-item notice acknowledged
- user agreement recorded
- upload received
- AI review state
- human review state
- publication eligibility
- post-publication moderation state

Core principle:

uploaded
does not mean
publishable


# ============================================================
# 2. MANDATORY NOTICE PRINCIPLE
# ============================================================

Before upload,
the uploader must be shown prohibited-item and prohibited-conduct rules.

This must not be optional.

The uploader must explicitly acknowledge and agree
before upload submission proceeds.


# ============================================================
# 3. REVIEW PRINCIPLE
# ============================================================

The upload review chain must be:

prohibited-item notice
-> explicit agreement
-> upload submission
-> AI review
-> human review
-> approve / reject / hold
-> publish eligibility

Human review is mandatory.

AI pass is not final approval.


# ============================================================
# 4. REVIEW TIME PRINCIPLE
# ============================================================

The review notice should state:

- review is generally expected to complete within 7 days
- however, review may take longer depending on complexity,
  rights verification, policy checks, review volume,
  or additional confirmation needs

This is a target time, not a guaranteed deadline.


# ============================================================
# 5. PROHIBITED CONTENT PRINCIPLE
# ============================================================

The system must prohibit at minimum:
- illegal content
- unlawful rights-infringing content
- prohibited category content
- policy-violating upload content
- content whose publishability cannot be resolved safely

Unresolved safety/policy state must fail closed.


# ============================================================
# 6. FINAL ARCHITECTURAL RULE
# ============================================================

Upload moderation in CivilizationOS must be:
- notice-required
- agreement-required
- AI-reviewed
- human-reviewed
- publish-gated
- fail-closed on unresolved illegality or policy state
