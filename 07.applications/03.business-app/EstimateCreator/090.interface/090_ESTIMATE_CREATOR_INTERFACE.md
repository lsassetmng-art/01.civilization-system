# ============================================================
# ESTIMATE CREATOR INTERFACE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY INTERFACE PRINCIPLES
# ============================================================

The interface must prioritize:

- fast field use
- clear estimate status understanding
- explicit offline awareness
- explicit publication/share/sync state awareness
- low ambiguity for premium-gated functions

# ============================================================
# 2. PRIMARY SCREEN SET
# ============================================================

Primary screens:

- login
- estimate list
- estimate detail
- estimate editor
- opportunity memo
- meeting memo
- inventory reference
- share target setting
- ERP setting
- template
- QA management
- settings

# ============================================================
# 3. STATE VISIBILITY
# ============================================================

The interface must display at minimum:

- offline banner
- pending sync badge
- share state badge
- ERP publication state badge
- inventory freshness indicator
- premium availability indicator where needed


# ============================================================
# 4. ENTRY INTERFACE BEHAVIOR
# ============================================================

EstimateCreator interface must support both:

- standalone entry UX
- deeplink entry UX

Standalone launch may show login entry when needed.

Deeplink launch should not show redundant login UI
when valid shared BusinessOS session context is already available.

# ============================================================
# 5. DEEPLINK CONTEXT VISIBILITY
# ============================================================

When opened by deeplink,
the interface may show contextual hints such as:

- opened from source app
- customer context applied
- estimate context applied
- readonly mode

These hints must not misrepresent authority or completion state.


# ============================================================
# 6. BILLING UI PRINCIPLES
# ============================================================

Premium-only capabilities should generally remain visible
but clearly locked when unavailable.

The interface should prefer:

- visible Premium badge
- visible lock state
- understandable upgrade message
- non-misleading downgrade behavior

The interface must not imply that premium-only capability
is part of the free core workflow.

# ============================================================
# 7. PREMIUM-LOCKED SURFACES
# ============================================================

Representative premium-locked surfaces include:

- structured meeting memo mode
- QA create/edit actions
- template create/edit actions
- expanded default template access

# ============================================================
# 8. DOWNGRADE UI RULE
# ============================================================

After downgrade or expiry,
existing premium-created content may remain viewable where policy permits,
but premium-only write actions must clearly appear unavailable.


# ============================================================
# 9. MULTILINGUAL / DELIVERY UI
# ============================================================

The interface must additionally support:

- locale-aware labels and messages
- customer preferred locale / currency display
- delivery actions
- delivery history display
- open log summary
- customer response summary
- sent/opened/expiring badges


# ============================================================
# 10. PHONE / TABLET UI POLICY
# ============================================================

EstimateCreator interface must support both phone and tablet layouts.

Phone UI should prioritize:
- single-column flow
- simple action grouping
- compact navigation
- one-hand operability where practical

Tablet UI should support:
- wider information density
- split-view or master-detail patterns where useful
- faster cross-section review
- reduced screen switching for detail workflows

UI layout may differ by device class,
but meaning and action rules must remain identical.

