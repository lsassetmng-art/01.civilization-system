# ============================================================
# LIFE PLANNER NEXT CHAT HANDOFF NOTE
# ============================================================

status: handoff-note
system: LifePlanner
layer: 130.development
subfolder: 080.final-handoff
owner: Boss
prepared_by: Zero
schema: life

handoff_note:
  - if next chat continues design, start from audit/freeze docs and open issues triage
  - if next chat starts implementation planning, first confirm design freeze and keep life schema assumption
  - do not reopen already fixed pricing/role/scope decisions without explicit owner instruction
  - keep outputs bundled as much as possible

do_first_in_next_chat_candidates:
  - final contradiction audit
  - category master freeze review
  - implementation kickoff planning only after explicit approval
