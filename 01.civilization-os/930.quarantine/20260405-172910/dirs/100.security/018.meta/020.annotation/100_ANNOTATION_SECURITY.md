# ============================================================
# ANNOTATION
# SECURITY
# ============================================================

status: draft
layer: security
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines security controls for annotation structures.

# 2. SECURITY SCOPE

- annotation integrity
- target/rule authorization
- active/revised state integrity
- annotation audit protection

# 3. SECURITY RULES

- annotation scope, target references, and rules must be tamper-evident
- target and rule changes require explicit authorization
- hidden annotation mutation must be detectable
- audit output must preserve annotation identity

