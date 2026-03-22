# BUSINESS TO PERSONA GROWTH REQUEST FLOW

status: canonical
layer: flow
domain: integration
owner: Boss
prepared_by: Zero

## FLOW
1. Business activity produces a growth-relevant event
2. BusinessOS determines growth delta and target dimension
3. BusinessOS writes request to outbox
4. PersonaOS receives request payload
5. PersonaOS validates applyability
6. PersonaOS updates growth truth
