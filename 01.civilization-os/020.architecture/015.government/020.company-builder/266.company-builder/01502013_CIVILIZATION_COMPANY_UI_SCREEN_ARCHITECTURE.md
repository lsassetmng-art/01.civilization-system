# ============================================================
# CIVILIZATION COMPANY UI SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official company UI screen architecture
inside CivilizationOS.

This architecture covers:
- builder-facing company screens
- post-creation management screens
- company listing screens
- company analytics screens
- evaluation and listing-readiness screens


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Company UI must distinguish:

- builder screens
- company management screens
- company listing/catalog screens
- company analytics screens
- company evaluation/listing-readiness screens

Core principle:

a company is created through builder screens
but operated and assessed through distinct company-management screens


# ============================================================
# 2. SCREEN FAMILY PRINCIPLE
# ============================================================

Minimum screen families:
- company builder screens
- company detail / management screens
- company site / opening screens
- company product / portfolio screens
- company analytics screens
- company evaluation / rating screens
- public or searchable company listing screens
- listing-readiness / IPO-readiness screens where applicable


# ============================================================
# 3. LIST VS DETAIL PRINCIPLE
# ============================================================

Company listing screens must remain distinct
from company detail screens.

List screens answer:
- what companies exist
- how they are categorized
- what high-level status they have

Detail screens answer:
- who the company is
- where it operates
- what it sells or does
- how it is performing


# ============================================================
# 4. ANALYTICS PRINCIPLE
# ============================================================

Analytics screens must distinguish:
- operational metrics
- sales metrics
- asset / site metrics
- growth / reputation metrics
- public evaluation metrics
- listing-readiness metrics where applicable

Analytics is not the same as public evaluation.


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

Company UI screen architecture in CivilizationOS must be:
- builder-aware
- management-aware
- list-aware
- analytics-aware
- evaluation-aware
