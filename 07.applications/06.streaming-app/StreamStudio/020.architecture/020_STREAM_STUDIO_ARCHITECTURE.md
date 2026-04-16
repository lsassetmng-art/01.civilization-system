# ============================================================
# STREAM STUDIO ARCHITECTURE
# ============================================================

status: upgraded-draft
layer: architecture
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the logical architecture of StreamStudio.

# 1. ARCHITECTURAL POSITION

StreamStudio is an application under 07.applications.
It is connected to StreamingOS canonical records,
Civilization Marketplace commerce surfaces,
and downstream entitlement / billing execution surfaces.

# 2. PRIMARY DOMAINS

1. Creator Workspace
   - dashboard
   - notification summary
   - draft summary
   - project entry points

2. Upload Intake
   - resumable upload
   - ingest state
   - processing visibility
   - failure and retry visibility

3. Draft Asset Preparation
   - metadata
   - thumbnail
   - subtitle
   - trim / cut marker
   - version awareness

4. Review and Approval
   - review comments
   - revision requests
   - approval requests
   - decision trail

5. Publish Orchestration
   - visibility
   - schedule
   - destination selection
   - publish request execution

6. Commerce and Marketplace
   - marketplace listing draft
   - paid access offer
   - access policy binding
   - sale state
   - listing publication

7. Membership Management
   - membership program
   - membership tier
   - membership benefit
   - members-only content rules
   - membership release rules

8. External Push Extension
   - target platform binding
   - validation
   - push dispatch
   - retry / dead-letter handling

9. Collaboration and Communication
   - thread
   - memo
   - assignment
   - role scope
   - due control

10. Revenue Split Governance
    - split draft
    - fixed fee
    - percentage split
    - negotiation log
    - settlement reference visibility

# 3. PERMISSION MODEL

Permissions must be scope-based.

Recommended scopes:
- workspace scope
- project scope
- asset scope
- publish scope
- listing scope
- membership scope
- split scope

Recommended action groups:
- view
- upload_asset
- edit_metadata
- manage_thumbnail
- manage_subtitle
- comment
- request_revision
- request_approval
- approve
- publish
- manage_marketplace_listing
- manage_paid_offer
- manage_membership_program
- manage_membership_tier
- manage_external_push
- manage_split
- manage_fixed_fee
- admin_override

# 4. STATE MACHINES

Video draft state:
- draft
- metadata_ready
- review_required
- in_review
- approval_pending
- publish_ready
- scheduled
- published
- failed
- archived

Marketplace listing state:
- draft
- validation_pending
- approval_pending
- ready
- listed
- delisted
- blocked
- archived

Membership program state:
- draft
- review_pending
- active
- paused
- ended
- archived

Paid access offer state:
- draft
- ready
- active
- ended
- superseded
- archived

# 5. ARCHITECTURAL FIXED STATEMENT

StreamStudio shall be designed as a creator operations cockpit
and creator commerce cockpit,
while clearly preserving StreamingOS canonical truth,
marketplace listing separation,
membership rule governance,
approval traceability,
and external push separation.
