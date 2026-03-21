# ============================================================
# BUSINESS OS INTEGRATION
# ============================================================

status: canonical
version: 1.0
compatibility: STRICT
scope: civilization.interface.business_os
component: business-os-integration
document_id: CIV-INT-082
owner: Boss
prepared_by: Zero
last_updated: 2026-03-11


# ABSTRACT

Defines how CivilizationOS integrates with BusinessOS.


# INTEGRATION TARGETS

Business events

Approval interfaces

ERP gateway routing

Business application entry points


# INTEGRATION MODEL

BusinessOS remains an independent domain.

CivilizationOS may route or observe
approved business-facing contracts only.


# COMMUNICATION RULES

No direct mutation from CivilizationOS
into BusinessOS private state.

All requests must pass through
approved gateway contracts.


# DESIGN PRINCIPLE

BusinessOS owns enterprise workflow.

CivilizationOS owns civilization-level
orchestration boundaries.
