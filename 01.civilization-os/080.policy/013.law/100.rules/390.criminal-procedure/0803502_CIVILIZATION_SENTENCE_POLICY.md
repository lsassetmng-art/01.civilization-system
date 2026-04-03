# ============================================================
# CIVILIZATION SENTENCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for sentence execution.

policy_rules:
- sentence, authority, and execution identity basis must remain explicit
- stayed, failed, or completed execution states must remain explicit
- duplicate effective execution must be prevented
- sentence-execution truth must remain canonical

evaluation_order:
1 sentence validity
2 authority validity
3 execution identity validity
4 idempotency basis validity
5 execution eligibility
