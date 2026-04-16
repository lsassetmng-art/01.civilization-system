# ============================================================
# JAVA SKELETON GUIDE
# ============================================================

status: canonical-draft
layer: development
application: App Development Studio

recommended_order:
1. api.common
2. domain.model
3. domain.policy / domain.runtime
4. infrastructure.persistence
5. application.request / readiness / proposal
6. application.review / apply / sql / git
7. ui.screen.*

notes:
This order minimizes circular confusion during MVP implementation.
