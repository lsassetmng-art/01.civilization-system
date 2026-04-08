# ============================================================
# COMPANY BUILDER
# SECURITY
# ============================================================

status: draft
layer: security
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for company builder systems.

# 2. SECURITY SCOPE

- builder-session authorization
- ownership-state integrity
- validation-state integrity
- company-builder audit protection

# 3. SECURITY RULES

- ownership changes require explicit authorization
- ownership ratio/source must remain attributable
- validation output must be tamper-evident
- unauthorized publication must be detectable

