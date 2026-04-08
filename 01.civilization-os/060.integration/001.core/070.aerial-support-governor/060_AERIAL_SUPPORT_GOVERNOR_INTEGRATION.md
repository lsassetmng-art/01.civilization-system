# ============================================================
# AERIAL SUPPORT GOVERNOR
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for Aerial support actions.

# 2. INTEGRATION SCOPE

- support context to assistive action evaluation
- support action result to user/operator surfaces
- escalation record to stronger governance path
- support audit to operations

# 3. INTEGRATION RULES

- assistive evaluation must remain within declared support boundary
- escalation requires explicit reason and target
- visible result must preserve support vs control distinction
- unauthorized direct control must not cross boundary

