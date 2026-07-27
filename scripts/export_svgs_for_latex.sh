#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

shopt -s nullglob
for svg_path in "$project_dir"/figures/*.svg; do
  base_name="$(basename "$svg_path" .svg)"
  pdf_path="$project_dir/${base_name}_svg-raw.pdf"

  if [[ ! -f "$pdf_path" || "$svg_path" -nt "$pdf_path" ]]; then
    inkscape "$svg_path" \
      --export-area-drawing \
      --export-type=pdf \
      --export-filename="$pdf_path"
  fi
done
