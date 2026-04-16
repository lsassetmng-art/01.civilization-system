# ============================================================
# STREAMWATCH CATEGORY TREE MODEL
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

This document defines the model assumptions behind canonical category-tree browsing in StreamWatch.

## 2. Core Structure

The category tree is modeled through node identity and parent-child relations.

## 3. Minimum Node Semantics

A category node conceptually requires:

- category_node_id
- parent_category_node_id
- node_type
- display_name
- sort_order
- active_flag

## 4. Node Type Rule

Supported types:

- genre
- series
- creator
- project
- playlist_group
- personal_library_group

## 5. Modeling Consequence

The model must support both:

- deep traversal
- partial branch rendering

and cannot assume a flat category list.
