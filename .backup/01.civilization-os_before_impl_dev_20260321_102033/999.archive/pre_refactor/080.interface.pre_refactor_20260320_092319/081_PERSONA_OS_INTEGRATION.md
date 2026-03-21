# ============================================================
# PERSONA OS INTEGRATION
# ============================================================

status: canonical
version: 1.0
compatibility: STRICT
scope: civilization.interface.persona_os
component: persona-os-integration
document_id: CIV-INT-081
owner: Boss
prepared_by: Zero
last_updated: 2026-03-11


# ABSTRACT

Defines how CivilizationOS integrates with PersonaOS.


# INTEGRATION TARGETS

Persona state

Persona identity

Persona events

Persona assets

Persona rendering references


# INTEGRATION MODEL

CivilizationOS may consume persona-related
data only through explicit contracts.

CivilizationOS must not directly rewrite
PersonaOS internal state.


# COMMUNICATION RULES

PersonaOS publishes persona-facing outputs.

CivilizationOS consumes only approved
persona contracts and world-safe projections.


# DESIGN PRINCIPLE

PersonaOS owns persona identity.

CivilizationOS owns civilization-wide context.
