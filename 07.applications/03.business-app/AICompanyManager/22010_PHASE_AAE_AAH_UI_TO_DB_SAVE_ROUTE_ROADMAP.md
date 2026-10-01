# AICompanyManager Phase AAE-AAH UI to DB Save Route Roadmap

## Current state
- BusinessOS DB robot_pool candidate display works.
- Payload preview works.
- Direct DB placement save has passed.
- Worker exact model correction has passed.

## This phase
Implement UI-to-DB save route:
1. Browser reads validated placement payload.
2. Browser sends payload to local write API.
3. Local write API validates payload.
4. Local write API upserts business.company_robot_placement.
5. UI displays save result.

## Safety
- The implementation adds a persistent save route.
- This script itself only performs rollback smoke.
- Real DB save occurs only when user presses DB本保存 in the UI.
- quantity_consumption remains false.
- RLS changes are not applied.
