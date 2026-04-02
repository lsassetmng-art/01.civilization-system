# ============================================================
# SECURITIES INTERMEDIARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: company-builder
component: securities-intermediary

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official intermediary architecture
for company equity-related asset operation.

The purpose of this architecture is to enforce
an indirect market access model.

Companies may express equity-related intent,
but execution and formal processing must be performed
through securities_firm.


# ============================================================
# 2. CORE RULE
# ============================================================

The following rule is mandatory.

Companies must not directly execute:

- market equity trades
- TOB tender processing
- block trade execution
- offering or allotment settlement

All such operations must route through securities_firm.


# ============================================================
# 3. INTERMEDIARY POSITION
# ============================================================

securities_firm is a system-limited company type.

It acts as the formal intermediary between:

- company asset-operation intent
and
- nation securities / market infrastructure

This architecture separates:

- company decision
- intermediary execution
- market or tender settlement
- holding update


# ============================================================
# 4. OFFICIAL FLOW TYPES
# ============================================================

The intermediary must support at least
the following flow families.

## 4-1. standard market execution
Flow:
- company creates order intent
- securities_firm reviews and accepts
- market-side execution occurs
- company holding is updated

## 4-2. TOB tender flow
Flow:
- company creates tob tender intent
- securities_firm verifies tender path
- transfer or account handling occurs if needed
- tender is submitted
- settlement result is recorded

## 4-3. block trade flow
Flow:
- company creates block trade intent
- securities_firm arranges execution path
- trade is settled
- holding is updated

## 4-4. offering / allotment flow
Flow:
- company creates subscription intent
- securities_firm processes the application
- allocation result is recorded
- holding is updated

## 4-5. corporate action reflection
Flow:
- external action occurs
- securities_firm or system records action result
- company holding is updated
- cash or stock settlement is reflected


# ============================================================
# 5. INTERMEDIARY RESPONSIBILITIES
# ============================================================

The securities intermediary must handle:

- account linkage
- execution acceptance
- market route selection where applicable
- tender procedure handling
- settlement reflection
- holding update trigger
- dividend routing support
- corporate action reflection support

The intermediary is not the company owner.
It is the required execution bridge.


# ============================================================
# 6. ACCESS CONTROL RULE
# ============================================================

Company access must be limited to:

- intent creation
- intent cancellation where allowed
- holdings visibility
- dividend visibility
- corporate action visibility

Company access must not include:

- direct exchange execution
- direct tender settlement
- direct block trade matching
- direct allotment settlement

This keeps the model institutionally mediated.


# ============================================================
# 7. NATION REGIME CONNECTION
# ============================================================

The intermediary must obey nation-side rules including:

- securities_regime
- listing_system_style
- market_tier rules
- company_type eligibility
- restricted or state-guided review posture

Intermediary execution does not override nation rules.


# ============================================================
# 8. COMPANY BUILDER CONNECTION
# ============================================================

Company Builder should not create direct market access.

Instead, it should create:

- securities account profile linkage
- asset operation policy
- permitted intent capability
- visibility into holdings and income

This means Company Builder configures participation posture,
not direct exchange membership.


# ============================================================
# 9. VALIDATION CONNECTION
# ============================================================

Company validation should include intermediary checks.

Examples:
- direct equity execution not allowed
- securities firm binding missing
- unsupported intent type for current account profile
- company type not eligible for intended flow
- nation regime prohibits requested market participation


# ============================================================
# 10. OFFICIAL PRINCIPLE SUMMARY
# ============================================================

The official principle is:

company expresses intent
-> securities_firm mediates
-> market / tender / offering / action settles
-> company receives updated holding state

This principle applies to normal market trading,
TOB-related activity,
large-block execution,
and offering participation.


# ============================================================
# 11. FINAL RULE
# ============================================================

In Civilization company finance design,
equity-related execution is always intermediary-based.

No company may directly touch the exchange layer
or bypass securities_firm routing.
