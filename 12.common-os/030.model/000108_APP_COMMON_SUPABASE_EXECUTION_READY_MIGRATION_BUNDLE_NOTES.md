# APP_COMMON SUPABASE EXECUTION READY MIGRATION BUNDLE NOTES

status: canonical
system: CommonOS
layer: model
schema: app_common

## Purpose
This document explains the execution-ready bundle file for Tier1 app_common migration work.

## Bundle order
1. reviewed canonical Tier1 DDL
2. RLS draft and internal-role protection
3. published read views

## Why this order
- objects must exist before RLS policies can be attached
- protected base tables should exist before published views are granted
- broad read should target published views, not raw base tables

## Execution readiness meaning
Execution-ready in this context means:
- absolute paths are fixed
- SQL order is fixed
- ON_ERROR_STOP is enabled
- the bundle is designed to be run through psql

It does not mean:
- production target DB has already been chosen
- roles are guaranteed to exist in every environment
- rollout approval has already been granted
