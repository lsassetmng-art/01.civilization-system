# ============================================================
# WAR IMPACT CALCULATION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for war impact calculation.

# 2. SECURITY SCOPE

- war-state provenance
- impact publication authorization
- recovery-state integrity
- conflict audit protection

# 3. SECURITY RULES

- active war source must be attributable
- impact publication must preserve target scope identity
- recovery state must be tamper-evident
- ambiguous conflict scope must reject

