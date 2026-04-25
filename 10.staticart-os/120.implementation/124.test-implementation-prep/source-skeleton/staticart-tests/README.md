# StaticArtOS Test Source Skeleton

This directory is the framework-light test source skeleton for StaticArtOS.

## Intent

- turn acceptance cases into executable test entry points
- keep policy and projection regression visible
- keep permission and audit checks explicit

## Important

- Persona-side DB assumptions use PERSONA_DATABASE_URL
- projection is derived and must never be asserted as canonical source
- reader continuity and viewer continuity must remain separate test surfaces
