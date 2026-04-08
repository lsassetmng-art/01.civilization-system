# ============================================================
# AUTO PROGRESSION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for automatic progression.

# 2. SECURITY SCOPE

- progression start/stop authorization
- protected catchup controls
- checkpoint integrity
- abnormal stop audit protection

# 3. SECURITY RULES

- only authorized actors may start or stop progression
- catchup control is privileged
- checkpoint tampering must be detectable
- stop reason must be audit-protected

