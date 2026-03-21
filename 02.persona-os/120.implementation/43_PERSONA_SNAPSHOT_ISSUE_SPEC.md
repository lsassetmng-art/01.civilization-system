# ============================================================
# PERSONA SNAPSHOT ISSUE SPEC
# ============================================================

status: canonical
component: persona-snapshot-issue

owner: Boss
prepared_by: Zero

# PURPOSE

Create a signed snapshot
representing persona state.

# SNAPSHOT CONTENT

persona identity
growth state
visual identity
metadata

# PROCESS

build canonical json
calculate hash
sign using Ed25519
store snapshot record

# PROPERTIES

snapshot is immutable
multiple snapshots may coexist
snapshot represents a point-in-time proof

