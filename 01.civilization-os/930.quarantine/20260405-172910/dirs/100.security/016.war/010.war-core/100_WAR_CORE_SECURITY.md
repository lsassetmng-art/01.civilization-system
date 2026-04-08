# ============================================================
# WAR CORE
# SECURITY
# ============================================================

status: draft
layer: security
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for war core structures.

# 2. SECURITY SCOPE

- war-definition integrity
- party/rule authorization
- active/suspended state integrity
- war-core audit protection

# 3. SECURITY RULES

- war scope, party bindings, and scope rules must be tamper-evident
- party and rule changes require explicit authorization
- hidden war-core mutation must be detectable
- audit output must preserve war identity

