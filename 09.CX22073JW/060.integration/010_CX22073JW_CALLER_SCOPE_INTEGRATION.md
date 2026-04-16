# CX22073JW Caller Scope Integration
- project: CX22073JW
- document_type: integration
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Integration Key
Normal consumers integrate with CX22073JW by:
- caller_code
- requested_scope

## 2. Examples
- portal_site_helpdesk -> portal support scopes
- business_os_ai_worker -> business fixed scopes
- legal_consult_app -> legal general scopes
- medical_consult_app -> medical general scopes
- bodymetrics / mealplanner -> life reference scopes

## 3. Integration Rule
The consumer resolves:
- which scope is primary
- which fallback scope applies
- which disclaimer / answer style applies

## 4. Triple Route Addition
CX22073JW also has a triple-only access route.

This route does not follow the same assumption as ordinary caller/scope consumers.
It requires additional integration concepts:
- access_route
- privilege_tier
- secret eligibility
- privileged target area

## 5. Multi-Route Model
Integration should now be understood as two broad lanes.

### 5-1. Normal Lane
Used by:
- portal
- OS support
- apps
- workers
- study/consult flows

Main keys:
- caller_code
- requested_scope
- route_policy

### 5-2. Privileged Triple Lane
Used by:
- triple-only privileged route

Main keys:
- access_route = triple
- privilege_tier
- secret eligibility
- privileged target selector

## 6. Secret Access Rule
Future secret information should not be resolved through ordinary caller/scope only.
It should require the privileged triple lane.

## 7. Conclusion
CX22073JW integration is no longer only caller/scope based.
It is now:
- ordinary caller/scope integration
plus
- separated triple-only privileged integration
