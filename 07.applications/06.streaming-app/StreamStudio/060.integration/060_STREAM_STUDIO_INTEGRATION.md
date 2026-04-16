# ============================================================
# STREAM STUDIO INTEGRATION
# ============================================================

status: upgraded-draft
layer: integration
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the integration boundary of StreamStudio.

# 1. STREAMINGOS CONNECTION

StreamStudio must connect to StreamingOS for:
- canonical asset references
- publication truth
- approval truth
- rights and review truth
- monetization linkage truth
- canonical notification generation

# 2. CIVILIZATION MARKETPLACE CONNECTION

StreamStudio must connect to Civilization Marketplace for:
- marketplace listing creation
- listing update
- listing activation / delisting
- commerce category mapping
- access mode reflection
- creator-facing sales reference visibility

# 3. MEMBERSHIP / ENTITLEMENT CONNECTION

StreamStudio must connect to membership and entitlement surfaces for:
- membership program activation
- tier visibility
- content access rule reflection
- member reference visibility
- entitlement audit reconstruction

# 4. EXTERNAL PUSH CONNECTION

External push must be connector-isolated.

Initial target policy:
- StreamingOS publish is primary
- Civilization Marketplace listing is commerce primary
- YouTube push is extension
- other push targets remain reserved for later

# 5. BILLING BOUNDARY

StreamStudio manages creator-side pricing intent,
membership configuration, and access policy binding.

It does not become the final accounting ledger.

Downstream billing / marketplace systems may own:
- payment capture
- refund execution
- tax execution
- final entitlement settlement

# 6. INTEGRATION FIXED STATEMENT

StreamStudio shall integrate with StreamingOS as creator-side
production surface and with Civilization Marketplace
as creator-side commerce surface,
while clearly preserving canonical StreamingOS truth,
marketplace commerce separation,
membership rule governance,
and connector-isolated external push behavior.
