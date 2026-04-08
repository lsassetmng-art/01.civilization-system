# ============================================================
# EVALUATION
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for career evaluation structures.

# 2. IMPLEMENTATION TARGETS

- evaluation-definition handling
- session/metric handling
- result publication
- audit publication

# 3. DATA / STATE

Canonical structures:
- evaluation_definition
- evaluation_session
- evaluation_metric
- evaluation_result

# 4. EXECUTION

- resolve explicit evaluation scope and subject identity
- bind metric set before result publication
- publish one explicit result per evaluation session
- reject hidden evaluation-result mutation path

# 5. VALIDATION

- reject missing evaluation or subject scope
- reject invalid metric binding
- reject hidden evaluation-result mutation

# 6. OBSERVABILITY

- evaluation audit
- metric/session visibility
- result visibility

