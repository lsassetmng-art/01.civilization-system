# ============================================================
# STATIC ART ACCESS AND ASSET PROTECTION POLICY
# ============================================================

status: implementation-ready-security
layer: security
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Access Control Classes

- creator
- publisher
- curator
- buyer
- subscriber
- reader
- collector
- admin

## 2. Protected Asset Classes

- full publishing content
- full visual content
- restricted previews
- rights case records
- review case records
- entitlement source details

## 3. Protection Rules

- full asset delivery requires current full entitlement
- sample asset delivery requires sample permission
- rights and review records are admin-only by default
- entitlement write endpoints accept only trusted integration or privileged internal actors
- user progress endpoints may only mutate the caller's own records unless admin support mode applies

## 4. Audit Rule

All changes to:
- rights policy
- restriction state
- entitlement state
- projection eligibility state

must be auditable with actor, timestamp, and reason.
