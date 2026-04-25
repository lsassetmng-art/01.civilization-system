# PERSONA OS PENDING ROWS FILL GUIDE

status: compact-review-ready
system: PersonaOS
generated_at: 20260418_053804

source_input:
- 920.meta/045.go_decision_fill_and_eval/000001_PERSONA_OS_GO_DECISION_INPUT_20260418_053319.tsv

summary:
- pending_row_count: 6
- pending_implementation_target_count: 4
- pending_control_row_count: 2

how_to_fill:
1. Open the compact TSV.
2. For each row, set decision to one of: pass, pass_with_minor_fix, blocked.
3. Set blocker_status to one of: closed, open.
4. Fill reviewer and approval_note.
5. Copy those values back into the main GO decision input TSV.
6. Re-run the same GO decision evaluator block.

decision_hint:
- use pass when no meaningful blocker remains
- use pass_with_minor_fix when start is acceptable but a small follow-up remains
- use blocked when implementation should not start for that row

blocker_hint:
- use closed only when no blocking issue remains
- use open when any unresolved blocker remains
