#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CAROUSEL_SRC="$SCRIPT_DIR/_source-images/carousel"
LOGOS_SRC="$SCRIPT_DIR/_source-images/logos"
OUT_BASE="$SCRIPT_DIR/Art Book Next"

RESOLUTIONS=("640x480" "720X480" "720x720" "960x720" "1280x720" "1024x768" "750x560" "480x320")
HEIGHTS=(480 480 720 720 720 768 560 320)

carousel_count=0
logo_count=0

for i in "${!RESOLUTIONS[@]}"; do
  res="${RESOLUTIONS[$i]}"
  height="${HEIGHTS[$i]}"
  selected_dir="$OUT_BASE/$res/selected"
  root_dir="$OUT_BASE/$res"
  logos_dir="$OUT_BASE/$res/logos"

  mkdir -p "$selected_dir" "$logos_dir"

  echo "Processing $res (height: $height)..."

  # Action 1: carousel → selected/ (full opacity, nearest-neighbor)
  for src in "$CAROUSEL_SRC"/*.png; do
    filename="$(basename "$src")"
    magick "$src" -filter point -resize "x${height}" "$selected_dir/$filename"
  done

  # Action 2: carousel → root resolution folder (40% opacity, nearest-neighbor)
  for src in "$CAROUSEL_SRC"/*.png; do
    filename="$(basename "$src")"
    magick "$src" -filter point -resize "x${height}" \
      -alpha set -channel Alpha -evaluate multiply 0.4 +channel \
      "$root_dir/$filename"
  done

  # Action 3: logos → logos/
  for src in "$LOGOS_SRC"/*.png; do
    filename="$(basename "$src")"
    magick "$src" -resize "x${height}" "$logos_dir/$filename"
  done
done

carousel_count=$(ls "$CAROUSEL_SRC"/*.png 2>/dev/null | wc -l | tr -d ' ')
logo_count=$(ls "$LOGOS_SRC"/*.png 2>/dev/null | wc -l | tr -d ' ')
echo "Done. Processed $carousel_count carousel images and $logo_count logos across ${#RESOLUTIONS[@]} resolutions."
