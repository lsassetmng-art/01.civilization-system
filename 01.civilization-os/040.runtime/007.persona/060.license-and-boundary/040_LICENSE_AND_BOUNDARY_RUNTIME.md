# ============================================================
# LICENSE AND BOUNDARY
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime execution for license and boundary control.

# 2. RUNTIME STATE

- active license state
- boundary validation state
- grant/rule resolution state
- decision publication state

# 3. EXECUTION RULES

- valid license window must resolve before boundary crossing
- grant or transfer rule must be explicit before decision publication
- ambiguous validity or scope is prohibited
- unauthorized boundary crossing must be rejected before mutation

# 4. FAILURE HANDLING

- missing valid license -> reject
- missing grant/rule -> reject
- ambiguous validity window -> fail closed

