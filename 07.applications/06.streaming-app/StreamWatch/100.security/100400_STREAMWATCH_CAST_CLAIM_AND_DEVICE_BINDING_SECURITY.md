# ============================================================
# STREAMWATCH CAST CLAIM AND DEVICE BINDING SECURITY
# ============================================================

status: canonical-draft
layer: security
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines security assumptions around route handoff claim and device binding.

## 2. Security Goal

Prevent invalid claim, wrong-target claim, or cross-context playback leakage.

## 3. Security Requirements

A handoff claim should validate:

- intended route or target
- current viewer context
- current session freshness
- valid handoff session existence

## 4. Final Security Rule

Real route handoff is a continuity transfer with security implications, not only a convenience transport toggle.
