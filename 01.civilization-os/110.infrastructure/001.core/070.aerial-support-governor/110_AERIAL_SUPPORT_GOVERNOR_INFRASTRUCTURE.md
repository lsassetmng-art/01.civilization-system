# ============================================================
# AERIAL SUPPORT GOVERNOR
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for Aerial support execution.

# 2. INFRASTRUCTURE SCOPE

- support context storage
- assistive evaluation path
- escalation persistence path
- visible result publication path

# 3. INFRASTRUCTURE RULES

- support context must exist before assistive evaluation
- escalation persistence must preserve target and reason
- visible result must preserve support/control distinction
- infrastructure ambiguity must fail closed

