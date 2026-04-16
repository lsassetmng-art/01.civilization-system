# CX22073JW BodyMetrics / MealPlanner Flow
- project: CX22073JW
- document_type: flow
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. BodyMetrics Flow
1. app collects user measurement
2. app resolves profile_code
3. app reads health reference ranges from CX22073JW
4. app reads score bands / total bands / comments
5. app calculates result outside CX22073JW
6. app displays score and guidance

## 2. MealPlanner Flow
1. app derives lack/excess from daily intake
2. app reads nutrition reference from CX22073JW
3. app reads food / nutrient / tag / price data
4. app reads recipe templates
5. app builds candidate foods / recipes outside CX22073JW
6. app displays recommendations

## 3. Principle
CX22073JW provides reusable reference logic basis.
Final user-specific result is produced in the app side.
