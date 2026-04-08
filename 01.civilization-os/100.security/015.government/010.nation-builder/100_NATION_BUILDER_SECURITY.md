# ============================================================
# NATION BUILDER
# SECURITY
# ============================================================

status: draft
layer: security
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for nation builder systems.

# 2. SECURITY SCOPE

- builder-session authorization
- policy-bundle integrity
- validation-state integrity
- nation-builder audit protection

# 3. SECURITY RULES

- builder session requires explicit authorization
- policy-bundle version and source must be attributable
- validation output must be tamper-evident
- unauthorized publication must be detectable

