# APPLICATION COMMON COMPONENT WAVE PROMOTION POLICY CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document defines when a component family may move between hold, current wave, implementation-ready, and later rollout phases.

## Promotion path
- hold
- current_wave_accepted
- implementation_ready
- implemented
- adopted

## Minimum conditions to leave hold
- stronger evidence or clearer reuse value
- stable family naming
- clear layer split
- acceptable CommonOS boundary fit
- no domain canon leakage

## Minimum conditions to become implementation_ready
- public shape is understandable
- variant minimum is known
- rollout target is identified
- package boundary is understood
- implementation owner can proceed without redefining canon

## Demotion triggers
A component may be moved back to hold if:
- hidden domain logic is discovered
- family overlap becomes unresolved
- client-distribution risk is found
- boundary confidence weakens

## Current fixed interpretation
current_wave_accepted means canonically accepted at design level, not automatically implemented.
