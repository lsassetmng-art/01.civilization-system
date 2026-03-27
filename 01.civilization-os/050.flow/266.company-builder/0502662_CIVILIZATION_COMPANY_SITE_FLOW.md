# ============================================================
# CIVILIZATION COMPANY SITE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational flow of company site,
tenant occupancy, opening, and mediated real-estate transactions
inside CivilizationOS.


# ============================================================
# 1. SITE CREATION FLOW
# ============================================================

company created
-> company site created
-> property or tenant unit selected
-> occupancy basis established
-> site compatibility validated


# ============================================================
# 2. STORE OPENING FLOW
# ============================================================

company site exists
-> target zone checked
-> opening record created
-> opening becomes effective
-> nation notification sent


# ============================================================
# 3. PROPERTY TRANSACTION FLOW
# ============================================================

party wants to buy / lease / resell
-> system real-estate company listing or mediation path
-> transaction review
-> contract/transfer execution
-> ownership/occupancy update
-> company site update where applicable


# ============================================================
# 4. TENANT FLOW
# ============================================================

company selects tenant unit
-> occupancy basis established
-> tenant record created
-> site use activated
-> opening flow may follow


# ============================================================
# 5. FINAL FLOW RULE
# ============================================================

Company site flow must remain:
- site-aware
- occupancy-aware
- opening-aware
- nation-notification-aware
- system-mediation-aware
