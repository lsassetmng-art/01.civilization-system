# ============================================================
# INTERNSHIP
# FLOW
# ============================================================

status: draft
layer: flow
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for internship handling.

# 2. TRIGGER

- internship program creation/update
- slot update
- participation request
- outcome publication

# 3. MAIN FLOW

1. create or resolve internship_program
2. bind internship_slot set
3. create or update internship_participation
4. validate host and participant scope
5. persist internship_outcome
6. emit audit trace

# 4. FAILURE FLOW

- missing host or participant scope -> reject
- invalid slot or participation binding -> reject
- hidden internship-outcome mutation -> fail closed

# 5. OUTPUT

- internship state
- slot/participation/outcome state
- audit record

