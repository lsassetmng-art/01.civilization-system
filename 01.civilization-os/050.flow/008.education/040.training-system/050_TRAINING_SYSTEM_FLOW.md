# ============================================================
# TRAINING SYSTEM
# FLOW
# ============================================================

status: draft
layer: flow
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for training system handling.

# 2. TRIGGER

- training program creation/update
- module update
- participation request
- outcome publication

# 3. MAIN FLOW

1. create or resolve training_program
2. bind training_module set
3. create or update training_participation
4. evaluate participation outcome
5. persist training_outcome
6. emit audit trace

# 4. FAILURE FLOW

- missing training scope -> reject
- invalid module or participation binding -> reject
- hidden training-outcome mutation -> fail closed

# 5. OUTPUT

- training program state
- participation/outcome state
- audit record

