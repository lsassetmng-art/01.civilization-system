# ============================================================
# REFERENCE DETAIL
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for reference detail structures.

# 2. IMPLEMENTATION TARGETS

- reference-detail handling
- target/rule handling
- reference-status handling
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- reference_detail_record
- reference_target
- reference_rule
- reference_status

# 4. EXECUTION

- resolve explicit reference scope and reference-detail identity
- bind targets and rules before publication
- publish only explicit active or revised state
- reject hidden reference-detail mutation path

# 5. VALIDATION

- reject missing reference scope
- reject invalid target or rule binding
- reject hidden reference-detail mutation

# 6. OBSERVABILITY

- reference-detail audit
- target/rule visibility
- reference-status visibility

