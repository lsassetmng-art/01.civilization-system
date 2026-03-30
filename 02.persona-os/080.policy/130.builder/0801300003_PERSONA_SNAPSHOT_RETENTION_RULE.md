# ============================================================
# PERSONA SNAPSHOT RETENTION RULE
# ============================================================

status: canonical
scope: persona.snapshot.retention.rule
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the retention limit of Persona snapshots.


# RULE

A Persona may retain at most three snapshots.

No unlimited snapshot accumulation is allowed.

If a fourth snapshot is required,
existing snapshot set must be explicitly reviewed
for replacement or invalidation handling.


# PURPOSE OF LIMIT

- prevent snapshot sprawl
- reduce buyer confusion
- preserve stable reference surfaces
- simplify release governance


# FINAL DEFINITION

Maximum retained snapshot count per Persona is three.
