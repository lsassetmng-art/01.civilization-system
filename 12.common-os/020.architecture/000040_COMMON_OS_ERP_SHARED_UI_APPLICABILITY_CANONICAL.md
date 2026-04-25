# COMMON OS ERP SHARED UI APPLICABILITY CANONICAL

status: canonical
layer: architecture

## ERP applicability statement
ERP is one of the highest-fit targets for CommonOS adoption.

## High-fit ERP surfaces
- list screens
- detail screens
- input forms
- approval views
- draft screens
- attachment panels
- search and filter panels
- dashboards
- status surfaces
- offline and sync presentation

## Excluded ERP areas
- accounting core logic
- inventory calculation core
- cost calculation core
- approval authority logic
- company-specific truth
- voucher finalization logic
- audit decision logic

## ERP design rule
ERP-specific density is allowed through variants such as input.erp_dense. ERP does not receive a separate UI canon.
