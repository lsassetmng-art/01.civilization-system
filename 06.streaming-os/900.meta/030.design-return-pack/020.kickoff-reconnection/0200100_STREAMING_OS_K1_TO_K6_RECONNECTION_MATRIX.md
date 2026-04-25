# ============================================================
# STREAMING OS K1 TO K6 RECONNECTION MATRIX
# ============================================================

status: canonical-matrix
layer: meta
domain: kickoff-reconnection
system: StreamingOS
prepared_by: Zero
owner: Boss

matrix:

K1_foundation:
- reconnect_state: required
- persona_rule:
  - principal/session may reference persona_id and signed snapshot only
  - no local persona growth/trust canonical state
- next_focus:
  - foundation exactness refresh

K2_asset_publish:
- reconnect_state: required
- persona_rule:
  - asset-facing persona display uses signed snapshot or formal Persona output refs
  - no local persona rights canonical
- next_focus:
  - asset publish exactness refresh

K3_creator_viewer:
- reconnect_state: required
- persona_rule:
  - performer binding is assignment truth only
  - creator/viewer local state remains local
  - no persona core duplication
- next_focus:
  - creator/viewer exactness refresh

K4_moderation_notification:
- reconnect_state: required
- persona_rule:
  - moderation and notification may reference persona display refs only
  - no persona internal truth storage
- next_focus:
  - moderation exactness refresh

K5_corporate:
- reconnect_state: required
- persona_rule:
  - affiliation / oversight / company views may use signed snapshot and formal release-license-access refs only
  - no company-local persona canonical
- next_focus:
  - corporate exactness refresh

K6_monetization_reaction_ranking_ad:
- reconnect_state: required
- persona_rule:
  - emotional auto tipping uses signed snapshot or Persona result refs only
  - local intensities and limits remain Streaming-local
- next_focus:
  - monetization exactness refresh
