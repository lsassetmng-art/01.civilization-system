# ============================================================
# STATE MACHINE
# MODEL
# ============================================================

status: draft
layer: model
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for state transition control.

# 2. CORE ENTITIES

- state_machine
- state_node
- transition_edge
- transition_record

# 3. STATE MODEL

state_machine:
- machine_code
- machine_scope
- current_state_code
- machine_version

state_node:
- state_code
- machine_code
- terminal_flag
- visible_flag

transition_edge:
- edge_id
- machine_code
- from_state_code
- to_state_code
- trigger_code
- allowed_flag

transition_record:
- transition_id
- machine_code
- from_state_code
- to_state_code
- executed_at
- result_code

# 4. INTEGRITY RULES

- current state must belong to machine
- transition edge must be declared before use
- terminal state cannot transition without explicit exception
- transition record must preserve from and to state

