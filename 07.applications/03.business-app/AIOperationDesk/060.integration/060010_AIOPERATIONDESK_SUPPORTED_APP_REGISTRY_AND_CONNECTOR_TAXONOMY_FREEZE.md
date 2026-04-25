# ============================================================
# AI OPERATION DESK SUPPORTED APP REGISTRY AND CONNECTOR TAXONOMY FREEZE
# ============================================================

status: freeze-candidate
app: AIOperationDesk
layer: integration
owner: Boss
prepared_by: Zero

supported_app_registry_minimum_fields:
- app_code
- app_name
- app_summary
- app_purpose
- support_status
- resident_surface_supported
- supported_task_types
- supported_qa_scope
- supported_trigger_types
- supported_write_surfaces
- allowed_output_types
- risk_notes
- review_rules
- approval_rules
- failure_policy
- retry_policy
- common_errors
- operation_guides

connector_taxonomy:
- resident_context_help
- consult_only
- draft_generation
- governed_execution_bridge
- retry_bridge
- notification_bridge
- batch_summary_bridge

rules:
- operation QA is supported-app-only
- execution is supported-app-only
- unsupported apps are disallowed for both execution and specific QA
