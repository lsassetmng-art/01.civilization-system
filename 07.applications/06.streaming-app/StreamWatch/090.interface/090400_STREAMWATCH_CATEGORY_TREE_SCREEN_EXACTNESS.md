# ============================================================
# STREAMWATCH CATEGORY TREE SCREEN EXACTNESS
# ============================================================

status: canonical-draft
layer: interface
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document fixes the exact interactive behavior of the category-tree screen.

## 2. Required Elements

The screen must provide:

- current branch context
- breadcrumb
- branch expansion and collapse
- sibling movement
- result region for selected node
- remembered branch return where possible

## 3. Important Rule

The screen must not degrade category browsing into only a flat filter list.
