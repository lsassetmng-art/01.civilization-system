# ============================================================
# MILITARY SERVICE AND MOBILIZATION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for military service and mobilization.

# 2. SECURITY SCOPE

- service-rule integrity
- obligation and order authorization
- mobilization-status integrity
- mobilization audit protection

# 3. SECURITY RULES

- obligation and order identity must be tamper-evident
- mobilization issuance requires explicit authorization
- hidden mobilization without order must be detectable
- mobilization audit must preserve order identity

