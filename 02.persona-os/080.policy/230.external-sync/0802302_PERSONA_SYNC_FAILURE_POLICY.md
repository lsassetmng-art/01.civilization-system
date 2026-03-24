# ============================================================
# PERSONA SYNC FAILURE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for sync failure, retry, and dead-letter handling.

policy_rules:
- retry basis, cutoff basis, and dead-letter basis must remain explicit
- retriable, dead-lettered, or restored states must remain explicit
- failure traceability must remain preserved
- sync failure truth must remain canonical

retry_principles:
- retries must be bounded
- retries must not mask terminal sync failures
- retry identity must remain deterministic
- restoration must remain explicit

dead_letter_conditions:
- irrecoverable semantic failure
- terminal authority-basis failure
- exhausted retry budget
- incompatible contract profile
- missing target beyond cutoff
