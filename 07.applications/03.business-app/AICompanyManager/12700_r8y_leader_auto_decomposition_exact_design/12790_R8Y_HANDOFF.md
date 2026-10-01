# R8Y handoff

## Current conclusion

R8X confirmed existing PMLW tables.

Use:
- business.aicm_leader_middle_work_item
- business.aicm_leader_deliverable_requirement
- business.aicm_worker_work_unit

Do not create new middle/work-unit tables.

## Current counts

- auto candidate: 1
- pending manager major: 36
- archived: 1

## Next implementation

R8Z:
1. Add server route:
   - POST /api/aicm/v2/leader-auto-decomposition/run

2. Add server function:
   - runLeaderAutoDecomposition(body)

3. Add rollback smoke:
   - one candidate only
   - ROLLBACK only

4. Add UI integration:
   - after 課長へ送る確定
   - automatically call route
   - no extra user operation button

5. Update context hydration:
   - pmlw_middle_items / pmlwMiddleItems
   - pmlw_deliverable_requirements / pmlwDeliverableRequirements
   - pmlw_worker_work_units / pmlwWorkerWorkUnits

## Important

R8Z writes DB.
Do not execute persistent DB write without explicit approval.
佐藤(DB担当)レビュー対象.
