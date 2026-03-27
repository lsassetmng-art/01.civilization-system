# ============================================================
# CIVILIZATION SECURITIES SERVICES ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official securities services architecture
inside CivilizationOS.

This architecture covers:
- securities institution and license
- brokerage accounts
- custody and safekeeping
- order routing and execution
- settlement and clearing
- underwriting and offering
- advisory and managed services
- margin and secured trading
- short selling where lawful
- suspension, restriction, and enforcement

This architecture explicitly assumes:
- securities services are internal to Civilization
- all behavior is nation-governed and DB-controlled
- ERP is not part of Civilization securities services


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Securities services must be modeled as common structures
with nation-specific DB-controlled behavior.

The system must define:
- institution/service classes
- account and custody classes
- market-facing execution classes
- issuance/offering classes
- settlement and clearing classes
- restriction and enforcement classes

Core principle:

service structure is common
legality, thresholds, instruments, and permissions are nation-specific


# ============================================================
# 2. SERVICE DOMAINS
# ============================================================

Minimum securities service domains:
- securities_company and license
- brokerage account
- custody account
- order and execution
- clearing and settlement
- public offering / private placement
- underwriting / placement support
- investment advisory
- discretionary or managed investment service where lawful
- margin / leveraged trading where lawful
- securities lending / borrowing where lawful
- corporate actions servicing
- suspension / freeze / compliance review


# ============================================================
# 3. CUSTOMER DOMAINS
# ============================================================

Securities services may serve:
- persona / individual
- civilization company
- investment vehicle where lawful
- nation / public body where lawful
- trust / association where lawful

Eligibility is nation-governed and DB-controlled.


# ============================================================
# 4. INSTRUMENT DOMAINS
# ============================================================

Minimum instrument domains:
- equity
- bond
- fund_unit
- rights_issue
- depository_receipt where lawful
- exchange_traded_product where lawful
- structured_product where lawful
- private_security where lawful

The existence and legality of each instrument class
must be nation-governed and DB-controlled.


# ============================================================
# 5. ERP NON-RELATION RULE
# ============================================================

Civilization securities services are internal to Civilization.

No ERP dependency exists for:
- securities accounts
- brokerage execution
- underwriting
- custody
- settlement
- margin calls
- investment advisory

ERP is out of scope.


# ============================================================
# 6. FINAL ARCHITECTURAL RULE
# ============================================================

Civilization securities services must be:
- internal to Civilization
- institution-aware
- instrument-aware
- custody-aware
- settlement-aware
- DB-controlled
- fail-closed on unresolved rule chains
