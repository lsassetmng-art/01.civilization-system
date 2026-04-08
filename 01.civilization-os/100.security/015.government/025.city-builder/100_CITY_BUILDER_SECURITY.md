# ============================================================
# CITY BUILDER
# SECURITY
# ============================================================

status: draft
layer: security
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for city builder systems.

# 2. SECURITY SCOPE

- builder-session authorization
- zoning-bundle integrity
- validation-state integrity
- city-builder audit protection

# 3. SECURITY RULES

- zoning updates require explicit authorization
- nation/city identity must be tamper-evident
- validation output must be attributable
- unauthorized city publication must be detectable

