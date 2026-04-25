# ============================================================
# CIVILIZATION REQUEST OVERLAP AND CONFLICT MATRIX
# ============================================================

status: overlap-conflict-matrix
layer: implementation
domain: 018.meta
subdomain: 770.request-dependency-and-overlap-pack
document_id: 1201851703
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how overlapping and conflicting request cases are classified.

## 2. Matrix

matrix_case_01:
- relation: overlaps_with
- meaning: requests share some scope but can coexist with explicit boundary control

matrix_case_02:
- relation: conflicts_with
- meaning: requests cannot both proceed as currently framed without contradiction

matrix_case_03:
- relation: blocked_by
- meaning: one request must wait for another request or recovery path

matrix_case_04:
- relation: superseded_by
- meaning: an earlier request is replaced by a later canonical request

## 3. Matrix Rule

Overlap does not automatically mean conflict.
Conflict does not automatically mean supersession.

## 4. Conflict Handling Rule

When conflict is detected, do not progress both requests as active
until the conflict relation is explicitly handled.

## 5. Hard Rule

Do not hide conflict by labeling both requests as independent.

## 6. Acceptance Checklist

- overlap and conflict matrix fixed
- matrix rule fixed
- conflict handling rule fixed
- no-hidden-conflict rule fixed
