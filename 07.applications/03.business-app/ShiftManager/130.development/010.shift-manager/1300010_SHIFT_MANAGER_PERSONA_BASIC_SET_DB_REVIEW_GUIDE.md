# ============================================================
# SHIFT MANAGER PERSONA BASIC SET DB REVIEW GUIDE
# ============================================================
status: development-extension
type: persona-basic-set-db-review-guide
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide fixes how developers should review
ShiftManager DB design
against a Persona-side dump that contains only the basic set.

# ============================================================
# 2. REVIEW GOAL
# ============================================================

review_goal:
- confirm reusable foundation axes
- confirm naming consistency
- confirm additive placement direction
- avoid false assumptions about already-existing ShiftManager tables

# ============================================================
# 3. REVIEW ORDER
# ============================================================

review_order:
1. confirm company axis
2. confirm person axis
3. confirm site/store axis
4. confirm department/team/office naming if present
5. compare ShiftManager added tables against those axes
6. mark unresolved FK details as later exactification items

# ============================================================
# 4. REVIEW RULES
# ============================================================

review_rules:
- do not force live-FK certainty from incomplete dump scope
- prefer additive app-owned tables over foundation mutation
- preserve app schema separation
- preserve stable app naming once foundation axes are known

# ============================================================
# 5. CONCLUSION
# ============================================================

Persona basic-set review is a fit/alignment review,
not proof of already-implemented ShiftManager schema.

