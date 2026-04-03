# ============================================================
# ELECTION ASCENT FLOW MODEL
# ============================================================

status: canonical
layer: model
scope: political-power-and-election
component: election-ascent-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL FLOW
# ============================================================

canonical_flow:
- public_identity_accumulates
- campaign_support_accumulates
- candidacy_registered
- election_contested
- result_confirmed
- office_acquired
- authority_scope_expands


# ============================================================
# 2. FINAL RULE
# ============================================================

Electoral ascent must create
visible changes in authority scope.
