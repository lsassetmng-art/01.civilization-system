# ============================================================
# CREATOR VIEWER WORDING TIGHTENING CONSOLIDATION
# ============================================================

status: canonical-refinement
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Consolidates wording-tightening points for K3 creator-viewer-essential.

tightening_points:

creator_control_plane_boundary:
- creator-side draft, upload-preparation, settings, and analytics remain control-plane or owner-facing projection objects
- creator control-plane objects must never be treated as viewer-facing public continuity objects
- creator-side objects may appear in creator screens only through authorized creator/control-plane paths

viewer_continuity_privacy:
- watch history remains self-private by default
- search history remains self-private by default
- watch queue remains self-private by default
- follow state remains self/private continuity state unless later projected safely in specialized views

playlist_identity:
- playlist is a named and optionally shareable collection object
- watch queue is an immediate continuity ordering object
- playlist sharing must not be interpreted as watch queue sharing

analytics_discovery_boundary:
- creator analytics remains creator/authorized-actor projection only
- viewer discovery remains public/projection-safe recommendation or search output only
- discovery output must not expose creator-private, oversight-only, or internal performance metrics

support_path_wording:
- support-path access remains exceptional and audit-linked
- support-path access must not silently widen creator or viewer ordinary authority
