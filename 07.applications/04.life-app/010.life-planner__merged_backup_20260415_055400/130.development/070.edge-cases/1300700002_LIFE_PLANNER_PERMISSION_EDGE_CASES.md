# ============================================================
# LIFE PLANNER PERMISSION EDGE CASES
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 070.edge-cases
owner: Boss
prepared_by: Zero
schema: life

edge_cases:
  - case_id: LP-EDGE-PERM-001
    case:
      - family_editor can view plan but category is outside share scope
    expected_behavior:
      - hide category content completely

  - case_id: LP-EDGE-PERM-002
    case:
      - family_viewer opens direct edit URL or action
    expected_behavior:
      - action blocked
      - no save control shown

  - case_id: LP-EDGE-PERM-003
    case:
      - family_editor tries to modify family share settings
    expected_behavior:
      - forbidden or hidden entry

  - case_id: LP-EDGE-PERM-004
    case:
      - owner removes allow flag for sensitive category already visible to shared role
    expected_behavior:
      - category stops rendering for shared role immediately in conceptual policy

  - case_id: LP-EDGE-PERM-005
    case:
      - archived plan is shared with family_editor
    expected_behavior:
      - read-heavy mode
      - no normal edit flow
