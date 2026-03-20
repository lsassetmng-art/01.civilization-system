# ============================================================
# LAW EDITOR ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Law editor allows structured law creation and modification.

editing_model:
- template_based
- toggle_based
- slider_based
- bounded parameter editing

forbidden_model:
- unrestricted arbitrary executable law text

principle:
- law must remain machine-valid
- player can customize law within structured boundaries
