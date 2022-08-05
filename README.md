## A Conky themes pack in 4 variants:

- Light
- Light & Minimal
- Dark
- Dark & Minimal

### Credits
Shelyak theme by [CloseBox73](https://github.com/closebox73), available at Pling.com: [Link](https://www.pling.com/p/1839849/).

### In this fork...
I added two (light and dark) more informative, less minimal, conky configurations, including:

- kernel info
- uptime
- CPU freq.

- sunrise
- sunset

The media player I use is `VLC`, thus I modified the original scripts to get playing info from VLC's built-in web interface. You need to:

- enable the web interface:
![](/assets/vlc_main_interfaces.png)
- enter a password (the script is trivially using `test`):
![](/assets/vlc_lua-http.png)

---

## Previews
### Shelyak theme
Light Version
![](/Shelyak/previews/light.png)
Light & Minimal Version
![](/Shelyak/previews/light_minimal.png)
Dark Version
![](/Shelyak/previews/dark.png)
Dark & Minimal Version
![](/Shelyak/previews/dark_minimal.png)

---

## Requirements
- Conky version 1.10.8 or newer ( open this  [Link](https://github.com/brndnmtthws/conky) for instalation )
- For the weather theme I download the data using `curl` in json format, and use `jq` to process the data, please install first.
- The start script uses `zenity` to generate a simple selection GUI.

I tested this conky configurations on a laptop running `Linux Mint 20.3 Una` (cinnamon edition). 

## How to use theme
- Clone this repo issuing:
  ```bash
  git clone https://github.com/closebox73/Leonis.git
  ```
- Move desired folders into `~/.config/conky/`
- Open a folder that will be used and Install all font in fonts folder then update the font cache
- For the weather part to work properly, you must have an API KEY and a city id (you can get it [Here](https://openweathermap.org) and fill `weather.sh` in the `scripts` folder)
- Execute `start.sh`
