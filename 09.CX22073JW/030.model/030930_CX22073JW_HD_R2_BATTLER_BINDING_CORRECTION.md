# CX22073JW HD-R2 Battler Binding Correction

status: canonical-correction
system: CX22073JW
related_systems:
- 11.aiworker-os
- 03.business-os
- AICompanyManager
owner: Boss
prepared_by: Zero
domain: robot-role-cx-knowledge
correction_type: model-role-binding

## 1. Canonical Rule

Butler remains a valid role.

However, HD-R2 is not Butler.

Canonical rule:

- Butler remains as an independent business / service / courtesy role.
- Butler may be used later for maid / butler / service style models.
- Battler remains a combat / security / crisis role.
- Security remains a separate combat / security / crisis role.
- HD-R2 is canonically bound to Battler.
- HD-R2 must not be bound to Butler.
- HD-R2 must not be bound to Security unless a future explicit model rule adds it.

## 2. Current DB Result

Confirmed after correction:

- role_count: 16
- series_count: 4
- model_binding_count: 29
- v3_count: 29

Expected HD-R2 binding:

- model_code: HD-R2
- series_code: HD
- role_code: Battler
- role_group_code: combat_security_crisis

## 3. Future Design Rule

Do not delete Butler from role canon.

Do not map HD-R2 to Butler.

If a future maid / butler / service model is added, it may bind to Butler separately.

AICompanyManager / BusinessOS / AIWorkerOS consumers should resolve HD-R2 through Battler knowledge, not Butler knowledge.

## 4. Safety Boundary

Because HD-R2 resolves to Battler, its CX reference must stay within:

- fiction
- game / worldbuilding
- security / crisis explanation
- high-level safe role explanation

It must not provide real-world harm execution support.
