# ============================================================
# CAREER PROGRESSION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for career progression structures.

# 2. SECURITY SCOPE

- progression-record integrity
- event/state authorization
- result integrity
- progression audit protection

# 3. SECURITY RULES

- subject scope, progression scope, and state transition must be tamper-evident
- event and state changes require explicit authorization
- hidden progression mutation must be detectable
- audit output must preserve progression-record identity

