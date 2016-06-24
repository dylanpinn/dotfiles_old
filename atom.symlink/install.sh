#!/bin/sh
test "$(which apm)" || return 0
apm upgrade --confirm false

modules="
package-sync
"

for module in $modules; do
  apm install "$module" || true
done

modules="
metrics
exception-reporting
"

for module in $modules; do
  apm remove "$module" || true
done
