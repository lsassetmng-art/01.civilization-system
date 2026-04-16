# ============================================================
# SHARED ERP PUBLICATION ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
application: NameCardManager
architecture_scope: shared_erp_publication
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture boundary where NameCardManager uses
shared BusinessOS ERP publication capability rather than
direct application-local ERP transmission.

# ============================================================
# 1. ARCHITECTURE GOAL
# ============================================================

NameCardManager must not own full ERP transmission logic.
It should issue publication requests and rely on shared
BusinessOS capability for ERP publication execution.

# ============================================================
# 2. APPLICATION RESPONSIBILITY
# ============================================================

NameCardManager is responsible for:
- selecting target name cards
- presenting ERP-wide share action
- collecting publication-relevant context
- calling shared publication capability
- showing publication result state

# ============================================================
# 3. SHARED BUSINESSOS RESPONSIBILITY
# ============================================================

Shared BusinessOS ERP publication capability is responsible for:
- eligibility check
- company context attachment
- approval boundary handling
- payload transformation
- ERP transmission execution
- transmission result capture
- audit trail capture

# ============================================================
# 4. ERP BOUNDARY
# ============================================================

ERP publication is not direct application-local integration.
It is a shared BusinessOS-controlled publication path.

