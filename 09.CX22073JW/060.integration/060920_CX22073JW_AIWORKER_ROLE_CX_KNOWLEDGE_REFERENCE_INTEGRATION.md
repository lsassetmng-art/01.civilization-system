# ============================================================
# CX22073JW AIWORKER ROLE CX KNOWLEDGE REFERENCE INTEGRATION
# ============================================================

status: canonical-integration
system: CX22073JW
related_systems:
- 11.aiworker-os
- 03.business-os
- AICompanyManager
owner: Boss
prepared_by: Zero

## 1. Purpose
Define how AIWorkerOS / BusinessOS / AICompanyManager should use CX22073JW role knowledge packs.

## 2. Responsibility Split

### CX22073JW
- stores role knowledge packs
- provides reference views
- supports explanation, templates, search tags, and safe usage notes

### AIWorkerOS
- owns robot series
- owns robot model truth
- owns personality / public profile / safety profile canon

### BusinessOS
- owns robot pool
- owns contracts / entitlement
- owns placement
- owns RLS / API authorization
- owns company context

### AICompanyManager
- consumes role knowledge
- displays explanations
- uses templates / review perspectives
- does not use CX as authorization truth

## 3. Reference Flow
1. AICompanyManager has company / department / section placement data.
2. BusinessOS resolves the assigned robot and placement role.
3. AIWorkerOS resolves model / series / personality canonical truth.
4. CX22073JW receives or uses `role_code` as knowledge reference key.
5. CX returns role explanation, templates, boundaries, and tags.

## 4. Safe Boundary
CX knowledge may assist reasoning and explanation, but cannot:
- approve work
- change entitlement
- decide RLS
- decide API authority
- decide placement
- override AIWorkerOS model safety policy

## 5. Combat Role Separation
Combat/security/crisis roles must not be treated as normal business roles.

Examples:
- Specialist and CombatSpecialist are different.
- Leader and TacticalLeader are different.
- President / Manager and StrategicCommander are different.
- Butler can have service/support meaning, but direct combat/security references must route to Battler/Security when needed.

## 6. AICompanyManager Usage
AICompanyManager can use the CX role knowledge pack for:
- role explanation
- dashboard explanations
- department / section role help
- task decomposition support
- review perspective suggestions
- safe boundary reminders
- template suggestions

AICompanyManager must not use the CX role knowledge pack for:
- permission checks
- placement confirmation
- paid entitlement decision
- company-specific secret access
- final approval authority

## 7. Candidate API / View Consumption
Recommended CX views:
- `cx22073jw.vw_robot_role_knowledge_pack_v1`
- `cx22073jw.vw_robot_role_knowledge_domain_v1`
- `cx22073jw.vw_robot_role_safety_boundary_v1`
- `cx22073jw.vw_robot_role_template_reference_v1`
- `cx22073jw.vw_robot_model_role_knowledge_reference_v1`
- `cx22073jw.vw_robot_model_full_reference_v3`

## 8. Completion Criteria
- AICompanyManager can show role explanation from CX.
- role_code can fetch knowledge pack.
- model_code can fetch knowledge through role mapping.
- combat roles are separated from business roles.
- BusinessOS authority remains outside CX.
