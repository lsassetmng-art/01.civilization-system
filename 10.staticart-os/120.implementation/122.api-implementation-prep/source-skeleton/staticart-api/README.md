# StaticArtOS API Source Skeleton

This directory is the framework-agnostic source skeleton for StaticArtOS API.

## Intent

- freeze responsibility boundaries
- keep route/service/repository separation
- prevent projection from becoming canonical write logic
- preserve distinct reader/viewer continuity handling

## Directory rules

- `routes/` handles permission gate + request-shape entry + response envelope
- `services/` handles use-case orchestration
- `repositories/` will later bind to DB access
- `guards/` handles permission checks only
- `validators/` handles request input validation only
- `jobs/` handles projection and recompute queue boundaries

## Important

- bind DB access later using `PERSONA_DATABASE_URL` side runtime
- do not put SQL directly into route handlers
- do not let repository layer decide permission
