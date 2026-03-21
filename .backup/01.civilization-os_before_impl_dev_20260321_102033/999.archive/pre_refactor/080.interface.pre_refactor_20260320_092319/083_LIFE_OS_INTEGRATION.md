# ============================================================
# LIFE OS INTEGRATION
# ============================================================

status: canonical
version: 1.0
compatibility: STRICT
scope: civilization.interface.life_os
component: life-os-integration
document_id: CIV-INT-083
owner: Boss
prepared_by: Zero
last_updated: 2026-03-11


# ABSTRACT

Defines how CivilizationOS integrates with LifeOS.


# INTEGRATION TARGETS

Health events

Habit records

Meal planning outputs

Life metric summaries


# INTEGRATION MODEL

LifeOS remains the owner of life-related data.

CivilizationOS may consume approved summaries
or events that are safe for civilization context.


# COMMUNICATION RULES

Raw private life data must not be exposed
without an explicit contract.

Cross-OS transfer must be minimized.


# DESIGN PRINCIPLE

LifeOS owns personal life logic.

CivilizationOS may only consume
bounded life-facing signals.
