# ============================================================
# POCKETSECRETARY RUNTIME INTEGRATION
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary


PURPOSE

Define integration between PocketSecretary
and visual-runtime.


RESPONSIBILITY

PocketSecretary

select persona
select background
request render
display result


visual-runtime

parse manifest
resolve layers
fetch assets
compose bitmap
render output


RULE

PocketSecretary must not implement
its own composition engine.

visual-runtime is the only renderer.

