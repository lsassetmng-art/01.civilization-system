# AICompanyManager Phase YJ-YM Manager / Leader / Worker payload final check roadmap

## Current position
- President payload is confirmed OK.
- BusinessOS DB company binding is confirmed OK.
- robot_pool connection is confirmed OK.
- Existing assignment resolver is active.

## This phase
- No UI code change.
- No DB write.
- Restart local UI server.
- Confirm source markers required for final payload preview.
- Open UI for manual final check of Manager / Leader / Worker payload.

## Manual final check target
Manager / Leader / Worker each should show:
- company status: OK_INPUT_UUID
- target status: OK_SINGLE_DB_ROW_FALLBACK or stronger OK status
- robot status: OK_ROBOT_SELECTED
- validation: OK_STRICT_PREVIEW_VALIDATION
- warning: -
- status: PREVIEW_ONLY_CANONICAL_OK

## Next phase
If Manager / Leader / Worker all pass, proceed to rollback smoke.
