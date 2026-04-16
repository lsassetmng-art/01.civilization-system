# ============================================================
# STREAMING OS RESTART ENTRY MARKER
# ============================================================

status: canonical-stop
system: streaming-os
owner: Boss
prepared_by: Zero

restart_entry_files:
- 9002900_STREAMING_OS_FINAL_HANDOFF_SUMMARY.md
- 9002500_STREAMING_OS_FREEZE_PHASE_SUMMARY.md
- 9002800_STREAMING_OS_ROOT_REVIEW_RESULT_SUMMARY.md
- 9003000_STREAMING_OS_DESIGN_CLOSEOUT_SUMMARY.md
- 0100004_STREAMING_OS_PLATFORM_AND_INTERNATIONAL_SUPPORT_ADDITIVE_NOTE.md

restart_rule:
On restart,
begin from these markers first,
then choose:
- refinement only
or
- implementation-kickoff preparation

important_interpretation:
At restart,
preserve:
- multilingual interpretation
- multi-currency interpretation
- nation-aware currency display interpretation
- iPhone / Android / PC / tablet interpretation

