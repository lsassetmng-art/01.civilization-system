# ============================================================
# CADENCE AND TICK
# SECURITY
# ============================================================

status: draft
layer: security
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for cadence and tick runtime.

# 2. SECURITY SCOPE

- speed family authorization
- cadence override protection
- catchup privilege protection
- runtime timing audit protection

# 3. SECURITY RULES

- speed override requires explicit authorization
- cadence override provenance must be preserved
- privileged catchup mode must be protected
- timing audit records must be tamper-evident

