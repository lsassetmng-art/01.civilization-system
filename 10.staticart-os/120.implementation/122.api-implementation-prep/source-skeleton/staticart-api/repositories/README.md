# StaticArtOS Repository Implementation Skeleton

This directory is the repository implementation skeleton for StaticArtOS.

## Intent

- bind service interfaces to Persona-side DB access
- keep SQL out of routes and services
- prepare actual persistence points for Phase 2 and later phases

## Important

- use PERSONA_DATABASE_URL only for Persona-side DB access
- do not decide permission here
- do not return HTTP responses here
- do not treat projection tables as canonical write sources

## Current state

- Asset create/detail/localization/rights/sales/subscription persistence points are scaffolded
- Review/publish/restrict/archive remain placeholders for later phases
- Entitlement/library/projection repository entry points are scaffolded
