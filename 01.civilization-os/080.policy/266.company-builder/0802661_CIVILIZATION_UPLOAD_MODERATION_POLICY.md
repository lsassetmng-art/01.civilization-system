# ============================================================
# CIVILIZATION UPLOAD MODERATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for upload moderation and illegality control
inside CivilizationOS.


# ============================================================
# 1. CORE POLICY
# ============================================================

Uploadable content must not become publishable
without a full review chain.

This is mandatory.


# ============================================================
# 2. NOTICE / AGREEMENT POLICY
# ============================================================

Before upload, the uploader must:
- be shown prohibited-item rules
- explicitly agree to them

This is mandatory and not optional.


# ============================================================
# 3. REVIEW POLICY
# ============================================================

AI review is mandatory.
Human review is mandatory.

AI review alone is insufficient for publication approval.

Human review must be passed before publication is allowed.


# ============================================================
# 4. TIME NOTICE POLICY
# ============================================================

The system must state that:
- review is generally expected within 7 days
- review may take longer where necessary

This is a target timeframe notice,
not a guaranteed completion deadline.


# ============================================================
# 5. PROHIBITED CONTENT POLICY
# ============================================================

At minimum, the following must be prohibited:
- illegal content
- rights-infringing content
- prohibited categories
- policy-violating content
- content whose publishability is unresolved

Unresolved state must fail closed.


# ============================================================
# 6. FINAL POLICY RULE
# ============================================================

Upload moderation policy in CivilizationOS must be:
- notice-required
- agreement-required
- AI-reviewed
- human-reviewed
- publication-gated
- fail-closed
