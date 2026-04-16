# PERSONA REPLAY PROTECTION SECURITY
status: canonical
layer: security
system: persona-os
scope: persona-replay-protection-security

Defines replay protection and uniqueness requirements.

# ============================================================
# REPLAY VERDICT VS EXECUTION REPETITION
# ============================================================

Replay-protection semantics must remain distinct
from VisualRuntime execution repetition.

Repeated rendering attempts, renderer retries,
display retries, fallback loops,
or repeated execution-stage behavior
must not be interpreted as canonical replay verdicts by default.

The following equivalences are prohibited:

- repeated render attempt = replay attack verdict
- renderer retry = canonical replay judgment
- execution repetition = protection truth
- local repeated display = replay-confirmed event

Replay verdict authority remains inside canonical security semantics,
not inside execution repetition semantics.

