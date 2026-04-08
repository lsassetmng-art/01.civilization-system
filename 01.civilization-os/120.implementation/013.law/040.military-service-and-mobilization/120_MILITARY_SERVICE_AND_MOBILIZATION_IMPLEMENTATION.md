# ============================================================
# MILITARY SERVICE AND MOBILIZATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for military service and mobilization.

# 2. IMPLEMENTATION TARGETS

- service-rule handling
- obligation-state handling
- mobilization-order handling
- status publication
- audit publication

# 3. DATA / STATE

Canonical structures:
- military_service_rule
- mobilization_order
- service_obligation_state
- mobilization_status

# 4. EXECUTION

- resolve explicit order scope and subject obligation
- persist order and status before execution publication
- preserve order identity across mobilization progression
- reject hidden mobilization path

# 5. VALIDATION

- reject missing order scope
- reject invalid obligation binding
- reject hidden mobilization without order

# 6. OBSERVABILITY

- mobilization audit
- obligation/order visibility
- status visibility

