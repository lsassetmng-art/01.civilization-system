# CX22073JW Seasonal / Annual Event / Timing Area
- project: CX22073JW
- document_type: data-area-design
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This area manages seasonality, annual events, timing windows, and timing-related tags.

## 2. Main Role
- season vocabulary
- annual event vocabulary
- region-season bindings
- timing windows
- seasonal tags

## 3. Candidate Tables
- `season_master`
- `annual_event_master`
- `region_season_binding`
- `timing_window_reference`
- `seasonal_tag_master`

## 4. Main Consumers
- MealPlanner
- LifePlanner
- EndOfLifePlanner

## 5. Why It Belongs in CX22073JW
Season and timing references can be reused broadly and improve recommendation/context quality.

## 6. Priority
Medium
