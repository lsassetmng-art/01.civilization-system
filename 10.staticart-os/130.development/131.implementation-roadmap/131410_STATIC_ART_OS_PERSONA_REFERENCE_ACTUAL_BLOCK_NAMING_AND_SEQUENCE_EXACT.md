# ============================================================
# STATIC ART OS PERSONA REFERENCE ACTUAL BLOCK NAMING AND SEQUENCE EXACT
# ============================================================

status: active-exact-sequence
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define naming and sequencing rules for actual blocks.

block_naming_rule:
- use package-derived naming
- include sequence order within package
- keep file/block name readable and stable
- avoid ambiguous names like fix1 or temp_patch

recommended_id_shape:
- PR-A02-B01
- PR-A02-B02
- PR-A03-B01
- PR-A04-B01

meaning:
- PR-A02 = actual work package id
- B01 = first bounded execution block in that package

recommended_sequence:
  PR-A01:
    - B01 scope confirmation
  PR-A02:
    - B01 DDL/migration authoring
    - B02 verify-only or migration review evidence
  PR-A03:
    - B01 reflection contract wiring
    - B02 idempotency/stale handling proof
  PR-A04:
    - B01 read-side DTO/response extension
    - B02 local_view_config validation path
  PR-A05:
    - B01 creator surface
    - B02 public surface
    - B03 exhibition surface
  PR-A06:
    - B01 acceptance/test proof
  PR-A07:
    - B01 runtime guard/rollout readiness

sequencing_rule:
- B02 may not start if B01 close gate is open
- later package block may not start if prerequisite package gate remains open
- mixed block is allowed only if still reviewable and bounded

sequence_judgement:
- naming and order exist to prevent invisible dependency jumps and review confusion
