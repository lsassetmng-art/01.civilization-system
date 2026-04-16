# ============================================================
# POCKET SECRETARY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the policy layer of PocketSecretary.

scope:
The policy layer defines operational and design application policies
that govern how PocketSecretary applies its constitutional and
architectural rules in concrete domains.

policy_principles:
- local-first by policy
- explicit review for critical actions
- visible honesty of state
- separation of presentation and authority
- minimum necessary exposure
- bounded external dependence


# ============================================================
# 1. POLICY DOMAINS
# ============================================================

PocketSecretary policy domains include:

- local-first policy
- review-required action policy
- sync handling policy
- Persona presentation policy
- privacy exposure policy
- ERP request handling policy
- notification policy


# ============================================================
# 2. POLICY ROLE
# ============================================================

Policy defines how PocketSecretary should behave
when applying its design in day-to-day operation.

Policy must not:
- override constitution
- invent new authority
- weaken explicit review boundaries
