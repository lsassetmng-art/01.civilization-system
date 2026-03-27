# ============================================================
# CIVILIZATION UPLOAD MODERATION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational flow of upload moderation
inside CivilizationOS.


# ============================================================
# 1. PRIMARY FLOW
# ============================================================

show prohibited-item notice
-> user reads notice
-> explicit agreement
-> upload submission
-> AI review
-> human review
-> approve / reject / hold
-> publish eligibility
-> publish if allowed


# ============================================================
# 2. REVIEW TIME NOTICE FLOW
# ============================================================

before or during upload submission,
the system should display:

- review is generally expected within 7 days
- review may take longer depending on complexity,
  rights verification, policy checks, review volume,
  or additional confirmation requirements


# ============================================================
# 3. POST-PUBLICATION FLOW
# ============================================================

if later violation or unresolved issue is found:
-> hold
-> suspend
-> delist
-> revoke where lawful


# ============================================================
# 4. FINAL FLOW RULE
# ============================================================

Upload moderation flow must remain:
- notice-aware
- agreement-aware
- AI-reviewed
- human-reviewed
- publication-gated
