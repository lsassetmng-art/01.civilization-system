# ============================================================
# EDUCATION FACILITY OPERATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for education facility operations.

# 2. IMPLEMENTATION TARGETS

- facility-definition handling
- rule/capacity handling
- operation-status handling
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- education_facility
- facility_operation_rule
- facility_capacity_state
- facility_operation_status

# 4. EXECUTION

- resolve explicit facility scope and rule set
- persist capacity and operation state before downstream handoff
- publish only validated operation/maintenance status
- reject hidden facility-status mutation path

# 5. VALIDATION

- reject missing facility scope
- reject invalid capacity or rule binding
- reject hidden facility-status mutation

# 6. OBSERVABILITY

- facility audit
- rule/capacity visibility
- operation-status visibility

