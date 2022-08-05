## A Conky themes pack in 4 variants:

- Light
- Light & Minimal
- Dark
- Dark & Minimal

## Credits:
Shelyak theme by [CloseBox73](https://github.com/closebox73), available at Pling.com: [Link](https://www.pling.com/p/1839849/).

## In this fork:
I added two (light and dark) more informative, less minimal, conky configurations, including:

- kernel info
- uptime
- CPU freq.
- sunrise
- sunset

The media player I use is `VLC`, thus I modified the original scripts to get playing info from VLC's built-in web interface. You need to:

- enable the web interface:
![](/Shelyak/assets/vlc_main_interfaces.png)
- enter a password (the script is trivially using `test`):
![](/Shelyak/assets/vlc_lua-http.png)

---

## Previews:
### Shelyak theme
Light Version
![](/Shelyak/previews/light.png)
Light & Minimal Version
![](/Shelyak/previews/light_minimal.png)
Dark Version
![](/Shelyak/previews/dark.png)
Dark & Minimal Version
![](/Shelyak/previews/dark_minimal.png)
Close-up
![](/Shelyak/previews/close-up.png)

---

## Requirements:
- Conky version 1.10.8 or newer (open this  [Link](https://github.com/brndnmtthws/conky) for installation).
- For the weather theme I download the data using `curl` in json format, and use `jq` to process the data, please install first.
- To retrive media playing info, `xmlstarlet` is also used.
- The start script uses `zenity` to generate a simple selection GUI.

to recap:
```bash
   sudo apt install conky curl jq xmlstarlet zenity
```

I tested this conky configurations on a laptop running `Linux Mint 20.3 Una` (cinnamon edition). 

## How to use the themes:
- Clone this repo issuing:
  ```bash
  git clone git@github.com:dentex/conky_themes.git
  ```
- Open the theme folder that you want to use and install all the fonts in your user fonts folder (on Linux Mint it's under `~/.local/share/fonts`), then update the font cache.
- For the weather part to work properly, you must have an API KEY and a city id. A default KEY is provided, but you can get yours [Here](https://openweathermap.org); then modify `weather.sh` in the `scripts` folder accordingly.
- Execute `start.sh`

## Auto start-up
This may vary with every distro, but in Linux Mint you can add something like `conky -c $HOME/.config/conky/Shelyak/Shelyak_dark.conf` in the system's start-up applications GUI.
