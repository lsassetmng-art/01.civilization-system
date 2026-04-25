# ============================================================
# STATIC ART OS PERSONA REFERENCE REGISTRY QUEUE GENERATION POLICY
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the generation policy for concrete registry/index/queue files
used to track Persona reference actual blocks.

core_rule:
- generated registry/index/queue files are operational control artifacts
- they must be reproducible from canonical block metadata and lineage
- they must not replace authored block source-of-truth
- they must remain separate from execution evidence

generation_policy:
- generate from approved storage topology and registry schema
- keep one canonical master index file
- keep one canonical registry ledger file
- keep queue views as derived operational files
- prefer regeneration/refresh over ad hoc manual divergence
- preserve review lineage and execution linkage

generation_inputs:
- authored block files
- review outcomes
- approval state
- storage stage
- linked execution run directory if any
- predecessor/successor lineage
- blocker/close_gate state if tracked

generation_outputs:
- master index file
- registry ledger file
- review queue file
- execution queue file
- blocked queue file
- archive reference queue file
- refresh report

forbidden_generation_behavior:
- generating queue state from guesswork
- silently dropping lineage
- merging authored block source and execution evidence into one file
- treating queue file as authority when registry/ledger says otherwise
- fabricating success/executed status without evidence linkage

policy_judgement:
- generation policy exists to keep registry/queue views consistent, reproducible, and reviewable
