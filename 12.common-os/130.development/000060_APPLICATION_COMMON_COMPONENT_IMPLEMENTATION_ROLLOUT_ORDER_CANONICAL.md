# APPLICATION COMMON COMPONENT IMPLEMENTATION ROLLOUT ORDER CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document defines the recommended rollout order for CommonOS application common component implementation.

## Rollout order
1. design tokens and theme base
2. button and input family
3. card, list, table, and state panel family
4. dialog, toast, confirm, and overlay family
5. app shell and navigation primitives
6. offline queue status and sync retry presentation
7. locale-safe labels and multicurrency presentation helpers
8. attachment and upload-pending presentation
9. feature-level current-wave components
10. hold-family candidates after promotion

## ERP-specific note
ERP dense variants should be introduced through the shared rollout, not through a separate ERP-only implementation branch.

## Rollout rule
Earlier rollout layers must stabilize before deeper feature-level families are broadly adopted.
