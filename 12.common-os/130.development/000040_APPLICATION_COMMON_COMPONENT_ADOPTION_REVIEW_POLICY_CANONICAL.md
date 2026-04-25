# APPLICATION COMMON COMPONENT ADOPTION REVIEW POLICY CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document defines the formal adoption review policy for application common component candidates in CommonOS.

## Review checkpoints
A candidate should be reviewed against all of the following:
1. CommonOS boundary fit
2. cross-app or cross-OS reuse value
3. naming normalization quality
4. layer clarity
5. variant-compatibility
6. absence of domain canon leakage
7. client-distribution safety where relevant
8. evidence strength from origin systems

## Review outputs
- accepted into current wave
- kept on hold
- sent back for rename or family merge
- rejected as domain-specific
- deferred pending second consumer

## Mandatory review note
The reviewer must explicitly state whether the candidate belongs to:
- UI primitive or shell
- UI composite or feature common
- presentation utility
- non-UI shared base

## Prohibition
Do not accept a candidate merely because it exists in one origin system. Origin existence alone is not enough.
