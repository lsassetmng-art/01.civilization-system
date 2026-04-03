# ============================================================
# COMPANY LIFECYCLE MODEL
# ============================================================

status: canonical
layer: model
scope: company-builder
component: company-lifecycle

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official lifecycle model
for companies inside Civilization.

It governs the structural states from draft creation
through operation, dormancy, liquidation, and dissolution.


# ============================================================
# 2. OFFICIAL STATES
# ============================================================

Official company lifecycle states:

- draft
- validation_pending
- validation_passed
- approval_pending
- established
- operating
- dormant
- liquidation
- dissolved
- blocked


# ============================================================
# 3. STATE MEANINGS
# ============================================================

draft:
- incomplete builder state

validation_pending:
- validation requested or expected

validation_passed:
- blocking validation cleared

approval_pending:
- additional review pending where required

established:
- company legally established in-system

operating:
- actively conducting economic or institutional activity

dormant:
- inactive but still existing

liquidation:
- wind-down and settlement phase

dissolved:
- company no longer exists as an active legal entity

blocked:
- cannot proceed because of structural blocking issue


# ============================================================
# 4. OPERATING ENTRY RULE
# ============================================================

A company reaches operating state when:
- it is established
- at least one required site is opened or opening-valid
- no blocking validation remains


# ============================================================
# 5. DORMANCY RULE
# ============================================================

Dormancy is allowed.

Dormant company effects:
- no new site expansion
- no new public product rollout
- no new listing progression
- existing payment obligations remain valid
- assets and sites may still require maintenance or payment


# ============================================================
# 6. REACTIVATION RULE
# ============================================================

Reactivation from dormant is allowed if:
- blocking defaults are resolved
- required sites remain valid or are restored
- nation binding remains valid
- no structural prohibition remains


# ============================================================
# 7. LIQUIDATION RULE
# ============================================================

Liquidation is the structured shutdown phase.

During liquidation:
- assets may be disposed
- sites may be closed
- holdings may be unwound
- debts and obligations must be settled
- public operations may be restricted


# ============================================================
# 8. DISSOLUTION RULE
# ============================================================

Dissolution is final.

A dissolved company:
- is not operating
- may not reopen directly
- must use a new company creation flow if recreated later


# ============================================================
# 9. BLOCKED RULE
# ============================================================

blocked is used when:
- critical validation unresolved
- nation incompatibility exists
- required site invalid
- payment or compliance state prohibits transition
- system-limited rule is violated


# ============================================================
# 10. FINAL RULE
# ============================================================

Company lifecycle must be explicit and state-driven.

No company should silently move
between structural lifecycle stages.
