# ============================================================
# ELIGIBILITY EVALUATION MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: eligibility-evaluation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVALUATION INPUTS
# ============================================================

evaluation_inputs:
- actor_age_or_stage
- school_history
- qualification_history
- skill_state
- loyalty_state_when_required
- nation_membership
- application_cycle
- nation_specific_rules


# ============================================================
# 2. FINAL RULE
# ============================================================

Application and exam alerts
must be based on explicit eligibility evaluation,
not vague recommendation only.
