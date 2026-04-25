# ============================================================
# AIWORKER TENANCY ASSIGNMENT AND AVAILABILITY MODEL
# ============================================================

status: exact-model
system: AiworkerOS
layer: 030.model
owner: Boss
prepared_by: Zero

purpose:
Freeze tenancy and assignment-side worker truth.

tenancy_dimensions:
- provider_company_id
- tenant_company_id
- tenant_user_id
- assigned_app_scope
- assigned_project_id
- assignment_lane_scope

assignment_state_values:
- UNASSIGNED
- RESERVED
- ASSIGNED
- ACTIVE
- PAUSED
- COOLDOWN
- MAINTENANCE
- REPAIR
- REBUILD
- RETIRED

availability_state_values:
- AVAILABLE
- BUSY
- RESERVED
- UNAVAILABLE
- MAINTENANCE
- REPAIR
- REBUILD
- SUSPENDED

queue_dimensions:
- queue_family
- queue_priority_band
- queue_position
- last_assignment_at
- concurrent_capacity
- current_load_band

hard_rule:
Assignment entity truth lives in aiworker even when the request originated in business.
