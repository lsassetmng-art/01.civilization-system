# ============================================================
# STREAM STUDIO FROZEN DECISION MASTER REGISTER
# ============================================================

status: decision-register
layer: implementation-decision
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Collects the highest-level StreamStudio decisions that are already frozen.

# ============================================================
# 1. APP IDENTITY DECISIONS
# ============================================================

identity_decisions:
- StreamStudio is the creator production and publishing app of StreamingOS
- StreamStudio is not only an uploader
- StreamStudio includes creator-side publish, commerce-entry, membership, and later connector operations scope by phase
- StreamStudio remains app-specific in this chat

# ============================================================
# 2. ARCHITECTURE DECISIONS
# ============================================================

architecture_decisions:
- publish and listing are distinct state families
- membership is distinct from one-time paid offer
- split and settlement visibility are distinct from marketplace execution
- runtime jobs are first-class records
- audit events are first-class append-only records
- permission and blocker visibility are explicit

# ============================================================
# 3. PHASE ORDER DECISIONS
# ============================================================

phase_order_decisions:
- phase 1 = creator asset preparation and publish base
- phase 2 = review, approval, notification execution
- phase 3 = marketplace and paid video execution
- phase 4 = membership and entitlement execution
- phase 5 = collaborator authority refinement, split, settlement visibility
- phase 6 = external push and operations hardening

# ============================================================
# 4. IMPLEMENTATION-STATUS DECISIONS
# ============================================================

implementation_status_decisions:
- implementation has not started
- real SQL apply has not started
- design bundles may be apply-ready but are not evidence of real execution
- this chat remains design-only

# ============================================================
# 5. CHAT-SCOPE DECISIONS
# ============================================================

chat_scope_decisions:
- common-component finalization is outside this chat
- StreamStudio-only scope is the rule here
- future chats should start from summary and handoff packs, not from scratch

# ============================================================
# 6. MASTER FIXED STATEMENT
# ============================================================

fixed_statement:
The decisions above are frozen and should be treated as the master truth
for StreamStudio in this chat context.
