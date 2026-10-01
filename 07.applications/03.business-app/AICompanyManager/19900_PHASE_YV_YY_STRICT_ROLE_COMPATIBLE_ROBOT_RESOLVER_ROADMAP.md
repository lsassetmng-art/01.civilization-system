# AICompanyManager Phase YV-YY strict role compatible robot resolver roadmap

## Current state
- President payload: OK
- Leader payload: OK
- Worker payload: OK
- Manager payload: validation OK, but robot is Leader / HD-R4

## Cause
The previous role fallback searched raw row text. It could match "Manager" inside "AICompanyManager", so a Leader-only robot was incorrectly selected for Manager.

## This phase
- Replace role resolver with strict role-compatible resolver.
- Prefer current select's BusinessOS DB options.
- Accept selected robot only if:
  - robot_pool_id is UUID
  - option text contains BusinessOS DB
  - option text is compatible with the target role
- Role matching uses token boundaries, so AICompanyManager does not match Manager.
- No DB write.
