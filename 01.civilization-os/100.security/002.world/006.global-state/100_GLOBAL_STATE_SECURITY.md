# ============================================================
# GLOBAL STATE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for global-state snapshots.

# 2. SECURITY SCOPE

- indicator provenance
- alert publication authorization
- adjustment-flag integrity
- snapshot audit protection

# 3. SECURITY RULES

- indicator provenance spoofing is prohibited
- alert publication requires trusted evaluation source
- adjustment flags must preserve attributable origin
- snapshot audit must be tamper-evident

