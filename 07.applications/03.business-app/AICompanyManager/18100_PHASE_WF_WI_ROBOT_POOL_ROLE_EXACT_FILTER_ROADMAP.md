# AICompanyManager Phase WF-WI robot_pool role exact filter roadmap

## Phase
- WF-WI

## Current position
BusinessOS DB-backed robot_pool connection works.
robot_pool count and role catalog count are visible.
Select freeze was improved by stable one-shot wire.

## Problem
Role candidates are mixed:
- President picker includes Manager-like candidates.
- Manager picker includes Leader / President-like candidates.
- Leader picker includes General / Origin / combat-control candidates.
- Worker picker can include non-Worker candidates.

## Cause
Previous WB-WE deliberately broadened role matching to avoid "候補なし".
Now DB-backed candidates are confirmed, so matching must be strict.

## This phase
- Replace frontend wire with role-specific exact filter.
- Use canonical model role map.
- Do not infer role from screen text or app name.
- Do not allow combat/security/conversation roles into normal business placement screens.
- Keep stable select behavior:
  - no interval polling
  - no MutationObserver loop
  - no select rewrite while focused
- Main UI JS remains unchanged.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent placement save
- quantity consumption
