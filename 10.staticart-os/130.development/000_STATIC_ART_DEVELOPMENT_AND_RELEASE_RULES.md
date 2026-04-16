# ============================================================
# STATIC ART DEVELOPMENT AND RELEASE RULES
# ============================================================

status: implementation-ready-development
layer: development
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Schema Rule

All StaticArtOS tables must be created under schema `staticart`.

## 2. Change Rule

Changes to:
- entitlement logic
- rights logic
- projection logic
- lifecycle states

must be additive or migration-safe and must preserve auditability.

## 3. Test Priority Rule

Highest priority tests:
- entitlement resolution
- subscription expiry behavior
- library visibility refresh
- reader and viewer access blocking
- projection eligibility resolution
- restriction behavior

## 4. Release Rule

A release is not acceptable unless:
- API contracts match implementation-ready design
- permission rules match implementation-ready design
- lifecycle states and entitlement states match implementation-ready design
