# ============================================================
# CAREER PATH
# FLOW
# ============================================================

status: draft
layer: flow
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for career path handling.

# 2. TRIGGER

- career path creation/update
- path step update
- requirement update

# 3. MAIN FLOW

1. create or resolve career_path_definition
2. bind career_step set
3. bind path_requirement set
4. validate deterministic step order and scope
5. persist career_path_status
6. emit audit trace

# 4. FAILURE FLOW

- missing path scope -> reject
- invalid step or requirement binding -> reject
- hidden path mutation -> fail closed

# 5. OUTPUT

- career path state
- step/requirement state
- audit record

