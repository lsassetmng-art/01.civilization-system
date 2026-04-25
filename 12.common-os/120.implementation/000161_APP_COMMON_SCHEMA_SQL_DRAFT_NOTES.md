# ============================================================
# APP_COMMON SCHEMA SQL DRAFT NOTES
# ============================================================

status: draft-notes
owner: Boss
prepared_by: Zero

## PURPOSE
This note explains the scope of the initial SQL draft file:
- 000160_APP_COMMON_SCHEMA_SQL_DRAFT.sql

## CURRENT POSITION
This SQL is a first physical draft.
It is intentionally limited to the minimum high-value set.

## INCLUDED NOW
- schema creation
- updated_at trigger helper
- theme registry
- token set
- token value
- locale key
- locale translation
- component catalog
- component variant catalog
- screen template
- sync policy
- retry policy
- queue visual rule
- small seed examples

## NOT INCLUDED YET
- form_definition_metadata
- notification_template
- export_template
- help_template
- accessibility_preset
- attachment_policy
- client_capability_registry
- RLS design
- grants / privileges
- audit triggers
- migration packaging

## IMPORTANT REVIEW POINTS
- foreign key strategy around text code references
- whether theme/version should use surrogate or business code joins
- whether locale-aware tokens are really needed now
- whether seed data belongs in the same file or a separate seed file
- whether ERP-specific dense variants need separate token sets immediately

## RECOMMENDED NEXT STEP
Review this SQL draft first.
After that, create:
1. reviewed canonical SQL
2. RLS / permission design draft
3. migration runner file
