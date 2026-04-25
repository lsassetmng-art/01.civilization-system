# COMMON OS COMPONENT LAYER ARCHITECTURE CANONICAL

status: canonical
layer: architecture

## Component layers
- Primitive: spacing, stack, grid, typography hooks, surface
- Base controls: button, input, select, checkbox, radio, switch
- Data display: table, list, card, badge, status chip, pagination
- Feedback: toast, snackbar, dialog, modal, confirm UI
- Navigation: tabs, drawer, app shell, header, footer
- Sync presentation: offline queue status, retry, conflict, progress

## Extension rule
Variants extend presentation. Domain wrappers extend usage context. Neither may redefine business authority.
