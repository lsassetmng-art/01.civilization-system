# ============================================================
# STREAMING RETRY DEAD LETTER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for shared retry and dead-letter governance in StreamingOS.

policy_rules:
- retry basis, cutoff basis, and quarantine basis must remain explicit
- exhausted, quarantined, or restored failure states must remain explicit
- failure traceability must remain preserved
- retry and dead-letter truth must remain canonical

retry_principles:
- retries must be bounded
- retries must not mask terminal failures
- retry identity must remain deterministic
- restoration must remain explicit

dead_letter_conditions:
- irrecoverable semantic failure
- terminal authority-basis failure
- exhausted retry budget
- incompatible contract profile
- missing target beyond cutoff
