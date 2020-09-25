<!-- badges -->

![Pipeline Publishing Status][badge-publish-status]

<!-- intro -->
<br />
<h3 align="center">55 Hudson Yards</h1>

<p align="center">Hudson an map for Urban Terror 4</p>

<p align="center">
    <strong><a href="#about">Read the documentation</a></strong>
    ·
    <strong><a href="//github.com/fleuv/ut4_hudson/issues/new">Submit an issue</a></strong>
    ·
    <strong><a href="#contributing">Start contributing</a></strong>
</p>

## Table of Contents

- [About](#about)
- [Contributing](#contributing)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Submitting](#submitting)
- [Changelog](#changelog)
  - [Beta 3](#beta-3)
  - [Beta 2](#beta-2)
- [License](#license)
- [Contact](#contact)

## About

55 Hudson Yards is an map based on the a real architecture concept, the map supposes to be modern and stylish map for small to medium player sized matches.

To get a local copy just download one the [latest releases][latest-release] and move it to your `q3ut4` folder before you start the game.

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**. Please continue on reading to get started with contributing.

### Prerequisites

To get started with your contributions you should install a "radiant editor" such as [GtkRadiant][gtkradiant] or [NetRadiant][netradiant]. Also make sure you setup a clean development environment, which means that you setup a fresh installation of the game which is only used for development.

### Installation

To start working on this map, you should follow these steps:

1. Clone the repository to your workspace.
2. Open a terminal in the root of the workspace folder and execute the following command:
   ```sh
   ./install.sh ABS_PATH_TO_Q3UT4
   ```
   Where `ABS_PATH_TO_Q3UT4` is equal to the absolute path to your `q3ut4` folder of the game used for development.
4. Open up your radiant editor and start building!

Keep in mind that not all new files added to your workspace will be added to the `q3ut4` folder, because they're linked thanks to the `install.sh` script. Which means only contents in folders such as `textures/ut4_hudson/*` will be added.

### Submitting

To submit a contribution please consider the process described in the following list:

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Changelog

All changes for each release are logged here

### Beta 3

- Connected the hallway to the garage.
- Added divider wall to the lounge room.
- Added func_wall for toilets when gametype is TS or BOMB.
- Added clipping to benches.
- Added clipping to ceiling lights.
- Added pickup truck to the garage.
- Added A & B TS spawn groups.
- Slightly changed main spawn groups their location.
- Restructured the garage to be smaller.
- Relocated the flags and bomb spots.
- Replaced author name to levelshot instead of worldspawn message.

### Beta 2

- Fixed toilet mirrors facing each other.
- Enlarged the amount of space in the toilet.
- Opened an elevator and added the elevator shaft room.
- Added the hallway what connects with the stairs and the elevator shaft.
- Added the garage what connects to the new hallway.
- Removed secondary group spawn.

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contributors

Fleuv - [@fleuv](//github.com/Fleuv)

## Additional credits

- id Software ~ For making Q3.
- Silicon Ice Development/Frozen Sand LLC ~ For making Urban Terror and so strongly supporting the UT community.
- https://www.kpf.com/projects/55-hudson-yards/ ~ for the levelshot, inspiration and a source for textures.
- https://oneluxstudio.com/portfolio/55-hudson-yards-lobby/ ~ for inspiration and a source for textures.

<!-- links & images -->

[latest-release]: //github.com/fleuv/ut4_hudson/releases/latest
[gtkradiant]: //icculus.org/gtkradiant/
[netradiant]: //github.com/Garux/netradiant-custom
[badge-publish-status]: https://img.shields.io/github/workflow/status/fleuv/ut4_hudson/publish
