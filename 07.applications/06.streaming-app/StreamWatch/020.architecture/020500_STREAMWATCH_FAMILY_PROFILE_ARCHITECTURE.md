# ============================================================
# STREAMWATCH FAMILY PROFILE ARCHITECTURE
# ============================================================

status: canonical-draft
layer: architecture
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines how family-profile and viewer-profile partitioning is built into StreamWatch.

## 2. Core Rule

The continuity unit is viewer_profile, not raw account identity.

## 3. Profile-Separated Domains

The following must be separated per viewer_profile:

- history
- progress
- continue watching
- favorites
- watch later
- recommendation context
- subtitle preference
- autoplay preference
- restriction mode context
- notification preference context

## 4. Why This Matters

Without viewer_profile separation, StreamWatch would merge unrelated watch histories, restrictions, and resume states across different people sharing one account context.

## 5. Restriction Interaction

Profile architecture must allow restriction-aware behavior before playback entry, not only after playback begins.

## 6. Final Architecture Statement

Viewer_profile is the minimum architectural unit that makes continuity, safety, and viewer preference behavior coherent.
