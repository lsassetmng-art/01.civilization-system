# RobotRentalStore Stateflow

## Main flow
1. catalog_loading
2. catalog_ready
3. filter_changed
4. model_selected
5. detail_open
6. plan_selected
7. quote_requested
8. quote_ready
9. confirm_requested
10. contract_pending
11. contract_confirmed

## Error flow
- catalog_error
- quote_error
- payment_error
- contract_error

## Offline / queue future
- quote can be local preview
- confirm requires online API
- failed confirm should be queue-visible through CommonOS sync presentation
