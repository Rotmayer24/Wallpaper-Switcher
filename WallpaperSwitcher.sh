#!/bin/bash

dir="$HOME/Pictures/Wallpapers" #Your dir with Wallpapers 
current="$dir"

set_wall() {
  swww img "$1" --transition-type any --transition-duration 1
}

while true; do
  choice=$(
    {
      find "$current" -maxdepth 1 -mindepth 1 \
        \( -type d \
        -o -iname "*.jpg" \
        -o -iname "*.png" \
        -o -iname "*.jpeg" \
        -o -iname "*.gif" \
        -o -iname "*.webp" \) | while read -r file; do

        name=$(basename "$file")

        if [[ -d "$file" ]]; then
          echo -e "$name\0icon\x1ffolder"
        else
          echo -e "$name\0icon\x1f$file"
        fi

      done | sort

      echo -e "Back\0icon\x1fgo-previous"
    } | rofi -dmenu -i -show-icons -p "$current"
  )

  [[ -z "$choice" ]] && exit

  # Back
  if [[ "$choice" == "Back" ]]; then
    [[ "$current" == "$dir" ]] && continue
    current=$(dirname "$current")
    continue
  fi

  full="$current/$choice"

  if [[ -d "$full" ]]; then
    current="$full"
    continue
  fi

  action=$(
    printf "set\0icon\x1fimage\ncancel\0icon\x1fwindow-close" |
      rofi -dmenu -show-icons -p "$choice"

  if [[ "$action" == "set" ]]; then
    set_wall "$full"
   # notify-send "$choice" You can enable if you want
  fi
done
