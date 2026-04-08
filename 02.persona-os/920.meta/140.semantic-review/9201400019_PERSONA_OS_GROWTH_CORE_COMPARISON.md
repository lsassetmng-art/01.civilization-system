# ============================================================
# PERSONA OS GROWTH CORE COMPARISON
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Compares growth-domain core layers
to review semantic boundary quality.

# ============================================================
# 1. CONSTITUTION
# ============================================================

# ============================================================
# PERSONA GROWTH CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of persona growth.

summary:
Growth is a canonical truth domain inside PersonaOS.
External systems may request growth-related change,
but PersonaOS alone decides final growth truth mutation.

constitutional_principles:
growth truth belongs to PersonaOS
approved external request is not direct mutation authority
growth history must remain auditable

# ============================================================
# 2. ARCHITECTURE
# ============================================================

# ============================================================
# PERSONA GROWTH ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of persona growth.

summary:
Growth is a canonical PersonaOS truth domain.
External systems may request growth-related change,
but PersonaOS alone decides final growth truth mutation.

scope:
growth request intake
growth truth ownership
growth apply boundary
growth history boundary
growth result emission

boundary:
Builder does not directly mutate growth truth.
Host applications do not directly mutate growth truth.
Integration paths may deliver approved requests,
but do not seize truth authority.

# ============================================================
# 3. MODEL
# ============================================================

# ============================================================
# PERSONA GROWTH MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona growth models.

summary:
Growth models define the canonical record structure
for growth truth, growth scope, growth history,
and growth result linkage.

scope:
growth truth
growth scope
growth status
growth history linkage
applied event linkage

boundary:
Growth model is not builder draft state.
Growth model is not host runtime session state.
Growth truth belongs to PersonaOS.

# ============================================================
# PERSONA GROWTH MODEL
# ============================================================

status: canonical
layer: model
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_growth

purpose:
Defines the canonical growth truth record for a persona.

core_fields:
persona_growth_id
persona_id
growth_scope
growth_status
growth_value
growth_version
growth_reason_summary
source_state_version
last_applied_event_id
measured_at
created_at
updated_at

growth_scope_examples:
skill
temperament
relationship
experience
role-maturity
confidence

rules:
Growth truth belongs to PersonaOS.
External systems may request growth-related changes,
but PersonaOS alone decides final truth mutation.

# ============================================================
# 4. POLICY
# ============================================================

# ============================================================
# PERSONA GROWTH POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona growth policies.

summary:
Growth policy confirms PersonaOS as final truth authority
for growth mutation and defines constraints
for request intake and apply behavior.

scope:
request eligibility
apply authority
deduplication requirement
audit requirement

boundary:
External systems may request growth-related change,
but do not gain final truth authority.

# ============================================================
# 5. INTERFACE
# ============================================================

# ============================================================
# PERSONA GROWTH INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of persona growth interfaces.

summary:
Growth interfaces define explicit request,
response, and result event contracts
for growth-related mutation paths.

scope:
apply request
apply response
result event
audit-related interface output

boundary:
Interfaces do not transfer truth authority to callers.

# ============================================================
# 6. REVIEW QUESTIONS
# ============================================================

1. Is growth clearly separated from state transition?
2. Is growth clearly separated from memory truth and experience derivation?
3. Is growth clearly separated from integration-side request intake?
4. Is long-term change authority clearly owned by PersonaOS?
5. Do policy and interface keep growth mutation explicit and bounded?
