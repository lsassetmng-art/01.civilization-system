# ============================================================
# NAMECARD PUBLICATION PREFLIGHT GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for publication preflight.

implementation_rules:
- run preflight before publication request submission
- separate blocking validation from warnings
- preview publishable payload before request handoff
- preserve approval/publication distinction

