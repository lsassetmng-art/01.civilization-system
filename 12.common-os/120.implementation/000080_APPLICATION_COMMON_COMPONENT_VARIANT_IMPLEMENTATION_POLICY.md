# APPLICATION COMMON COMPONENT VARIANT IMPLEMENTATION POLICY

status: canonical
system: CommonOS
layer: implementation

## Purpose
This document defines how variants should be implemented for CommonOS shared components.

## Core rule
Prefer variant expansion over app-specific forks.

## Required early variants
- button.primary
- button.secondary
- button.destructive
- button.ghost
- input.default
- input.compact
- input.erp_dense
- card.standard
- card.record
- panel.sync
- panel.conflict

## Implementation rule
A variant may change:
- tone
- density
- emphasis
- viewport behavior
- state display

A variant may not change:
- domain authority
- pricing decisions
- entitlement decisions
- access decisions

## ERP rule
ERP-specific density must be expressed as shared variants, not as a separate ERP-only UI canon.
