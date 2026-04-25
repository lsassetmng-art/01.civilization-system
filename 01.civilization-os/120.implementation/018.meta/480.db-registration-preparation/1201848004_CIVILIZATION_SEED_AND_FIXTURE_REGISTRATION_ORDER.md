# ============================================================
# CIVILIZATION SEED AND FIXTURE REGISTRATION ORDER
# ============================================================

status: db-registration-preparation
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the preparation order for future seed and fixture registration.

## 2. Scope

This document governs preparation for:

- world seed
- initial nation and city seed
- facility master seed
- marketplace master seed
- education and career master seed
- language/map support seed
- runtime fixture seed

## 3. Canonical Seed Order

Recommended order:

1. world seed root
2. initial nation and city seed
3. territory and zoning presets
4. facility family master
5. marketplace listing and fulfillment master references
6. education and exam master references
7. career and occupation master references
8. language support seed
9. map support seed
10. sample runtime fixtures
11. test-only fixtures separated from canonical sample fixtures

## 4. Rule

Seed preparation must distinguish:

- canonical seed
- sample fixture
- test-only fixture

These must not be merged into one dataset class.

## 5. Exact Preparation Checklist

- predecessor seed dependencies identified
- environment target identified
- rerun-safe upsert posture planned
- fixture isolation planned
- verify queries planned

## 6. Acceptance Checklist

- canonical seed order fixed
- seed/fixture split fixed
- rerun-safe preparation fixed
