# ============================================================
# COMMON OS OVERVIEW
# ============================================================

status: active
system: CommonOS
owner: Boss
prepared_by: Zero
generated_at: 20260421_151938

## PURPOSE
CommonOS is the shared foundation area used across all OSs, apps, and ERP surfaces.

## OFFICIAL POSITION
- CommonOS is a cross-OS shared foundation.
- CommonOS is not a replacement for each domain's business canon.
- app_common is the shared mutable metadata schema direction for CommonOS.
- UI is shared.
- business canon remains domain-owned.
- ERP is included as an official applicability target.
- offline-first plus local queue plus online sync is the standard synchronization direction.

## SHARED FOUNDATION SCOPE
- design tokens
- component standards
- shared screen and shell patterns
- shared sync and queue presentation
- shared accessibility and capability metadata direction
- shared locale/copy metadata direction

## NON-GOALS
- business transaction canon
- ERP accounting canon
- persona mutable canon
- life personal canon
- secrets storage
- pricing decision core
- entitlement decision core
- AI prompt canon

## REFERENCE DOCUMENT GROUP
- architecture canon under 020.architecture
- schema/model canon under 030.model
- integration/ledger canon under 060.integration
- implementation/sql drafts under 120.implementation
## RULE POSITIONING
- Global civilization-system rules stay in the upper system layer.
- CommonOS-specific rules are stored inside 12.common-os.
- Rule placement matrix is defined in 010.constitution.

## Architecture and application common component reflection

### Formal position
CommonOS root now formally recognizes the 020.architecture layer as the canonical home of shared UI architecture, app_common positioning, ERP shared UI applicability, offline-first architecture, and the application common component sub-system.

### Important split
- CommonOS root:
  - overall shared foundation identity
  - cross-layer integration
- 020.architecture:
  - architecture canon
  - application common component canon
  - origin reflection from systems such as StaticArtOS

### Operational meaning
Current-wave accepted application common components are part of CommonOS design canon, while buildable implementation artifacts are still pending under the implementation-side roadmap.
