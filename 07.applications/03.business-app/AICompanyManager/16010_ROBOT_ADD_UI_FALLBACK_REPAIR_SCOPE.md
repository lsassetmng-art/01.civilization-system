# AICompanyManager robot add UI fallback repair scope

## Scope
Add UI-only robot placement fallback to existing local UI JavaScript.

## Robot type
Only Ai(ロボット) is supported for AICompanyManager worker placement.

## Local storage
- Key: aicm.robotPlacements.v1

## UI behavior
- Shows robot placement panel.
- Allows adding robot name, role, department, organization, and note.
- Renders added robots in the page.
- Stores data in browser localStorage.

## Boundary
This is UI local fallback only.

## Persistent DB registration
Persistent robot placement is not executed in this phase.
If DB正本へ登録する場合, separate explicit Boss approval is required:
robot placement persistent write OK
