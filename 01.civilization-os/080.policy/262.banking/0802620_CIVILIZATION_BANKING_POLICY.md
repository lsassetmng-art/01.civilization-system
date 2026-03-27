# ============================================================
# CIVILIZATION BANKING POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for banking services
inside CivilizationOS.


# ============================================================
# 1. CORE POLICY
# ============================================================

Banking services must be:
- internal to Civilization
- nation-governed
- DB-controlled
- institution-licensed
- fail-closed on unresolved rule chains


# ============================================================
# 2. CUSTOMER / PRODUCT POLICY
# ============================================================

Each nation may control:
- which institutions may exist
- which service families are active
- who may access each product
- what currencies are allowed
- what guarantees, cards, and investment products are lawful


# ============================================================
# 3. RISK / PROTECTION POLICY
# ============================================================

Each nation may control:
- freeze triggers
- review triggers
- deposit protection scope
- bank resolution methods
- fraud or AML-equivalent thresholds

Missing mandatory policy must fail closed.


# ============================================================
# 4. ERP NON-LINK POLICY
# ============================================================

The following must not depend on ERP:
- Civilization bank accounts
- Civilization payments and transfers
- Civilization lending
- Civilization enterprise finance
- Civilization deposit protection and bank resolution

ERP is out of scope.


# ============================================================
# 5. FINAL POLICY RULE
# ============================================================

Civilization banking policy must be:
- product-structured
- nation-controlled
- DB-controlled
- ERP-independent
