# ============================================================
# EXECUTION CONTROL
# SECURITY
# ============================================================

status: draft
layer: security
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for execution control.

# 2. SECURITY SCOPE

- controller identity integrity
- window/mode authorization
- blocked-state integrity
- execution audit protection

# 3. SECURITY RULES

- controller and execution-window changes require explicit authorization
- blocked-state changes must be attributable
- unauthorized continuation of blocked execution must be detectable
- execution audit must preserve controller identity

