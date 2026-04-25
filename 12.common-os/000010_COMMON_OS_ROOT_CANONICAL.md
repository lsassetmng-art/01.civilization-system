# ============================================================
# COMMON OS ROOT CANONICAL
# ============================================================

status: canonical
system: CommonOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_151938

# ============================================================
# 0. PURPOSE
# ============================================================

This document fixes the official root positioning of 12.common-os.

12.common-os is the official shared foundation area for:
- shared HTML UI across all OSs, apps, and ERP
- shared component rules and implementation direction
- shared mutable metadata direction via app_common
- offline-first plus local queue plus online sync
- shared client/server boundary discipline

# ============================================================
# 1. OFFICIAL ROLE
# ============================================================

official_role:
- cross-OS shared UI foundation
- cross-OS shared component foundation
- cross-OS shared design token foundation
- cross-OS shared presentation metadata direction
- ERP shared UI applicability base
- shared offline/sync presentation base

official_non_role:
- not a replacement for each OS
- not a business transaction canon
- not a secrets storage domain
- not a pricing or entitlement decision engine
- not a domain logic dumping ground

# ============================================================
# 2. OFFICIAL DECISIONS
# ============================================================

official_decisions:
- All OSs and apps shall use one shared HTML UI foundation as the primary UI direction.
- PC, smartphone, and tablet shall not maintain separate primary UI canons.
- Shared component implementation shall belong to CommonOS.
- app_common is officially approved as a shared mutable metadata direction.
- app_common is not an OS and not a business transaction schema.
- ERP is an official applicability target.
- offline-first plus local queue plus online sync is the standard direction.
- Queue presentation may be shared.
- Queue business meaning remains domain-owned.
- Core business logic, pricing logic, access logic, AI control, and secrets remain server-side.

# ============================================================
# 3. SHARED SCOPE
# ============================================================

shared_scope:
- buttons
- inputs
- selection controls
- list/table/card patterns
- dialogs and feedback patterns
- app shell patterns
- layout primitives
- responsive rules
- accessibility rules
- offline badge / sync status / retry / conflict presentation
- design token systems
- shared locale/copy metadata direction
- shared screen template direction

# ============================================================
# 4. APP_COMMON POSITION
# ============================================================

app_common_position:
app_common is the shared mutable metadata storage direction supporting CommonOS.

allowed_examples:
- theme registry
- design token sets
- token values
- component catalogs
- component variants
- locale keys and translations
- screen templates
- sync policy metadata
- retry policy metadata
- queue visual rules
- accessibility presets
- attachment policy metadata
- client capability metadata

forbidden_examples:
- ERP voucher canon
- business transaction canon
- persona canon
- life personal canon
- secrets
- pricing decision logic
- access decision logic
- AI prompt canon
- actual app outbox business canon

# ============================================================
# 5. ERP APPLICABILITY
# ============================================================

erp_applicability:
ERP is a first-class applicability target for CommonOS.

erp_high_fit_surfaces:
- list screens
- detail screens
- dense data entry
- approval screens
- draft screens
- attachment surfaces
- search and filter
- sync and queue presentation
- dashboard surfaces

erp_rule:
ERP shares the UI.
ERP keeps the business brain.

# ============================================================
# 6. SYNC PRINCIPLE
# ============================================================

official_sync_principle:
- offline-first
- local queue
- online sync

minimum_sync_triggers:
- launch
- foreground resume
- online recovery
- manual sync

sync_boundary_rule:
presentation may be shared
domain send meaning remains domain-owned

# ============================================================
# 7. ROOT DOCUMENT REFERENCES
# ============================================================

root_references:
- 000000_COMMON_OS_INDEX.md
- 000001_COMMON_OS_OVERVIEW.md
- 020.architecture
- 030.model
- 060.integration
- 120.implementation

# ============================================================
# 8. FINAL STATEMENT
# ============================================================

final_statement:
12.common-os is officially positioned as the shared foundation area for all OSs, apps, and ERP surfaces.
It standardizes UI and shared mutable metadata direction while leaving business canon in each domain.
