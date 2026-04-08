# BUSINESS PERSONA BOUNDARY CONSTITUTION
status: canonical
layer: constitution
system: business-os
scope: business-persona-connection

Defines the official boundary between BusinessOS and PersonaOS.

## Core Rule
BusinessOS owns business-domain actions and triggers.
PersonaOS owns persona canonical state.

## Constitutional Rules
- BusinessOS must not directly mutate PersonaOS canonical state.
- PersonaOS must not originate business canonical records for BusinessOS.
- Cross-OS influence must use official integration events.
- Fail closed when validation is impossible.
