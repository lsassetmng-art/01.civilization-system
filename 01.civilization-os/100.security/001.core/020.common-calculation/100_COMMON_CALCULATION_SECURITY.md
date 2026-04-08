# ============================================================
# COMMON CALCULATION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for shared calculation execution.

# 2. SECURITY SCOPE

- formula version integrity
- parameter provenance integrity
- result publication authorization
- audit protection

# 3. SECURITY RULES

- formula source must be trusted and explicit
- parameter provenance spoofing is prohibited
- failed calculation must not publish privileged output
- audit records must preserve execution identity

