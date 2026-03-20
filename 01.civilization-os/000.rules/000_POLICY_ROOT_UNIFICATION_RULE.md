# POLICY ROOT UNIFICATION RULE

status: canonical
layer: root-rule
owner: Boss
prepared_by: Zero
review_required: Sato_DB

## PURPOSE
Define the unified active policy root for Civilization OS.

## RULE
- The active policy root is 070.policy only.
- Domain-specific policy documents belong under 070.policy/010.domain.
- Cross-cutting governance policy documents belong under 070.policy/020.governance.
- No other active top-level policy root is allowed.

## EXAMPLES
Domain policy:
- world
- persona
- education
- career
- reward
- economy
- law
- security
- government
- war
- runtime
- meta

Governance policy:
- authority
- access
- data governance
- event
- audit
- runtime control
- failure
- evolution

## NOTE
Any former 040.policy content is treated as domain policy
and must be placed under 070.policy/010.domain.
