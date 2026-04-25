# ============================================================
# CIVILIZATION REQUEST DEPENDENCY RULE
# ============================================================

status: dependency-rule
layer: implementation
domain: 018.meta
subdomain: 770.request-dependency-and-overlap-pack
document_id: 1201851701
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical rule for request-to-request dependency handling.

## 2. Dependency Objective

Dependency handling must preserve:

- explicit relation between cases
- no hidden prerequisite assumptions
- no accidental activation of blocked semantic work
- visible separation between independent, dependent, and conflicting requests

## 3. Canonical Dependency Types

Canonical dependency types are:

- independent
- blocked_by
- prerequisite_for
- duplicate_of
- near_duplicate_of
- overlaps_with
- conflicts_with
- superseded_by

## 4. Dependency Rule

Every request-to-request relation should be classified into exactly one
primary dependency type for current control purposes.

## 5. Dependency Visibility Rule

If a request is not independent, the related case reference must be explicit.

## 6. Hard Rule

Unstated dependency does not count as independence.

## 7. Acceptance Checklist

- dependency objective fixed
- canonical dependency types fixed
- dependency rule fixed
- dependency visibility rule fixed
- no-unstated-independence rule fixed
