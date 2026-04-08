# ============================================================
# STORY PROGRESSION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for story progression.

# 2. POLICY RULES

- progression scope, steps, and checkpoints must be explicit
- active and frozen progression state must be explicit
- hidden progression mutation is prohibited
- implicit progression mutation while frozen is prohibited

# 3. FAILURE RULE

- missing progression scope must reject
- invalid step or checkpoint binding must reject
- hidden progression mutation must reject

