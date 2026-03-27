# ============================================================
# CIVILIZATION SECURITIES UNDERWRITING CUSTODY MARGIN ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define underwriting, custody, corporate action,
margin, securities lending, and restriction architecture
inside CivilizationOS.


# ============================================================
# 1. UNDERWRITING PRINCIPLE
# ============================================================

Offering support must distinguish:
- issuer
- issue program
- underwriter / placement agent
- subscription process
- allocation process
- post-offering settlement

Public offering and private placement legality
must be nation-governed and DB-controlled.


# ============================================================
# 2. CUSTODY PRINCIPLE
# ============================================================

Custody must distinguish:
- beneficial owner
- account holder
- nominee holder where lawful
- pledged or encumbered position
- frozen position
- corporate action eligibility

Custody and brokerage are related but distinct.


# ============================================================
# 3. MARGIN / SECURITIES FINANCE PRINCIPLE
# ============================================================

Margin and securities finance must distinguish:
- margin loan
- initial margin
- maintenance margin
- variation/margin call where relevant
- securities borrow
- securities lend
- short sale authorization where lawful
- forced liquidation

All such behavior is nation-governed and DB-controlled.


# ============================================================
# 4. RESTRICTION PRINCIPLE
# ============================================================

The system must support:
- instrument suspension
- account restriction
- freeze
- insider/conflict restriction where modeled
- offering blacklist/whitelist
- short-sale restriction where lawful

Restriction behavior must be explicit.


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

Underwriting, custody, and margin architecture must be:
- explicit
- role-distinct
- restriction-aware
- DB-controlled
