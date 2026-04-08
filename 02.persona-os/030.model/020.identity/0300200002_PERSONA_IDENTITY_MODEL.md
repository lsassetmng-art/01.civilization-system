# ============================================================
# PERSONA IDENTITY MODEL
# ============================================================

status: canonical
layer: model
domain: identity
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_identity

purpose:
Defines the canonical identity record for a persona.

core_fields:
persona_identity_id
persona_id
internal_name
display_name
alias
public_name
identity_status
identity_version
first_person_style
second_person_style
title
affiliation
language_code
origin_summary
created_at
updated_at

rules:
Internal identity and public identity may differ.
Identity truth belongs to PersonaOS.
Display-oriented identity must not replace internal authority identity.
