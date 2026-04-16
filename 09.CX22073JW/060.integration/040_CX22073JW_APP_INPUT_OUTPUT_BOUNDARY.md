# CX22073JW App Input / Output Boundary
- project: CX22073JW
- document_type: app-input-output-boundary
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes how apps exchange data with CX22073JW foundation logic.

## 2. Input Boundary
Apps may send into CX22073JW helper logic:
- profile identifiers
- current measurement values
- current intake values
- target nutrient lists
- filter conditions
- meal slot choices

These are runtime inputs only.
They do not become stored foundation state.

## 3. Output Boundary
CX22073JW may return:
- reference values
- compare labels
- scores
- total band labels
- candidate foods/recipes
- detail breakdown for explanation

Apps should receive these as reusable logic outputs.

## 4. App-Side Responsibility
Apps remain responsible for:
- storing user measurements
- storing intake history
- storing recommendation sessions
- storing final selected recipes/meals
- storing user-facing timeline/history

## 5. Integration Examples

### 5-1. BodyMetrics
Input:
- profile_code
- metric_code
- input_value
- condition_code

Output:
- score / band / label / comments

### 5-2. MealPlanner
Input:
- profile_code
- actual intake
- deficit nutrient array
- allergen/tag/price filters
- meal slot

Output:
- food candidates
- recipe candidates
- nutrient contribution detail

### 5-3. CareerLaunch future reusable template side
Input:
- document target type
- style/rubric selection
- template request context

Output:
- reusable template/reference guidance

Runtime workspace state stays outside CX22073JW.

## 6. Boundary Rule
The line is:

- CX22073JW = reusable reference logic layer
- app = runtime storage and final user interaction state layer

## 7. Conclusion
Integration must preserve this boundary to keep CX22073JW clean as a foundation system.
