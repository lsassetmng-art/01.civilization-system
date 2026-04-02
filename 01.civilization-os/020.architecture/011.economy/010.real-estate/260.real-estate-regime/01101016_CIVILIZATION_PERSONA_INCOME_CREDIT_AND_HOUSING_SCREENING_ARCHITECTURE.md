# ============================================================
# CIVILIZATION PERSONA INCOME CREDIT AND HOUSING SCREENING ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official architecture for:
- persona income profiling
- persona credit profiling
- rental guarantee and rental screening
- housing loan screening

inside CivilizationOS.

All screening behavior must be nation-governed and DB-controlled.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Housing screening must be based on:
- income profile
- expense profile
- asset/liability profile
- payment history
- guarantee strength
- property/rent/loan burden
- nation-specific screening rules

The system must store source facts,
compute current screening profiles,
and preserve screening snapshots for decisions.


# ============================================================
# 2. SCREENING DOMAINS
# ============================================================

Minimum domains:
- persona_income
- persona_expense
- persona_assets
- persona_liabilities
- persona_credit
- rental_guarantee
- rental_screening
- mortgage_screening

These are common structures.
Thresholds and requirements are DB-controlled by nation.


# ============================================================
# 3. FINAL ARCHITECTURAL RULE
# ============================================================

Persona housing screening in CivilizationOS must be:
- fact-based
- snapshot-preserving
- nation-governed
- DB-controlled
- distinct for rent vs mortgage
