# AICompanyManager Phase YV-YY-R2 strict role compatible robot resolver roadmap

## Current state
- President payload: OK
- Leader payload: OK
- Worker payload: OK
- Manager payload: validation OK, but robot is Leader / HD-R4

## Cause
Role fallback matched Manager too loosely and could pick a Leader-only robot.

## Previous failure
Patch script failed because ${} inside a template string was interpreted by Node.

## This phase
- Replace resolver block using external JS fragment.
- Avoid template-string ${} parsing.
- Prefer BusinessOS DB select option compatible with target role.
- Prevent Leader-only HD-R4 from becoming Manager payload.
- No DB write.
