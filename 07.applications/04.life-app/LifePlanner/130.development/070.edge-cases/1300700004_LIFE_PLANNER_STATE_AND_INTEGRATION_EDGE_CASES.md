# ============================================================
# LIFE PLANNER STATE AND INTEGRATION EDGE CASES
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 070.edge-cases
owner: Boss
prepared_by: Zero
schema: life

edge_cases:
  - case_id: LP-EDGE-STATE-001
    case:
      - reflection candidate already dismissed but apply action attempted
    expected_behavior:
      - invalid state error
      - no write to target entities

  - case_id: LP-EDGE-STATE-002
    case:
      - completed goal is attempted to move back to planned
    expected_behavior:
      - forbidden transition in current design

  - case_id: LP-EDGE-STATE-003
    case:
      - declined shared member later needs re-invite
    expected_behavior:
      - treat as explicit new invite flow or clarified future rule
    note:
      - exact operational handling can be refined later

  - case_id: LP-EDGE-INTEG-001
    case:
      - upstream app sends new signal but summary cannot map cleanly
    expected_behavior:
      - create no unsafe auto-apply
      - hold as unmapped candidate or do not import

  - case_id: LP-EDGE-INTEG-002
    case:
      - same upstream source sends repeated candidate
    expected_behavior:
      - dedupe or cluster policy to be decided later
    note:
      - current design leaves exact dedupe logic open

  - case_id: LP-EDGE-INTEG-003
    case:
      - reflection apply targets hidden sensitive category for shared roles
    expected_behavior:
      - owner may apply
      - shared roles still cannot see hidden sensitive result outside allowed scope
