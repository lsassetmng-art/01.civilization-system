# ============================================================
# COMPANY SITE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for COMPANY SITE
within company-builder and market-play flows.

# 2. TABLE PROFILE

Primary profile:
- entity

# 3. PHYSICAL TABLE

Table:
- company_site

# 4. COMMON COLUMN GROUPS

Applied groups:
- identity columns
- audit columns
- lifecycle columns

Additional groups:
- trace columns
- period columns
- workflow columns
  - only where applicable

# 5. COLUMNS

- id
- code
- status
- created_at
- updated_at
- company_id
- site_type_code
- location_ref
- operator_ref
- activation_status

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_company_site_company_id
- idx_company_site_site_type_code
- idx_company_site_location_ref

Checks:
- company_id is required

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this company-builder concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid company linkage
- lifecycle ambiguity
- ownership or scope inconsistency

## Exact Company Core And Site Separation
## Exact Company Core And Site Separation

Company core defines organizational existence.
Company site defines operational location.
Property ownership defines asset or right posture.
Occupancy defines usable space posture.
Opening defines active operation posture.

These must not be collapsed into one canonical record.

## Exact Opening Guard

Opening is allowed only when:

- company core is active
- required occupancy is valid
- zoning compatibility passed
- required government-side approval or notification is satisfied

## Exact Occupancy And Opening Split

The following must remain separate:

- company_site
- company_site_occupancy
- opening state
- closure state
- map projection

Opening may depend on occupancy,
but occupancy is not equivalent to open operation state.
