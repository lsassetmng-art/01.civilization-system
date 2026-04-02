# ============================================================
# 033 NATION FINANCE CONSTITUTION
# CivilizationOS Canonical Design
# ============================================================

status: canonical
layer: constitution
component: nation-finance

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official national finance model of CivilizationOS.

This includes:

- national treasury
- national currency usage
- budget allocation
- score linkage
- separation from market currency


# ============================================================
# CORE PRINCIPLES
# ============================================================

Nation finance is not market finance.

Nation finance must be:

- policy-oriented
- non-convertible
- auditable
- independent from creator payout


# ============================================================
# 1. NATIONAL TREASURY
# ============================================================

Each nation has its own treasury.

definition:

nation_treasury

fields:

- nation_id
- national_currency_code
- treasury_balance
- updated_at


rules:

- treasury holds only national currency
- treasury must not hold payout money
- treasury is used for governance and policy


# ============================================================
# 2. NATIONAL CURRENCY
# ============================================================

Each nation may have its own non-convertible currency.

definition:

national_currency

fields:

- nation_id
- currency_code
- currency_name
- issuance_policy
- status


rules:

- national currency is local to the nation
- national currency is not convertible to real money
- national currency is not convertible to CIV_CASH


# ============================================================
# 3. TREASURY SOURCES
# ============================================================

National treasury may increase through:

- corporate tax
- system grants
- policy rewards
- nation events
- internal redistribution


rules:

- user purchases do not directly become treasury currency
- creator revenue is separate from treasury balance


# ============================================================
# 4. TREASURY USES
# ============================================================

Treasury may be used for:

- subsidies
- public projects
- nation events
- internal incentives
- AI labor support
- ranking rewards


examples:

- subsidy for startup companies
- event prize distribution
- public infrastructure spending
- national growth promotion


# ============================================================
# 5. BUDGET MODEL
# ============================================================

Nation budget is allocated by policy.

definition:

nation_budget

fields:

- nation_id
- fiscal_period
- total_budget
- allocated_budget
- reserve_budget


recommended categories:

- public investment
- incentive fund
- AI development
- infrastructure
- emergency reserve


# ============================================================
# 6. NATIONAL SCORE RELATION
# ============================================================

Nation score is influenced by company activity.

rules:

- company revenue contributes to national score
- company activity contributes to national score
- national score does not directly create real money


examples:

- sales activity
- production volume
- user participation
- marketplace performance


# ============================================================
# 7. REVENUE SEPARATION
# ============================================================

Strict separation must be maintained between:

- company revenue
- creator settlement
- national treasury


rules:

- revenue ledger belongs to company accounting
- settlement belongs to payout system
- treasury belongs to national finance


# ============================================================
# 8. SYSTEM GRANTS
# ============================================================

The system may provide national grants.

definition:

nation_grant

fields:

- grant_id
- nation_id
- amount
- reason
- created_at


examples:

- startup support
- infrastructure support
- balancing support
- event support


# ============================================================
# 9. AUDITABILITY
# ============================================================

All treasury operations must be auditable.

Every treasury event must include:

- event_id
- nation_id
- event_type
- amount
- reason
- timestamp


# ============================================================
# 10. PROHIBITIONS
# ============================================================

The following are forbidden:

- converting national currency into real money
- converting national currency into CIV_CASH
- using treasury for creator payout
- merging treasury and revenue ledger


# ============================================================
# 11. SUMMARY
# ============================================================

Nation finance is a policy and governance layer.

It is separated from:

- market settlement
- creator payout
- real money revenue

Nation treasury exists to operate the nation,
not to function as a payout wallet.


# ============================================================
# END
# ============================================================


# ============================================================
# 12. GOVERNMENT OFFICIALS (AI CIVIL SERVANTS)
# ============================================================

definition:

Government officials are AI agents assigned to a nation.

They are appointed by authorized users.


# ------------------------------------------------------------
# 12.1 APPOINTMENT
# ------------------------------------------------------------

- appointed by nation owner or authorized user
- multiple officials allowed
- role-based assignment


# ------------------------------------------------------------
# 12.2 ROLES
# ------------------------------------------------------------

examples:

- tax officer
- audit officer
- treasury manager
- event manager
- policy executor


# ------------------------------------------------------------
# 12.3 COMPENSATION
# ------------------------------------------------------------

- paid from national treasury
- paid in national currency only
- non-convertible


# ------------------------------------------------------------
# 12.4 RESTRICTIONS
# ------------------------------------------------------------

The following are forbidden:

- engaging in commercial activity
- working for companies
- converting compensation into real currency


# ------------------------------------------------------------
# 12.5 PURPOSE
# ------------------------------------------------------------

Government officials execute national policy.

They do not generate profit.

They ensure system governance and stability.


# ============================================================
# END OF EXTENSION
# ============================================================

