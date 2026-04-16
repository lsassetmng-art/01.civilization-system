# ============================================================
# STREAMING OS RECOMMENDATION AND SEARCH INTEGRATION
# ============================================================

status: canonical-draft
system: streaming-os
domain: recommendation-and-search-integration
owner: Boss
prepared_by: Zero

# ============================================================
# 1. INTEGRATION PURPOSE
# ============================================================

This integration defines how viewer discovery surfaces
consume recommendation and search outputs.

# ============================================================
# 2. PRIMARY RESPONSIBILITIES
# ============================================================

The recommendation and search integration is responsible for:
- retrieving recommendation feed contexts
- retrieving search result contexts
- preserving home/discovery/search distinctions
- passing viewer scope where required
- receiving ranked or matched result references

# ============================================================
# 3. NON-RESPONSIBILITIES
# ============================================================

The integration does not replace:
- canonical home feed state
- canonical search history
- canonical watch history
- canonical ranking records

# ============================================================
# 4. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS remains the canonical source
for viewer-side discovery,
search-history,
and continuity meaning.

Integration may provide recommendation and search outputs,
but may not replace the distinct platform meanings
of home,
discovery,
and explicit search.

