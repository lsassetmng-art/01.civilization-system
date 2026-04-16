# ============================================================
# QUICK FORECAST COMMON COMPONENT ADOPTION REGISTRY
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines which common components QuickForecast uses,
which components are planned candidates,
which are not primary fits,
and which new common components QuickForecast can supply.

# ============================================================
# 1. ADOPTION STATUS LEGEND
# ============================================================

adoption_status_legend:
- adopted_now
- planned_later
- candidate_only
- not_primary_fit
- supplied_by_quickforecast_candidate

# ============================================================
# 2. ADOPTED NOW
# ============================================================

adopted_now:

- component:
  Draft / Work-in-progress Common
  status: adopted_now
  reason:
  QuickForecast is fundamentally a draft-heavy application.
  Forecast drafts, action drafts, proposal drafts,
  and profit preview drafts are all central.

- component:
  Template / Generated Output Common
  status: adopted_now
  reason:
  QuickForecast converts forecast thinking into proposal-oriented output.
  Generated business draft support is core.

- component:
  Submission Common
  status: adopted_now
  reason:
  QuickForecast Pro must distinguish local draft save
  from governed submission / enterprise-linked progression.

- component:
  Approval / Review Surface Common
  status: adopted_now
  reason:
  QuickForecast Pro requires explicit review,
  approval request, approval waiting, and return handling.

- component:
  Online Sync Common
  status: adopted_now
  reason:
  QuickForecast Pro must preserve synchronized state
  for shared, approved, and submitted work.

- component:
  App-internal Sharing Common
  status: adopted_now
  reason:
  Proposal drafts and forecast-derived outputs
  are natural sharing objects.

- component:
  Activity Log / Audit Trail Common
  status: adopted_now
  reason:
  Generated, edited, shared, approved, and handed-off actions
  need attributable history in QuickForecast Pro.

- component:
  External Notification Delivery Common
  status: adopted_now
  reason:
  Approval, return, and handoff notifications
  are naturally required in QuickForecast Pro.

- component:
  Channel Routing Common
  status: adopted_now
  reason:
  Notifications and enterprise-linked routing
  should not be app-hardcoded.

- component:
  ERP Publication Capability
  status: adopted_now
  reason:
  QuickForecast must support governed ERP-linked handoff/publication capability
  without positioning itself as ERP replacement.

# ============================================================
# 3. PLANNED LATER
# ============================================================

planned_later:

- component:
  Contact / Destination Common
  status: planned_later
  reason:
  Useful for proposal targets, share targets,
  review targets, and handoff destinations.

- component:
  Attachment / Evidence Common
  status: planned_later
  reason:
  Useful for forecast basis materials,
  supporting documents, and proposal evidence.

- component:
  Business AI Worker
  status: planned_later
  reason:
  Strong fit for proposal drafting assistance,
  summary assistance, and wording support,
  but should remain assistive, not authoritative.

- component:
  Summary / Digest Common
  status: planned_later
  reason:
  Useful for forecast summary,
  proposal summary, and profit preview summary.

- component:
  Reminder Common
  status: planned_later
  reason:
  Useful for pending review,
  pending handoff, and follow-up deadlines.

- component:
  Preference Common
  status: planned_later
  reason:
  Useful for default template settings,
  display preferences, and drafting defaults.

# ============================================================
# 4. CANDIDATE ONLY
# ============================================================

candidate_only:

- component:
  Publish Target Confirmation Common
  status: candidate_only
  reason:
  Can be useful in selected enterprise-linked cases,
  but is not core to the QuickForecast local-first chain.

# ============================================================
# 5. NOT PRIMARY FIT
# ============================================================

not_primary_fit:

- component:
  Secretary Interaction Common
  status: not_primary_fit
  reason:
  QuickForecast is not primarily a secretary-experience application.

- component:
  VisualRuntime Common
  status: not_primary_fit
  reason:
  Persona-driven visual experience is not a QuickForecast core requirement.

- component:
  Presence / Mood Presentation Common
  status: not_primary_fit
  reason:
  Not central to a forecast-originated proposal workbench.

- component:
  Companion Conversation Framing Common
  status: not_primary_fit
  reason:
  QuickForecast is business-draft oriented,
  not a companion-first conversational application.

- component:
  Schedule / Time-slot Planning Common
  status: not_primary_fit
  reason:
  Schedule structuring is secondary,
  not a primary QuickForecast value center.

# ============================================================
# 6. SUPPLIED BY QUICKFORECAST CANDIDATES
# ============================================================

supplied_by_quickforecast_candidates:

- component:
  Forecast Draft Common
  status: supplied_by_quickforecast_candidate
  reason:
  Forecast hypothesis drafting and editable forecast objects
  can be reused by other business applications.

- component:
  Scenario Comparison Common
  status: supplied_by_quickforecast_candidate
  reason:
  Multi-scenario comparison is broadly reusable.

- component:
  Action Recommendation Common
  status: supplied_by_quickforecast_candidate
  reason:
  Turning forecast meaning into action candidates
  has cross-application value.

- component:
  Proposal Draft Builder Common
  status: supplied_by_quickforecast_candidate
  reason:
  Proposal generation from business context
  can serve many applications.

- component:
  Profit Preview Common
  status: supplied_by_quickforecast_candidate
  reason:
  Revenue / cost / profit image generation
  has strong reuse potential.

- component:
  Assumption / Basis Common
  status: supplied_by_quickforecast_candidate
  reason:
  Explicit basis tracking is widely reusable
  across planning and estimation applications.

- component:
  Generated Business Draft Common
  status: supplied_by_quickforecast_candidate
  reason:
  Editable AI-assisted business draft generation
  can be shared across multiple apps.

- component:
  Forecast-to-Proposal Trace Common
  status: supplied_by_quickforecast_candidate
  reason:
  Traceability from forecast through proposal and profit
  is a strong reusable pattern.

# ============================================================
# 7. QUICKFORECAST-SPECIFIC RESIDUAL RESPONSIBILITY
# ============================================================

quickforecast_specific_residual_responsibility:
- preserve the canonical Forecast -> Action -> Proposal -> Profit chain
- preserve ERP coexistence and non-replacement framing
- preserve QuickForecast Basic / Pro tier boundary
- preserve local save and governed action separation
- preserve proposal-oriented business value identity

# ============================================================
# 8. CONCLUSION
# ============================================================

conclusion:
QuickForecast is primarily a Business OS common-component consumer,
with several strong opportunities to supply new reusable common components
back to the application ecosystem.
