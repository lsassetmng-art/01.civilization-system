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

