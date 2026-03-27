# ============================================================
# INSURANCE OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: insurance-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- policy_defined
- premium_cycle_started
- claim_submitted
- claim_reviewed
- payout_approved_or_rejected
- reserve_adjusted


# ============================================================
# 2. FINAL RULE
# ============================================================

Insurance operation must separate premium, claim, and payout logic.
