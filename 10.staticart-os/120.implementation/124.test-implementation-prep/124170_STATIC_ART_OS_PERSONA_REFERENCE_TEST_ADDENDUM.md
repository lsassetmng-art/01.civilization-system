# ============================================================
# STATIC ART OS PERSONA REFERENCE TEST ADDENDUM
# ============================================================

status: active-design-note
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Define the test-layer addendum for Persona reference usage inside
StaticArtOS.

acceptance_targets:
  - asset detail exposes creator persona reference summary
  - asset detail exposes signed snapshot reference safely
  - public display uses signed snapshot basis
  - exhibition display uses signed snapshot basis
  - local view config changes do not mutate Persona canonical state
  - official result event can update applied_snapshot_id
  - no direct mutation endpoint exists in StaticArtOS

policy_targets:
  - banned persona duplicate tables do not exist
  - banned direct mutation paths do not exist
  - local cache/projection is rebuildable only
  - signed snapshot expiration is handled as reference expiration only

regression_targets:
  - creator card rendering still works when snapshot reference changes
  - public display projection refresh does not create local persona truth
  - exhibition display projection remains derived
  - PersonaOS request/apply/result flow remains the only mutation path
