# ============================================================
# POCKET SECRETARY MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the core data model domains of PocketSecretary.

scope:
The model layer defines the logical data structures required
for PocketSecretary local-first operation, Persona presentation,
user workflows, bounded external request preparation,
and synchronization state handling.

model_principles:
- local-first modeling
- explicit ownership
- explicit state distinction
- bounded authority
- separation between local and external truth
- auditable transition readiness


# ============================================================
# 1. MODEL DOMAINS
# ============================================================

PocketSecretary model domains include:

- secretary profile model
- local schedule model
- todo model
- note model
- archive model
- dashboard widget model
- Persona state model
- configuration model
- permission model
- ERP request model
- sync model
- backup model
- local file storage model


# ============================================================
# 2. MODEL BOUNDARY
# ============================================================

The PocketSecretary model layer defines
application-level logical models.

It does not redefine:

- upstream Persona source-of-truth authority
- upstream ERP source-of-truth authority
- system-wide governance authority

PocketSecretary models may contain:

- local working state
- local cache state
- user draft state
- integration request preparation state
- confirmed external references where explicitly bounded


# ============================================================
# 3. STATE DISTINCTION RULE
# ============================================================

Every model that may interact with external systems
must distinguish among:

- local only
- pending
- confirmed
- failed
- conflicted

No model may collapse uncertain state
into confirmed state.
