# BUSINESS TO PERSONA GROWTH SYNC ARCHITECTURE

status: canonical
layer: architecture
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Define the canonical request/response path for Business-originated growth changes.

## RULE
Business events may request Persona growth changes.
PersonaOS remains the sole truth holder of growth state.
BusinessOS consumes the resulting synchronized state after PersonaOS applies it.

## PATH
1. Business event occurs
2. Business request is normalized
3. request is written to Business outbox
4. PersonaOS consumes request
5. PersonaOS updates growth truth
6. PersonaOS emits result sync event
7. BusinessOS updates mirrored growth and dependent behavior
