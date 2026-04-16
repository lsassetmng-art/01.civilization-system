# ============================================================
# VIEWMODEL REPOSITORY DB DEVELOPMENT PLAN
# ============================================================

status: canonical
layer: development
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines development order for ViewModel / Repository / DB skeletons.

recommended_order:
1. local entity definitions
2. DAO / local access definitions
3. repositories for forecast/proposal/profit core
4. ViewModels for core screens
5. Pro cache entities
6. Pro repositories
7. Pro ViewModels

priority:
Core local draft chain first.
Governed Pro extensions after stable local persistence.
