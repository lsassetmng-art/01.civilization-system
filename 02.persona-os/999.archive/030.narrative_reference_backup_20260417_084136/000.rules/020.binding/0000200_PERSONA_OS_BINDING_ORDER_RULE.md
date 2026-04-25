# ============================================================
# PERSONA OS BINDING ORDER RULE
# ============================================================

status: canonical
layer: rules
domain: binding
system: persona-os
owner: Boss
prepared_by: Zero

rule:
Binding output must follow fixed layer order,
then fixed domain order,
then filename sort.

file_order_inside_domain:
index first
overview second
remaining files in filename sort

exclude_from_main_binding:
920.meta
999.archive/930.legacy
999.archive
999.archive/999.dump
*.moved.bak
