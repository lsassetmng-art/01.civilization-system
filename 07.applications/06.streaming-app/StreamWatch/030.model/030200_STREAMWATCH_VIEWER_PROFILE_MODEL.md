# ============================================================
# STREAMWATCH VIEWER PROFILE MODEL
# ============================================================

status: canonical-draft
layer: model
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the viewer_profile model used by StreamWatch.

## 2. Core Principle

viewer_profile is the minimum continuity unit.

## 3. Conceptual Fields

A viewer_profile conceptually carries:

- viewer_profile_id
- account_subject_id
- display_name
- avatar reference
- preferred language
- subtitle default
- autoplay preference
- live notification preference
- restriction mode
- age band or safe-mode classification

## 4. Behavioral Ownership

viewer_profile governs:

- history partition
- progress partition
- favorites interpretation
- watch-later interpretation
- library previews
- recommendation input context
- entitlement application context
- restriction gating context

## 5. Security Note

viewer_profile is not the same thing as credential ownership.
It is a continuity and experience partition, not a raw authentication primitive.
