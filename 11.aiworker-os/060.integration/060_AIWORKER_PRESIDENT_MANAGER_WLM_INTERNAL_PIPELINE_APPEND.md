# AIWorkerOS Integration Append: President to Manager to W/L/M Internal Pipeline

## Status

accepted-internal-only

## Integration flow

1. President HD-R5P creates or holds Manager distribution candidates.
2. Distribution candidates are converted into manager_work_instruction.
3. Manager accepts acceptable President instructions.
4. Manager creates manager_instruction_plan.
5. Manager decomposes each plan into:
   - Manager planning task
   - Worker draft task
   - Leader review task
   - Manager final gate task
6. Worker mock output is created.
7. Leader mock review is created.
8. Manager final gate marks plan as DELIVERY_READY_INTERNAL.

## DB acceptance package

Acceptance package:

- aiworker.internal_pipeline_acceptance_package
- aiworker.internal_pipeline_acceptance_check

Acceptance views:

- aiworker.vw_president_wlm_internal_pipeline_acceptance_metrics_v1
- aiworker.vw_president_wlm_internal_pipeline_acceptance_summary_v1
- aiworker.vw_president_wlm_internal_pipeline_acceptance_detail_v1

## Accepted result

Expected accepted result:

- accepted_instruction_count >= 3
- internal_delivery_ready_plan_count >= 3
- worker_done_count >= 3
- leader_done_count >= 3
- manager_final_gate_done_count >= 3
- external_execution_allowed_flag = false
- pg_apply_allowed_flag = false
- destructive_action_allowed_flag = false
