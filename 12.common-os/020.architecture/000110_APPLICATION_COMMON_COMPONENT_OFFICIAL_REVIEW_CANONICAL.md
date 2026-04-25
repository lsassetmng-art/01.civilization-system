# APPLICATION COMMON COMPONENT OFFICIAL REVIEW CANONICAL

status: canonical
system: CommonOS
layer: architecture

## Review purpose
This document defines the rules for promoting an origin-side candidate into the CommonOS application common component canonical set.

## Promotion requirements
A candidate should satisfy all of the following:
1. It is not locked to one app-only wording or one origin-only naming habit.
2. It can be reused across multiple apps, OSs, or ERP surfaces.
3. It fits CommonOS boundary rules.
4. It does not carry domain transaction truth.
5. It does not require secrets or privileged server authority in the client package.
6. It can be normalized into a stable common-family name.
7. It has origin evidence or source review.
8. Its layer can be explained clearly.

## Common layer families
- UI primitive or shell
- UI composite or feature common
- Presentation utility or interaction pattern
- Non-UI shared base

## Rejection or hold triggers
- Too origin-specific
- Business canon mixed into presentation
- Runtime and presentation mixed without layer split
- Family duplication unresolved
- No clear second-use possibility
- Naming remains unstable

## Status progression
- origin_discovered
- origin_reviewed
- family_normalized
- common_review_pending
- current_wave_accepted
- hold
- implementation_ready
- implemented
- adopted
- superseded
- rejected
