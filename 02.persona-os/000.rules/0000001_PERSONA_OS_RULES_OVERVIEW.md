# ============================================================
# PERSONA OS RULES OVERVIEW
# ============================================================

status: canonical
layer: rules
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the role of PersonaOS rules.

summary:
Rules prevent structural drift,
binding drift,
and authority confusion.

scope:
directory discipline
layer order
binding order
truth authority
builder non-authority
host non-authority

<!-- PERSONAOS_R4_ALIAS_AWARE_OWNER_CONTRACT_BEGIN -->

## PersonaOS Alias-aware Canonical Owner Contract

PersonaOS manages Persona canonical records as the system-of-record. The actual Persona owner is a separate owner identity.

In the current PersonaOS design, the existing `owner` concept is treated as the canonical owner binding unless a more specific compatible field is already defined.

### Owner identity rule

- `owner` is the Persona owner binding concept in the current design.
- `owner` must resolve to a CivilizationID-backed owner identity, or to an equivalent Civilization account owner.
- Existing field names must not be renamed only for naming preference.
- Do not force the design to use `owner_civilization_id` when `owner` is already the established design term.
- `owner_id`, `civilization_id`, `civilizationId`, or `CivilizationID` are owner identity aliases only when the surrounding contract maps them to the Persona owner.
- `created_by`, `updated_by`, `operator`, and similar audit/operator fields are not the final Persona owner unless an explicit contract says otherwise.

### PersonaOS responsibility

PersonaOS manages Persona canonical records, draft / canonical / published / archived state transitions, version and revision history, owner identity resolution, visibility boundaries, and Persona-specific skills, parameters, and knowledge references.

PersonaOS does not replace the external owner. The owner remains the CivilizationID-backed owner identity.

### PersonaBuilder responsibility

PersonaBuilder is the operation surface for Persona creation and maintenance.

PersonaBuilder may create drafts, edit drafts, validate Persona records, carry a Persona from draft to canonical state, and publish through PersonaOS-controlled gates.

PersonaBuilder operates on behalf of an authorized owner or operator. PersonaBuilder must not become the Persona owner itself.

### Host app boundary

Host applications are Persona consumers. They may request authorized Persona reads and use published or otherwise authorized Persona records within their permitted scope.

Host applications must not own the Persona canonical record, overwrite `owner`, or bypass PersonaOS state, version, or visibility gates.

### AIWorkerOS boundary

AIWorkerOS is a runtime consumer of Persona.

AIWorkerOS may use authorized Persona-specific skills, parameters, knowledge, memory, and profile context to affect output quality. AIWorkerOS also uses robot parameters, runtime settings, CX data, and task context.

AIWorkerOS must not own Persona canonical records, overwrite `owner`, or replace PersonaOS as the source of Persona truth.

### FamilyLegacyAI and BOSS_PROXY boundary

FamilyLegacyAI and BOSS_PROXY are planned PersonaOS consumers. They may reference PersonaOS canonical records through authorized flows. They do not become canonical Persona authorities.

FamilyLegacyAI must preserve disclosure and safety boundaries. BOSS_PROXY must remain separate from FamilyLegacyAI and use PersonaOS as the canonical Persona source.

### Canonicalization rule

A Persona may not become canonical or published unless its `owner` binding is present and resolvable to the authorized owner identity.

Minimum canonical ownership requirement:

Persona.owner resolves to a CivilizationID-backed owner identity.

If the implementation later uses another physical field name, that field must be documented as an alias of this owner identity concept.

<!-- PERSONAOS_R4_ALIAS_AWARE_OWNER_CONTRACT_END -->
