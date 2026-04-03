Wallpaper Switcher (Rofi)

A simple wallpaper browser and switcher for Wayland using Rofi.

The script lets you navigate through folders and select wallpapers from a menu.
When an image is selected, it can be set as the wallpaper using swww.

Features

- 📂 Browse wallpaper folders directly from Rofi
- 🖼 Preview icons for images
- 🔙 Folder navigation with Back
- ⚡ Fast wallpaper switching using swww
- 🐚 Lightweight bash script

Requirements

Make sure the following tools are installed:

- "rofi"
- "swww"

Example (Arch / CachyOS):

sudo pacman -S rofi swww

Installation

Clone the repository:

git clone https://github.com/yourusername/wallpaper-switcher.git
cd wallpaper-switcher

Make the script executable:

chmod +x wallpaper-switcher.sh

Configuration

Edit the script and change the wallpaper directory:

dir="$HOME/Pictures/Wallpapers"

Replace it with the folder where your wallpapers are stored.

Usage

Run the script:

./wallpaper-switcher.sh

Then:

1. Navigate through folders
2. Select an image
3. Choose set to apply it as wallpaper

Notes

- Designed for Wayland with "swww"
- Works best with icon-enabled Rofi themes
- Supports common image formats:
  - ".jpg"
  - ".jpeg"
  - ".png"
  - ".gif"
  - ".webp"
