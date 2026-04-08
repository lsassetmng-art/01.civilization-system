# ============================================================
# AERIAL SUPPORT GOVERNOR
# SECURITY
# ============================================================

status: draft
layer: security
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for Aerial support behavior.

# 2. SECURITY SCOPE

- support action authorization
- escalation provenance
- support/control distinction protection
- visible result integrity

# 3. SECURITY RULES

- escalation requires explicit authority and target
- support actions must remain attributable
- support path must not be used for hidden direct control
- visible result records must be tamper-evident

