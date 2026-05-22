## Inheritance for theme.cfg idea

thinking it could be helpful for creators that make themes for multi resolution to be able to define a theme.cfg in the root folder of the theme and then theme.cfg files in each resolution folder that get added to the root defs.  that would allow one place for global defs and then allow per resolution overrides or additions.

for Art Book Next these settings look global across all resolutions...
```
theme_name=Art Book Next
creator=Ant

# Main Menu (home screen)
main_menu_view=gallery
main_menu_names=on
main_menu_logos=on
main_menu_fit=native
main_menu_overlap=15
main_menu_num_side=2

# Game List (inside systems, collections, favorites)
gamelist_view=list

# Global
font=Mulish-Medium
accent=444444
color_bg=111111
color_text=ffffff
color_label=aaaaaa
color_popup=222222
selection=pill
selected_text=white
square_pills=off
boxart_radius=4
```

and these are resolution specific
```
# Main Menu (home screen)
main_menu_overlap=15
main_menu_num_side=2
```

## Ideas for TAG updates

```
(A800) - Atari 800
(A2600) - Atari 2600
(A5200) - Atari 5200
(A7800) - Atari 7800
(COLECO) - ColecoVision
(CPC) - Amstrad CPC
(DOOM) - Doom
(FBN) - Final Burn Neo
(FC) - Nintendo Famicom
(GB) - Nintendo Game Boy
(GBA) - Nintendo Game Boy Advance
(GBC) - Nintendo Game Boy Color
(GEN) - Sega Genesis
(GG) - Sega Gamegear
(GW) - Nintendo Game & Watch
(LYNX) - Atari Lynx
(MAME) - MAME
(MD) - Sega Megadrive
(MEGACD) - Sega Mega CD
(MSX) - MSX
(NDS) - Nintendo DS
(NEOGEO) - Neo Geo
(NEOGEOCD) - Neo Geo CD
(NES) - Nintendo NES
(NGP) - Neo Geo Pocket
(NGPC) - Neo Geo Pocket Color
(PCE) - NEC PC Engine
(PCECD) - NEC PC Engine CD
(PICO8) - Pico-8 (do you still need fake-08?)
(PKM) - Nintendo Pokemon Mini
(PSX) - Sony Playstation
(SEGACD) - Sega CD
(SFC) - Nintendo Super Famicom
(SGB) - Nintendo Super Game Boy
(SGFX) - NEX SuperGrafx
(SMS) - Sega Master System
(SNES) - Nintendo SNES
(TG16) - NEC TurboGrafx-16
(TGCD) - NEC Turbo CD
(VB) - Nintendo Virtual Boy
(VEC) - Vectrex
(WS) - Bandai Wonderswan
(WSC) - Bandai Wonderswan Color
(WSV) - SuperVision
(X68) - x6800
(ZXS) - ZX Spectrum
```

## selected_text

why only white/black as options?

## Preview images

are preview images aspect ratio dependent as well? 
would a preview for 1280x720 show in 16:9 aspect ratio?

## color_bg

would be nice to be able to set different color_bg for main vs gamelist.  in art book next i use black for main and a dark gray for gamelist and for now i am using an background-main.png to accomplish this (which also works)

## Collections.png

Noticed that this only displays if its Collections.png, it does not work if its all lowercase collections.png