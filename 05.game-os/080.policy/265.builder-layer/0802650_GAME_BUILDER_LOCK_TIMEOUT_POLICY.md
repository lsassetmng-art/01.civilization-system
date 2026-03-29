# ============================================================
# GAME BUILDER LOCK TIMEOUT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official lock timeout policy of Game Builder.

This policy defines:
- project lock behavior
- block lock behavior
- timeout expectations
- stale lock handling
- lock renewal expectations


# ============================================================
# 1. LOCK POLICY PRINCIPLE
# ============================================================

Locks exist to reduce unsafe overwrite risk.

Locks must be:
- explicit
- visible
- time-bounded where appropriate
- recoverable when stale


# ============================================================
# 2. PREFERRED LOCK GRANULARITY
# ============================================================

Preferred:
- block lock first

Optional:
- project lock when broad mutation scope is required

Block lock should be used whenever possible
to reduce unnecessary edit denial.


# ============================================================
# 3. TIMEOUT BASELINE
# ============================================================

Recommended baseline:
- block lock soft expiry around 10 to 20 minutes of inactivity
- project lock soft expiry around 15 to 30 minutes of inactivity

Actual values may be implementation-tuned,
but must remain explicit and configurable.


# ============================================================
# 4. LOCK RENEWAL
# ============================================================

A lock may renew while:
- the holder remains active
- edit activity continues
- session remains healthy

Renewal must not be invisible to conflict handling logic.


# ============================================================
# 5. STALE LOCK HANDLING
# ============================================================

When a lock is stale:
- it should become reclaimable according to policy
- reclaim or override should be explicit
- silent hidden override is discouraged

Higher-authority override, if allowed,
must remain visible and auditable.


# ============================================================
# 6. FINAL POLICY RULE
# ============================================================

Builder lock handling must remain explicit and time-bounded.

Core summary:

- prefer block locks
- use project lock sparingly
- inactivity timeouts must exist
- stale lock recovery must be explicit
