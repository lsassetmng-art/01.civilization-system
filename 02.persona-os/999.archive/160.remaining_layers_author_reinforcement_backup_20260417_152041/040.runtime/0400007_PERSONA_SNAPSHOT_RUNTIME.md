# ============================================================
# PERSONA SNAPSHOT RUNTIME
# ============================================================

status: canonical
component: persona-snapshot-runtime

owner: Boss
prepared_by: Zero

# PURPOSE

Issue cryptographically verifiable persona snapshots.

# SNAPSHOT FLOW

snapshot-issue
↓
canonical json build
↓
hash calculation
↓
Ed25519 signing
↓
store snapshot

# RULES

snapshot is immutable
revocation allowed
multiple snapshots may coexist

