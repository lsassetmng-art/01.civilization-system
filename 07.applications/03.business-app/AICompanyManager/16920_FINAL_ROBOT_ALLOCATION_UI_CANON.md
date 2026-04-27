# AICompanyManager final robot allocation UI canon

## App nature
AICompanyManager is a BusinessOS system-use app.

## Allocation rule
Robot allocation is unlimited system-use allocation.

## Quantity rule
AICompanyManager does not consume:
- contracted_quantity
- available_quantity
- rental quantity
- inventory quantity

## Robot source
Users select robots from the Business-side robot pool/catalog.

## Company-level
AI企業設定 owns:
- President robot selection
- President internal nickname
- company business policy instruction to President

Display:
- 社内通称@President

## Department-level
部門詳細 owns:
- Manager robot selection
- Manager internal nickname

Display:
- 社内通称@Manager

## Section-level
課詳細 owns:
- Leader robot selection
- Leader internal nickname
- Worker robot multiple placement
- Worker internal nickname per placement
- Worker placement update

Display:
- 社内通称@Leader
- 社内通称@Worker

## Placement edit
Assigned Worker robots must be editable after placement.

## Future compatibility
The pattern may be reusable for Civilization company builder, while current implementation remains AICompanyManager / BusinessOS system-use.
