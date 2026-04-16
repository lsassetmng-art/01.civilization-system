# ============================================================
# EXPANDED SCREEN INVENTORY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the expanded screen inventory after feature expansion review.

# ============================================================
# 1. CORE SCREENS
# ============================================================

core_screens:
- Dashboard
- Forecast List
- Forecast Editor
- Action Idea Board
- Proposal Draft Builder
- Profit Preview
- Forecast Detail
- History
- Settings

# ============================================================
# 2. PRO / GOVERNED SCREENS
# ============================================================

pro_governed_screens:
- Share Target
- Pro Approval Submission

# ============================================================
# 3. NEWLY EXPANDED SCREENS OR SUB-SURFACES
# ============================================================

expanded_surfaces:
- Scenario Switched Proposal Surface
- Proposal Basis Panel Surface
- Internal Explanation Draft Surface
- Explainable Profit Surface
- Internal Response Tracking Surface
- Market Event Input Surface
- Proposal Template Selection Surface
- Content Recommendation Surface

# ============================================================
# 4. SCREENIZATION RULE
# ============================================================

screenization_rule:
Not every expanded surface must become a fully independent screen.

default_rule:
- if the function is tightly coupled to proposal editing,
  embed it inside Proposal Draft Builder
- if the function is tightly coupled to profit review,
  embed it inside Profit Preview
- if the function is tightly coupled to handoff readiness,
  embed it inside Forecast Detail or Pro Approval Submission
- only create a fully separate screen when the surface becomes
  too dense for embedded operation

# ============================================================
# 5. CURRENT RECOMMENDED PLACEMENT
# ============================================================

recommended_placement:

Proposal Draft Builder:
- scenario switched proposal
- proposal template selection
- content recommendation
- proposal basis panel
- internal explanation draft

Profit Preview:
- explainable profit surface

Forecast Detail:
- internal response tracking summary
- proposal basis summary
- market event summary

Forecast Editor:
- market event input entry point

Pro Approval Submission:
- internal response tracking governed handoff state
