# RobotRentalStore civilization_id DB Design

## Status
- status: design-only
- apply_status: not_applied

## Rule
RobotRentalStore is a user-facing BusinessOS app.
Its ownership boundary is civilization_id.

## Quote
If quote becomes persistent:
- robot_rental_quote_id
- owner_civilization_id
- user_id optional legacy
- model_code
- role_code
- rental_unit
- duration_quantity
- quantity
- subtotal_jpy
- discount_jpy
- total_jpy
- target_company_id nullable
- erp_company_id nullable
- quote_status
- expires_at
- created_at
- updated_at

## Contract
Use WorkerRentalCore contract tables.
RobotRentalStore should not create a separate incompatible contract canon.

## API context
Required:
- app.current_civilization_id

Optional:
- app.current_company_id only when target company is selected
