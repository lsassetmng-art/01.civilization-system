# AICompanyManager Phase AAQ-AAT Production Role Button Save Route R2 Roadmap

## Problem
Saving sometimes works and sometimes does not because the production role button save route depends on nearby payload preview cards.

## Fix
Role-specific buttons should build the save payload directly from the selected BusinessOS DB candidate.

## Canonical behavior
- No generic DB本保存 button.
- No payload-card-only save button.
- Role-specific buttons perform role-specific saves.
- Existing saved values are displayed as "保存済み".
- If no BusinessOS DB candidate is explicitly selected, save is blocked.

## Save target
- business.company_robot_placement

## Candidate source
- business.robot_pool

## Safety
- DB WRITE: NOT EXECUTED by this script
- API SAVE: NOT EXECUTED by this script
- RLS APPLY: NOT EXECUTED
