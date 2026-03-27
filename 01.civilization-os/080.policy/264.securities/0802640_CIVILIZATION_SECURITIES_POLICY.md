# ============================================================
# CIVILIZATION SECURITIES POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for securities services inside CivilizationOS.


# ============================================================
# 1. CORE POLICY
# ============================================================

Securities services must be:
- internal to Civilization
- institution-licensed
- instrument-aware
- custody-aware
- settlement-aware
- nation-governed
- DB-controlled
- fail-closed on unresolved rule chains


# ============================================================
# 2. SERVICE / INSTRUMENT POLICY
# ============================================================

Each nation may control:
- which service families exist
- which institution types may operate
- which instruments are lawful
- which customer types may access which instruments
- whether margin, short sale, managed accounts, or underwriting are allowed


# ============================================================
# 3. RESTRICTION / ENFORCEMENT POLICY
# ============================================================

Each nation may control:
- account restrictions
- instrument suspension
- short sale restrictions
- margin call / forced liquidation rules
- offering restrictions
- custody freeze behavior

Missing mandatory policy must fail closed.


# ============================================================
# 4. ERP NON-LINK POLICY
# ============================================================

The following must not depend on ERP:
- securities accounts
- brokerage orders
- underwriting
- custody
- clearing and settlement
- margin and securities lending
- securities restrictions and suspensions

ERP is out of scope.


# ============================================================
# 5. FINAL POLICY RULE
# ============================================================

Civilization securities policy must be:
- product-structured
- nation-controlled
- DB-controlled
- ERP-independent
