# ============================================================
# CIVILIZATION REQUEST PORTFOLIO GOVERNANCE RULE
# ============================================================

status: portfolio-governance-rule
layer: implementation
domain: 018.meta
subdomain: 760.request-portfolio-and-priority-pack
document_id: 1201851601
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how multiple request cases are governed as one portfolio.

## 2. Portfolio Objective

The request portfolio must preserve:

- canonical intake discipline
- visible queue state
- visible priority state
- no shortcut escalation by crowding or pressure
- separation between safe read-only work and governed semantic change

## 3. Canonical Portfolio Families

Canonical portfolio families are:

- read_only_confirmation_family
- nonsemantic_alignment_family
- recovery_family
- governed_semantic_change_family
- stopped_or_invalid_family

## 4. Portfolio Governance Rule

Every request case must belong to exactly one current portfolio family.

Portfolio grouping must follow:
- request class
- routed path
- current lifecycle state
not
- urgency language alone

## 5. Portfolio Control Rule

Portfolio governance must make it possible to see:

- which items are active
- which items are unresolved
- which items are deferred
- which items are closed
- which items require governed change path

## 6. Hard Rule

A crowded queue does not authorize shortcut routing or semantic downgrade.

## 7. Acceptance Checklist

- portfolio objective fixed
- canonical portfolio families fixed
- portfolio governance rule fixed
- portfolio control rule fixed
- no-crowding-shortcut rule fixed
