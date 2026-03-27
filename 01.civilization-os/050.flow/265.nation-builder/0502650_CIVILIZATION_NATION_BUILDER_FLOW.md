# ============================================================
# CIVILIZATION NATION BUILDER FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational flow of nation builder
inside CivilizationOS.


# ============================================================
# 1. PRIMARY FLOW
# ============================================================

nation draft creation
-> identity setup
-> territory setup
-> population/currency setup
-> rule bundle setup
-> validation
-> approval
-> publication
-> activation


# ============================================================
# 2. REVISION FLOW
# ============================================================

existing nation revision draft
-> change proposal
-> validation
-> approval where required
-> publish revision
-> activate revised state


# ============================================================
# 3. FINAL FLOW RULE
# ============================================================

Nation builder flow must remain:
- staged
- validation-aware
- approval-aware
- publication-aware
- activation-aware
