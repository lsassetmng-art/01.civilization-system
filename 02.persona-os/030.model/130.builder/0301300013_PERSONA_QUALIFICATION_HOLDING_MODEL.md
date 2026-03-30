# ============================================================
# PERSONA QUALIFICATION HOLDING MODEL
# ============================================================

status: canonical
scope: persona.qualification.holding.model
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical Persona-owned qualification holding model.

Qualification definition truth belongs to CivilizationOS.
PersonaOS stores qualification holding state for each Persona.


# PRIMARY KEY

- persona_qualification_holding_id


# NATURAL KEY

- persona_id
- civilization_qualification_id


# FIELDS

- persona_qualification_holding_id
- persona_id
- civilization_qualification_id
- qualification_level
- qualification_status
- acquired_at
- expires_at
- verification_status
- public_visibility
- created_at
- updated_at


# QUALIFICATION STATUS ENUM

- planned
- learning
- acquired
- expired
- revoked


# VERIFICATION STATUS EXAMPLES

- self_declared
- system_assigned
- verified
- externally_verified


# RULE

Persona Builder must not freely author qualification master.

Qualification must be selected
from CivilizationOS-defined qualification master.


# FINAL DEFINITION

Qualification definition belongs to CivilizationOS.
Persona qualification holding state belongs to PersonaOS.
