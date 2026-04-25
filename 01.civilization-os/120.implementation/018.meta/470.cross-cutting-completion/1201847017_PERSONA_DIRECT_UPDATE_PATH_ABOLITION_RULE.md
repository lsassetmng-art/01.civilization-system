# ============================================================
# PERSONA DIRECT UPDATE PATH ABOLITION RULE
# ============================================================

status: direct-update-abolition-rule
layer: implementation
domain: 018.meta
subdomain: 470.cross-cutting-completion
document_id: 1201847017
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the rule for abolishing legacy direct-update paths from CivilizationOS
to Persona-side mutable truth.

## 2. Abolition Target

Any CivilizationOS-side path that directly mutates Persona-side mutable truth
is an abolition target.

## 3. High-Risk Direct-Write Targets

High-risk direct-write targets include direct write attempts touching names such as:

- personas
- persona_state
- persona_snapshot
- growth_*
- memory_*
- tone_templates
- visual_*
- ai_generation_log
- asset_publish_request
- entitlements
- subscription_*
- signing_key_registry
- revocation_list
- event_registry
- namespace_registry

## 4. Allowed Patterns

Allowed patterns are limited to:

- explicit event emission toward PersonaOS
- signed snapshot consumption
- public-display consumption of snapshot-derived data
- explicit audit/reporting of event outcome

## 5. Forbidden Patterns

Forbidden patterns include:

- SQL UPDATE / INSERT / DELETE against Persona mutable tables from CivilizationOS
- direct RPC mutation against Persona mutable state
- direct upsert path into Persona canonical mutable truth
- hidden write path inside marketplace or world-event handlers
- implicit write through sync logic without event contract

## 6. Classification Rule

Every scan finding must be classified as one of:

- ABOLISH_HARD_DIRECT_WRITE
- REVIEW_SUSPICIOUS_REFERENCE
- ALLOW_SIGNED_SNAPSHOT_CONSUME
- ALLOW_EVENT_EMISSION

## 7. Acceptance Checklist

- abolition target fixed
- allowed patterns fixed
- forbidden patterns fixed
- scan classification rule fixed

## Continuous Scan Requirement
## Continuous Scan Requirement

Direct-update abolition is not a one-time cleanup only.

Future implementation work must continue scanning for:

- direct SQL mutation patterns
- direct RPC mutation patterns
- hidden write paths in sync logic
- marketplace or event handlers that bypass event contract

A no-findings result in one scan does not waive future scan responsibility.
