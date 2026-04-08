# ============================================================
# SYSTEM
# SECURITY
# ============================================================

status: draft
layer: security
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for system-level structure.

# 2. SECURITY SCOPE

- dependency mutation control
- boundary crossing authorization
- privileged node activation
- failure source trace protection

# 3. SECURITY RULES

- unauthorized cross-boundary mutation is prohibited
- privileged startup control must be explicit
- source attribution must be protected from spoofing
- hidden write path is prohibited

