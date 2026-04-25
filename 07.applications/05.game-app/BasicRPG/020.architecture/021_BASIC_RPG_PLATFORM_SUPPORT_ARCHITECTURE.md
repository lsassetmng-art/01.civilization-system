# ============================================================
# BASIC RPG PLATFORM SUPPORT ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

platform_strategy:
- primary product surface: responsive web application
- installable mode: PWA-capable where store policy allows
- Android shell: WebView/wrapper or later native shell
- iPhone/iPad: mobile web first, later wrapper if policy/business requires
- PC/tablet: browser-first

platform_requirements:
- touch-first controls on phone/tablet
- keyboard shortcuts on PC
- resolution adaptation without logic branching
- shared account session and cloud save
- asset quality tiers for low/high bandwidth

compatibility_rules:
- battle UI must remain readable in portrait and landscape
- store/purchase UI must respect platform billing rules
- push notifications must degrade gracefully where unavailable
