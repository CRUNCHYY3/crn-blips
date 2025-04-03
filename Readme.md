# Custom Blips Script for FiveM

This script allows you to create custom blips on the map for your FiveM server. It is designed to work with the **qb-core** framework.

---

## Features
- Add custom blips to the map with ease.
- Configure blip properties such as name, sprite, color, scale, and coordinates.

---

## Installation

1. **Download the Script**  
   - Download the `crn-blips` resource folder.

2. **Add to Your Server**  
   - Place the `crn-blips` folder in your `resources` directory.

3. **Add to `server.cfg`**  
   - Add the following line to your server.cfg

        ensure crn-blips

4. **Configure Blips**  
   - Open the `config.lua` file and add or modify blip configurations as needed.


## Blip Properties

`Name`: The name of the blip (displayed on the map).
`Sprite`: The blip sprite ID. You can find them here https://docs.fivem.net/docs/game-references/blips/
`Color`: The blip color ID. You can also find them here https://docs.fivem.net/docs/game-references/blips/
`Scale`: The size of the blip (e.g., 0.8 for medium size).
`Coords`: The coordinates of the blip, use vector3 (/vector3) in game command.


## Dependencies

- qb-core

## Support

if you need any support or have questions, feel free to reach out on Discord:

Discord: crunchyy3"# crn-blips" 
