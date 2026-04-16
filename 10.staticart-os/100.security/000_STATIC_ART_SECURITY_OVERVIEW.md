# ============================================================
# STATIC ART SECURITY OVERVIEW
# ============================================================

status: canonical-overview
layer: security
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Security Objective

StaticArtOS security must protect restricted assets, entitled content, user continuity data, and review decisions from unauthorized access or mutation.

## 2. Security Surfaces

- creator management surfaces
- admin governance surfaces
- full-content delivery
- sample delivery
- entitlement mutation endpoints
- projection read surfaces
- progress and bookmark data

## 3. Security Principles

- full content must require resolved entitlement
- admin mutations must require role-based authority
- review decisions must be auditable
- projection read must expose only allowed fields
- sample and full-content storage keys must not be treated as public truth
