# ============================================================
# PERSONA EVENT CONTRACT
# PURCHASE / GRANT / REVOKE / WORLD_EVENT / LIFE_EVENT
# ============================================================

status: canonical-event-contract-set
layer: implementation
domain: 012.integration
subdomain: 080.persona-event-contract
document_id: 1200120803
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical Persona integration contracts for:

- purchase
- grant
- revoke
- world_event
- life_event

## 2. Purchase Contract

event_type:
- persona.purchase_recorded

Purpose:
Records that a Civilization-side marketplace transaction completed
and produced a world-valid purchase fact.

Minimum payload:
- marketplace_order_id
- order_line_id
- purchaser_party_ref
- target_persona_ref (optional but explicit when relevant)
- product_id
- product_sku_id
- quantity
- ownership_event_ref
- entitlement_candidate_ref
- grant_mode
- purchase_occurred_at

Rules:
- purchase fact belongs to CivilizationOS
- PersonaOS decides whether purchase implies internal mutable effect
- direct Persona entitlement mutation by CivilizationOS is prohibited

## 3. Grant Contract

event_type:
- persona.grant_recorded

Purpose:
Records that a Civilization-side institution, reward flow,
or policy flow granted something persona-relevant.

Minimum payload:
- grant_event_id
- target_persona_ref
- grant_type
- grant_subject_ref
- grant_reason_code
- revocable_flag
- valid_from
- valid_to
- source_world_event_ref

Rules:
- grant fact belongs to CivilizationOS
- PersonaOS applies internal effect only after acceptance
- reward truth and internal persona mutation are separate

## 4. Revoke Contract

event_type:
- persona.revoke_recorded

Purpose:
Records that a previously granted or owned world-side effect
was revoked, invalidated, or withdrawn.

Minimum payload:
- revoke_event_id
- target_persona_ref
- revoke_type
- revoked_subject_ref
- source_grant_event_ref
- revoke_reason_code
- effective_at
- compensation_policy_ref

Rules:
- revoke fact belongs to CivilizationOS
- PersonaOS decides and records internal consequence after acceptance
- direct mutable-state deletion by CivilizationOS is prohibited

## 5. World Event Contract

event_type:
- persona.world_event_notified

Purpose:
Notifies PersonaOS that a world-owned event occurred and may require
persona-side acceptance or application.

Minimum payload:
- world_event_id
- world_event_class
- severity
- location_ref
- involved_persona_refs
- legal_context_ref
- market_context_ref
- government_context_ref
- occurred_at

Rules:
- event fact belongs to CivilizationOS
- PersonaOS may create internal response only after acceptance
- world-event notification is not a direct persona-state mutation order

## 6. Life Event Contract

event_type:
- persona.life_event_notified

Purpose:
Notifies PersonaOS about Civilization-owned civic, citizen, market,
legal, institutional, or social life events that are persona-relevant.

Minimum payload:
- life_event_id
- life_event_class
- involved_persona_refs
- institution_ref
- legal_or_market_consequence_ref
- occurred_at
- source_world_event_ref

Rules:
- CivilizationOS owns only the world-side life-event fact it generated
- PersonaOS owns internal persona-side mutable interpretation and application
- life_event fact must not be used to directly overwrite Persona mutable truth

## 7. Common Hard Rule

For all five event classes:

CivilizationOS emits facts.
PersonaOS accepts or rejects.
PersonaOS applies internal mutable effects.
CivilizationOS never directly mutates Persona mutable canonical state.

## 8. Acceptance Checklist

- purchase contract fixed
- grant contract fixed
- revoke contract fixed
- world_event contract fixed
- life_event contract fixed
- common hard rule fixed

## Receive-Side Result Expectation
## Receive-Side Result Expectation

For purchase, grant, revoke, world_event, and life_event contracts,
CivilizationOS expects PersonaOS to produce an explicit result envelope that distinguishes:

- receipt outcome
- acceptance outcome
- apply outcome
- signed snapshot refresh reference when applicable

Emission success from CivilizationOS does not imply Persona-side apply success.

## Contract Set Ownership Rule
## Contract Set Ownership Rule

For purchase, grant, revoke, world_event, and life_event:

- CivilizationOS owns world-side fact generation
- PersonaOS owns acceptance and mutable application
- signed snapshot refresh remains PersonaOS-side issuance
- CivilizationOS consumes the resulting public surface only
