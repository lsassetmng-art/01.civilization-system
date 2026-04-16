# ============================================================
# LIFE PLANNER PRINT AND SHARE VIEW POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 070.export-summary
owner: Boss
prepared_by: Zero
schema: life

print_share_modes:
  - private_print_view
  - family_share_view
  - meeting_view

policy_rules:
  - private_print_view:
      includes:
        - full plan summary
        - sensitive categories allowed for owner
      restrictions:
        - no hidden masking needed for owner view

  - family_share_view:
      includes:
        - shared scope content only
      restrictions:
        - health / end_of_life / legal / finance content follows allow flags

  - meeting_view:
      includes:
        - discussion oriented highlights
        - major goals
        - important upcoming events
        - unresolved items
      restrictions:
        - omit deep personal detail unless explicitly included

layout_rules:
  - print/share view prefers sectioned blocks over dense tables
  - long free text should be truncated or collapsed by default in summary mode
  - no edit controls in print/share view
