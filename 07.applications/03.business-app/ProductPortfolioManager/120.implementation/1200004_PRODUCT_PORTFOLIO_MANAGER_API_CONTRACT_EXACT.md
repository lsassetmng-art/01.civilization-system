# ============================================================
# PRODUCT PORTFOLIO MANAGER API CONTRACT EXACT
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Fix exact API route set and contract ownership
for the first implementation boundary.

api_principles:
- additive only
- request / response payloads are fixed explicitly
- ERP truth is referenced, not silently mutated
- forecast values are advisory references
- locale and currency context must be explicit where relevant

# ============================================================
# 1. ROUTE SET
# ============================================================

routes:
  - method: POST
    path: /api/product-portfolio/list
    purpose: load product portfolio list

  - method: POST
    path: /api/product-portfolio/detail
    purpose: load one product portfolio detail

  - method: POST
    path: /api/product-portfolio/score/refresh
    purpose: refresh score and suggestion

  - method: POST
    path: /api/product-portfolio/classification-draft/save
    purpose: save classification draft

  - method: POST
    path: /api/product-portfolio/proposal/save
    purpose: create or update proposal

  - method: POST
    path: /api/product-portfolio/review-session/create
    purpose: create review session

  - method: POST
    path: /api/product-portfolio/review-decision/save
    purpose: save review decision

  - method: POST
    path: /api/product-portfolio/approval-request/create
    purpose: create approval request

  - method: POST
    path: /api/product-portfolio/approval-decision/save
    purpose: save approval decision

  - method: POST
    path: /api/product-portfolio/alerts/list
    purpose: load alert list

# ============================================================
# 2. STANDARD RESPONSE ENVELOPE
# ============================================================

standard_response_envelope:
  success: boolean
  code: string
  message: string|null
  data: object|null
  error:
    error_type: string|null
    error_detail: string|null
    field_errors:
      - field: string
        reason: string

# ============================================================
# 3. VALIDATION RULES
# ============================================================

validation_rules:
- company_id is required
- workspace_id is required except where globally inferred by authenticated backend context
- user_id is required for all write operations
- enum fields must reject undefined values
- currency-aware endpoints must reject blank reporting_currency_code where required
- date ranges must reject start_date > end_date
- approval-decision-save must reject decisions for closed requests

# ============================================================
# 4. FIRST IMPLEMENTATION OWNERSHIP
# ============================================================

backend_responsibilities:
- input validation
- authorization
- ERP reference lookup
- metric snapshot materialization
- score persistence
- classification draft persistence
- proposal persistence
- review session and decision persistence
- approval persistence
- audit event generation

frontend_responsibilities:
- locale selection
- reporting currency selection
- device-appropriate rendering
- request assembly
- response rendering
- draft editing UX
- before/after visibility presentation

# ============================================================
# 5. AUDIT GENERATION POINTS
# ============================================================

audit_generation_points:
- classification draft submitted
- proposal status changed
- review decision saved
- approval decision saved
- share scope changed
- important source-boundary action executed

# ============================================================
# 6. PHASE-1 REQUIRED ROUTES
# ============================================================

phase_1_required_routes:
- /api/product-portfolio/list
- /api/product-portfolio/detail
- /api/product-portfolio/score/refresh
- /api/product-portfolio/classification-draft/save
- /api/product-portfolio/proposal/save

phase_2_required_routes:
- /api/product-portfolio/review-session/create
- /api/product-portfolio/review-decision/save
- /api/product-portfolio/approval-request/create
- /api/product-portfolio/approval-decision/save
- /api/product-portfolio/alerts/list
