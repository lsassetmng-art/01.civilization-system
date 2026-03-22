# ============================================================
# 034 COMPANY MODEL CONSTITUTION
# CivilizationOS Canonical Design
# ============================================================

status: canonical
layer: constitution
component: company-model

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official company model within CivilizationOS.

This includes:

- company structure
- ownership
- relation to nation
- revenue behavior
- AI employee model


# ============================================================
# CORE PRINCIPLES
# ============================================================

A company is:

- an economic entity
- revenue-generating
- user-owned
- part of a nation

Companies operate in the market layer,
not in the governance layer.


# ============================================================
# 1. COMPANY DEFINITION
# ============================================================

definition:

company

fields:

- company_id
- name
- owner_user_id
- nation_id
- created_at
- status


rules:

- every company belongs to one nation
- a user may own multiple companies
- company is the unit of economic activity


# ============================================================
# 2. OWNERSHIP
# ============================================================

Company ownership is human-controlled.

rules:

- CEO must be a user
- AI cannot be CEO
- ownership cannot be anonymous


# ============================================================
# 3. COMPANY TYPES
# ============================================================

types:

- user_company
- ai_company (system-owned)


rules:

- user_company is user-controlled
- ai_company is system-controlled
- both participate in ranking


# ============================================================
# 4. REVENUE MODEL
# ============================================================

Companies generate revenue through marketplace activity.

flow:

purchase (real money)
↓
revenue ledger
↓
company revenue


rules:

- revenue is recorded immediately
- payout is monthly
- no direct payout at purchase time


# ============================================================
# 5. RELATION TO NATION
# ============================================================

Each company contributes to a nation.

rules:

- revenue contributes to national score
- activity contributes to national score
- company does not transfer money to nation


# ============================================================
# 6. COMPANY TREASURY
# ============================================================

definition:

company_treasury

fields:

- company_id
- balance
- currency_type


rules:

- separate from national treasury
- may hold internal currency
- cannot directly hold settlement money


# ============================================================
# 7. AI EMPLOYEES
# ============================================================

Companies may employ AI agents.

definition:

ai_employee

fields:

- employee_id
- company_id
- role
- status


rules:

- paid by company
- operate for profit generation
- separate from government officials


# ============================================================
# 8. COMPANY OPERATIONS
# ============================================================

Companies may:

- create products
- sell assets
- hire AI
- participate in marketplace
- compete in ranking


# ============================================================
# 9. RANKING
# ============================================================

Company ranking is based on:

- revenue
- activity
- performance metrics


rules:

- affects national score
- affects visibility


# ============================================================
# 10. RESTRICTIONS
# ============================================================

The following are forbidden:

- AI acting as CEO
- using national treasury for company operations
- bypassing revenue ledger
- direct real-money handling by company


# ============================================================
# 11. SUMMARY
# ============================================================

Company is the core economic unit.

- generates revenue
- owned by users
- contributes to nation
- operates independently from government


# ============================================================
# END
# ============================================================

