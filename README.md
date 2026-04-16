<div align="center">
  <h1>🔌 BH-DisconnectReason</h1>
  <p><em>A seamless utility to intercept and format player disconnect messages gracefully in QBCore.</em></p>
  
  ![FiveM](https://img.shields.io/badge/FiveM-Approved-success?style=for-the-badge&logo=fivem)
  ![QBCore](https://img.shields.io/badge/QBCore-Framework-blue?style=for-the-badge)
</div>

<hr>

## 📖 Overview

**BH-DisconnectReason** parses the standard and often confusing generic GTA V server disconnect codes and translates them into styled, localized, and understandable text strings.

## ✨ Key Features & Deep Dive

- 📝 **Beautiful Message Formatting**: The script has a built-in translational wrapper `Config.Translation` that applies default GTA V chat color codes (`~b~`, `~y~`, `~r~`) allowing you to style exactly how your disconnect feeds appear.
- ⚙️ **Custom Translations**: Map server timeouts, direct crashes, or hard-exists gracefully into simpler language directly using the config array (`Config.Reasons`).
- 🪶 **Stateless & Lightweight**: The entire handler works via standalone event hooks with absolutely zero persistent active loops, ensuring an idle overhead of 0.00ms constantly.

## 📦 Dependencies

- [qb-core](https://github.com/qbcore-framework/qb-core)

## 🚀 Installation

1. Download the resource from GitHub.
2. Extract the folder and ensure its name is `BH-DisconnectReason`.
3. Drop the folder into your server's `resources` directory.
4. Add `ensure BH-DisconnectReason` to your `server.cfg`.

## ⚙️ Configuration Snippet

```lua
Config.Translation = function(source, name, reason)
    return 'PLAYER ~b~[~y~'..source..'~b~] \n~b~'..name..'~s~ HAS LEFT THE SERVER\n~o~REASON~s~: ~r~'..reason;
end

Config.Reasons = {
    ['timed out'] = 'Timed Out',
    ['crash'] = 'Crashed',
    ['Exiting'] = 'Quitted',
}
```

## 💬 Support & Feedback

If you encounter any issues or have suggestions, please open an **Issue**.

---
<div align="center">
  Created with ❤️ by <b>SPOO</b>
</div>
