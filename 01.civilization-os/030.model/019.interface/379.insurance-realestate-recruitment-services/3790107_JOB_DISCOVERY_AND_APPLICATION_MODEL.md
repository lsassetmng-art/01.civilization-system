# ============================================================
# JOB DISCOVERY AND APPLICATION MODEL
# ============================================================

status: canonical
layer: model
scope: insurance-realestate-recruitment-services
component: job-discovery-and-application

owner: Boss
prepared_by: Zero


# ============================================================
# 1. JOB TYPES
# ============================================================

job_types:
- full_time
- part_time
- contract
- temporary
- internship
- public_service
- institution_role


# ============================================================
# 2. APPLICATION STATES
# ============================================================

application_states:
- draft
- submitted
- under_review
- interview_stage
- accepted
- rejected
- withdrawn


# ============================================================
# 3. FINAL RULE
# ============================================================

Recruitment service must distinguish
between browsing labor demand
and committing to application flow.
