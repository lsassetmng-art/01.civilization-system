# live AIWorkerOS call exact request and response payload

## Request JSON sample

{
  "source_app": "AICompanyManager",
  "source_os": "BusinessOS",
  "phase": "live_aiworkeros_call",
  "request_type": "workflow_start",

  "company_id": "00000000-0000-4000-8000-1db11893cb24",
  "department_id": "00000000-0000-4000-8000-f6d6b5b3d38c",
  "organization_id": "00000000-0000-4000-8000-4da5c1a6977e",

  "workflow_run_id": "00000000-0000-4000-8000-f10a00000001",
  "ledger_row_id": "00000000-0000-4000-8000-c5a1b0000001",
  "review_item_id": "00000000-0000-4000-8000-1eac7100aa01",
  "review_action_id": "00000000-0000-4000-8000-1eac71000001",

  "requested_worker_scope": {
    "worker_type": "ai_robot",
    "role": "Worker",
    "department_scope": "current_department",
    "task_scope": "single_workflow_run"
  },

  "instruction": {
    "summary": "Start the approved workflow and request AIWorkerOS-side live worker handling.",
    "allowed_actions": [
      "read_workflow_context",
      "create_execution_plan",
      "produce_worker_handoff_result"
    ],
    "forbidden_actions": [
      "apply_rls",
      "change_schema",
      "delete_data",
      "call_external_unapproved_services"
    ]
  },

  "execution_flags": {
    "db_write_by_caller": false,
    "rls_apply": false,
    "live_aiworkeros_call": true,
    "dry_run": false
  },

  "idempotency_key": "aicm-live-aiworkeros-00000000-0000-4000-8000-f10a00000001"
}

## Accepted response JSON sample

{
  "result": "accepted",
  "status": "queued",
  "source_app": "AICompanyManager",
  "workflow_run_id": "00000000-0000-4000-8000-f10a00000001",
  "aiworkeros_request_id": "00000000-0000-4000-8000-a10000000001",
  "assigned_worker": {
    "worker_kind": "ai_robot",
    "role": "Worker",
    "worker_id": null
  },
  "message": "Workflow start request accepted by AIWorkerOS.",
  "next_poll_url": "/aicm/v1/workflow-start/live-aiworkeros-call/00000000-0000-4000-8000-a10000000001"
}

## Completed response JSON sample

{
  "result": "completed",
  "status": "completed",
  "source_app": "AICompanyManager",
  "workflow_run_id": "00000000-0000-4000-8000-f10a00000001",
  "aiworkeros_request_id": "00000000-0000-4000-8000-a10000000001",
  "worker_result": {
    "summary": "Workflow execution plan created.",
    "handoff_required": true,
    "created_artifacts": []
  }
}

## Error response JSON sample

{
  "result": "error",
  "status": "rejected",
  "error_code": "WORKFLOW_NOT_STARTABLE",
  "message": "Workflow state does not allow live AIWorkerOS start.",
  "workflow_run_id": "00000000-0000-4000-8000-f10a00000001"
}
