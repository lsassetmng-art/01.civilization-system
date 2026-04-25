# APP_COMMON RLS SQL DRAFT TIER1 NOTES

status: canonical
system: CommonOS
layer: model
schema: app_common

## Purpose
This document explains the intent of the first actual RLS SQL draft for app_common.

## Base-table posture
- raw base tables are not broadly readable
- RLS is enabled and forced on Tier1 tables
- public or broad client read is not assumed on raw base tables

## Role intent
- app_common_reader_internal: broad internal read
- app_common_reviewer: internal review and controlled modification
- app_common_publisher: internal publication-oriented update responsibility
- service_role: controlled server-side authority
- anon / authenticated: published-view read only when granted

## Important interpretation
This draft intentionally uses broad row-level access for reviewer / publisher roles because field-level governance should be handled in controlled service flows or internal tooling layers.

## Why published views exist
Published views provide a stable pattern:
- reviewed only
- active only
- effective-window valid only
- safe-for-client subset only

## Execution note
This is still a design draft. Before real execution, environment-specific role naming, Supabase posture, and migration sequencing must be confirmed.
