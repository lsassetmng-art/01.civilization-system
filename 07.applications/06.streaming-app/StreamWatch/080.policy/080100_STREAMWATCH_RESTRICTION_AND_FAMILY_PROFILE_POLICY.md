# ============================================================
# STREAMWATCH RESTRICTION AND FAMILY PROFILE POLICY
# ============================================================

status: canonical-draft
layer: policy
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines profile restriction behavior and family-profile separation policy.

## 2. Restriction Modes

The policy may support modes such as:

- unrestricted
- child_safe
- teen
- custom_guarded
- nighttime_limit
- watch_time_limit

## 3. Family Profile Separation Rule

The following must remain separated by viewer_profile:

- history
- progress
- favorites
- watch later
- recommendation context
- restriction context
- notification preference

## 4. Gating Rule

Restriction decisions must be visible before playback when required by policy.

## 5. Final Policy Rule

Profile separation is not cosmetic.
It is the basis for safe and correct viewer behavior.
