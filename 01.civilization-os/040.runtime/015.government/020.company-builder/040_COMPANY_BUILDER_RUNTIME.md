# ============================================================
# COMPANY BUILDER
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for company builder execution.

# 2. RUNTIME STATE

- active company-builder session
- ownership-state resolution
- validation execution state
- publication gate state

# 3. EXECUTION RULES

- one active builder session per company and builder scope
- ownership scope and ratio must validate before publication
- publication remains blocked until validations pass
- ambiguous builder session or ownership state is prohibited

# 4. FAILURE HANDLING

- missing owner scope -> reject
- ownership ratio inconsistency -> reject
- ambiguous builder session -> fail closed

