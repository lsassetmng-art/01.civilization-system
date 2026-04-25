# StaticArtOS UI Source Skeleton

This directory is the framework-light UI source skeleton for StaticArtOS.

## Intent

- freeze screen boundaries
- freeze reusable component boundaries
- freeze UI state handling
- preserve creator / marketplace / library / admin separation

## Directory rules

- `screens/` compose route-level UI
- `components/` contain reusable presentation pieces
- `state/` contains view-state helpers only
- `contracts/` contains shared UI view-model types
- `navigation/` contains canonical route mapping

## Important

- do not fetch canonical data directly inside presentational components
- do not merge Reader and Viewer into one continuity surface
- use allowed_actions as product detail truth source
- keep loading / empty / error / forbidden reusable
