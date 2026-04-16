# ============================================================
# STREAMWATCH HOME SCREEN EXACTNESS
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

This document fixes the block order and entry behavior of the home surface.

## 2. Fixed Block Order

The home surface should prioritize blocks in this order:

1. featured or promoted
2. continue watching
3. live now
4. personalized recommendations
5. ranking highlight
6. category shortcuts

## 3. Why This Order Exists

The home surface should first answer:
- what should I continue now
- what is live now
before it expands into broad discovery.

## 4. Important Rule

Continue watching must appear only for valid in-progress items.
