# ============================================================
# K1 K6 EXACTNESS RETURN MASTER MATRIX
# ============================================================

status: canonical-matrix
layer: meta
domain: k1-k6-exactness-return
system: StreamingOS
prepared_by: Zero
owner: Boss

matrix:

K1_foundation:
- exactness_scope:
  - principal
  - session
  - auth
  - screen-endpoint
  - payload-to-ddl
- persona_reading_rule:
  - persona_id and snapshot refs may exist
  - no local growth/trust/mutable canonical meaning
- return_goal:
  - foundation exactness remains valid under reference-only reading

K2_asset_publish:
- exactness_scope:
  - archive asset
  - clip asset
  - publish job
  - auth
  - payload-to-ddl
- persona_reading_rule:
  - display/persona exposure uses signed snapshot or formal Persona result refs
  - no local persona rights/profile canonical
- return_goal:
  - asset exactness remains valid under display-ref reading

K3_creator_viewer:
- exactness_scope:
  - creator platform
  - viewer discovery
  - viewer continuity
  - auth
  - screen-endpoint
- persona_reading_rule:
  - performer binding is assignment truth only
  - creator/viewer state remains local
  - persona outputs are refs only
- return_goal:
  - creator/viewer exactness remains valid without persona core duplication

K4_moderation_notification:
- exactness_scope:
  - review pipeline
  - moderation
  - notification
  - auth
  - screen-endpoint
- persona_reading_rule:
  - moderation may reference persona display refs only
  - no persona internal truth storage
- return_goal:
  - moderation exactness remains valid without direct mutation path

K5_corporate:
- exactness_scope:
  - corporate channel
  - oversight
  - affiliation
  - auth
  - screen-endpoint
- persona_reading_rule:
  - company views use signed snapshot and formal release/license/access refs only
  - no company-local persona canonical
- return_goal:
  - corporate exactness remains valid under formal reference reading

K6_monetization_reaction_ranking_ad:
- exactness_scope:
  - monetization
  - reaction
  - ranking
  - ad
  - auth
  - screen-endpoint
- persona_reading_rule:
  - emotional auto tipping consumes signed snapshot or formal Persona result refs only
  - local intensities, limits, balances, stop flags remain Streaming-local
- return_goal:
  - monetization exactness remains valid without persona emotion canonical duplication
