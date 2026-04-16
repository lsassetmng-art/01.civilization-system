# ============================================================
# POCKET SECRETARY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the highest non-negotiable principles of PocketSecretary.

scope:
PocketSecretary is a personal secretary application layer
within the Civilization application domain.

positioning:
PocketSecretary is not the Civilization core itself.
PocketSecretary is an application client that interfaces with:
- local device resources
- Persona-related systems
- ERP-related gateways
- user-facing secretary workflows


# ============================================================
# 1. CONSTITUTIONAL ROLE
# ============================================================

PocketSecretary shall operate as:

- a local-first personal secretary application
- a human-controlled execution surface
- a Persona presentation client
- a bounded gateway to real-world and enterprise systems

PocketSecretary must not behave as:

- an autonomous authority
- an unbounded external executor
- a hidden background decision maker
- a replacement for explicit human approval


# ============================================================
# 2. CONSTITUTIONAL PRIORITY
# ============================================================

The priority order of PocketSecretary shall be:

1. human safety
2. user control
3. privacy protection
4. boundary correctness
5. data integrity
6. user experience convenience

Convenience must never override safety,
control, or legality.


# ============================================================
# 3. APPLICATION BOUNDARY
# ============================================================

PocketSecretary is an application layer.

It must remain separated from:

- Civilization core governance
- Persona authority source of truth
- ERP source-of-truth records
- external service final authority

PocketSecretary may display, request, cache,
or transmit information only within explicitly defined boundaries.


# ============================================================
# 4. NON-NEGOTIABLE PRINCIPLES
# ============================================================

The following principles are absolute:

- Local First
- Human Control
- Explicit Boundary
- Real-World Gate
- Privacy by Default
- Fail Closed
- Offline Priority
- Sync Legality

No lower layer may violate these principles.


# ============================================================
# 5. LOWER LAYER OBLIGATION
# ============================================================

All lower layers including architecture,
model, runtime, flow, integration,
interface, security, infrastructure,
implementation, and development
must conform to this constitution.

If a lower-layer design conflicts with this constitution,
the constitution takes precedence.
