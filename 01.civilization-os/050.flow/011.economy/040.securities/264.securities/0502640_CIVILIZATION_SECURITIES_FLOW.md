# ============================================================
# CIVILIZATION SECURITIES FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official securities service flow set
inside CivilizationOS.


# ============================================================
# 1. ACCOUNT / CUSTODY FLOW
# ============================================================

customer eligibility
-> brokerage account opening
-> custody account linkage
-> settlement cash account linkage
-> account activation


# ============================================================
# 2. TRADING FLOW
# ============================================================

order placement
-> validation
-> execution
-> clearing obligation creation
-> settlement
-> position and cash update


# ============================================================
# 3. OFFERING / UNDERWRITING FLOW
# ============================================================

issue program setup
-> underwriting / placement setup
-> subscription
-> allocation
-> settlement
-> position creation


# ============================================================
# 4. ADVISORY / MANAGED FLOW
# ============================================================

client onboarding
-> mandate setup
-> suitability or risk profile check
-> advice or managed action
-> mandate lifecycle update


# ============================================================
# 5. MARGIN / RESTRICTION FLOW
# ============================================================

margin-enabled trade
-> margin requirement check
-> margin loan / financed position
-> margin call if needed
-> forced liquidation where lawful

restriction trigger
-> restriction record
-> block or suspend actions
-> release or enforcement


# ============================================================
# 6. FINAL FLOW RULE
# ============================================================

Civilization securities flows must remain:
- staged
- account-aware
- custody-aware
- settlement-aware
- restriction-aware
- nation-governed
