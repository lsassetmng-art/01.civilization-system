# ============================================================
# CIVILIZATION NATION BUILDER SCREEN FLOW
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the recommended screen flow
for nation builder inside CivilizationOS.


# ============================================================
# 1. PRIMARY SCREEN FLOW
# ============================================================

recommended screen flow:

1. nation draft list
2. nation draft create
3. basic identity screen
4. territory screen
5. population/currency screen
6. regime bundle screen
7. facility placement screen
8. infrastructure placement screen
9. validation screen
10. approval request screen
11. publication / activation screen


# ============================================================
# 2. FACILITY / INFRASTRUCTURE FLOW
# ============================================================

visual placement flow:

select region/district
-> open placement surface
-> choose facility/infrastructure from palette
-> select design package if applicable
-> place object
-> edit object details
-> validate placement effects


# ============================================================
# 3. REVIEW FLOW
# ============================================================

review flow:

open validation summary
-> inspect errors and warnings
-> jump to offending section
-> revise draft
-> revalidate
-> request approval


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Nation builder screen flow must remain:
- staged
- navigable
- validation-centered
- placement-capable
