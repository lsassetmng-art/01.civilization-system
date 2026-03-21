# ============================================================
# RUNTIME ISOLATION RULE
# ============================================================

status: canonical
scope: architecture
component: runtime-isolation-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical runtime isolation principles
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- isolation between runtime units
- failure containment expectations
- corruption prevention boundaries
- fail-closed structural principles


# ============================================================
# CORE PRINCIPLE
# ============================================================

Runtime failures must remain isolated.

One runtime unit must not corrupt another unit's
source-of-truth, state meaning, or structural boundary.


# ============================================================
# ISOLATION RULE
# ============================================================

Runtime isolation means:

- one runtime unit may fail independently
- failure must remain attributable
- failure must not silently mutate unrelated runtime units
- boundary enforcement must continue under failure conditions


# ============================================================
# FAILURE CONTAINMENT RULE
# ============================================================

When runtime failure occurs,
containment is required.

Containment may include:

- rejecting invalid input
- halting unsafe mutation
- preserving prior authoritative state
- retrying through controlled mechanisms
- marking failure explicitly


# ============================================================
# CROSS-RUNTIME RULE
# ============================================================

Cross-runtime interaction is allowed
only through explicit contracts and bounded integration behavior.

Runtime coupling must not become
silent shared corruption risk.


# ============================================================
# FAIL-CLOSED RULE
# ============================================================

When runtime correctness cannot be established,
the system should prefer fail-closed behavior
over silent corruption.

Examples:

- deny invalid state transition
- reject unverifiable sync payload
- disable invalid mirrored usage
- stop unsafe mutation path


# ============================================================
# FINAL RULE
# ============================================================

Runtime isolation is mandatory.

Failure must be contained.
Boundary corruption is prohibited.
Fail-closed isolation is required when correctness is uncertain.
