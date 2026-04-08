# ============================================================
# PERSONA OS GOVERNANCE SEMANTIC REVIEW START
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Starts semantic review for the governance domain
across canonical layers.

# ============================================================
# 1. REVIEW QUESTIONS
# ============================================================

1. Is governance clearly separated from security gate behavior?
2. Is governance clearly separated from builder approval-preparation behavior?
3. Is governance clearly separated from persona truth ownership while still holding approval/eligibility authority?
4. Is governance clearly separated from rights/distribution/package mechanics?
5. Do policy and interface keep governance as approval/moderation/eligibility authority rather than generic mutation authority?

# ============================================================
# 2. FIRST REVIEW TARGETS
# ============================================================

- 010.constitution/160.governance/*
- 020.architecture/160.governance/*
- 030.model/160.governance/*
- 080.policy/160.governance/*
- 090.interface/160.governance/*
