# ============================================================
# STATE MACHINE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for state transitions.

# 2. SECURITY SCOPE

- transition trigger authorization
- transition record integrity
- terminal-state protection
- rejection evidence protection

# 3. SECURITY RULES

- trigger authority must be explicit
- transition records must be protected from tampering
- privileged terminal exceptions require explicit authorization
- rejected transition evidence must be preserved

