# ============================================================
# BUSINESS REPLAY CORRECTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for replay, correction, authority, and evidence handling.

policy_rules:
- authority basis, evidence basis, and source-record basis must remain explicit
- replayed, applied, reversed, or superseded states must remain explicit
- correction traceability must remain preserved
- replay and correction truth must remain canonical

evaluation_order:
1 target validity
2 authority validity
3 evidence validity
4 source-record validity
5 execution eligibility
