# ============================================================
# STATIC ART REVIEW AND RELEASE OPERATIONS
# ============================================================

status: implementation-ready-operations
layer: operations
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Review Types

- metadata review
- rights review
- marketplace review
- subscription review
- restriction review

## 2. Review Outcomes

- approved
- rejected
- returned_for_rework
- restricted

## 3. Release Preconditions

An asset may be released only when:
- required files exist
- required metadata exists
- rights review is approved
- sales review is approved when for-sale
- subscription review is approved when subscription-included
- publish window allows release

## 4. Rollback and Delist

Rollback means:
- new exposure is stopped
- marketplace visibility is removed or paused
- library access recalculates only when policy requires it
- projection eligibility is refreshed
- audit records are preserved

## 5. Support Investigation Inputs

Operations staff must be able to inspect:
- entitlement state
- entitlement source
- lifecycle state
- rights policy
- regional policy
- age policy
- current projection eligibility reason
