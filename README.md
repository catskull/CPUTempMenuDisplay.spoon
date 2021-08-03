# CPUTempMenuDisplay.spoon
 Hammerspoon Spoon to display CPU temp in menubar

## Installation
1. Make sure that you have Hammerspoon installed.

   If it's not installed already, then use the [Getting Started with Hammerspoon](https://www.hammerspoon.org/go/) guide to learn how to install and use Hammerspoon.

2. Install [iStats ruby gem](https://github.com/Chris911/iStats)

  `gem install iStats`

3. Install this Spoon

  The easiest way to do this is to [download the ZIP version of this Spoon](https://github.com/catskull/CPUTempMenuDisplay.spoon/releases/download/1.0/CPUTempMenuDisplay.spoon.zip), unzip it, then double click the CPUTempMenuDisplay.spoon folder. Hammerspoon will install it for you.

  If you plan on modifying the Spoon and sending a pull request to this repo, then you should clone this repo into your `~/.hammerspoon/Spoons`

## Usage
In your Hammerspoon config, load this Spoon: `hs.loadSpoon("CPUTempMenuDisplay")`

Start the plugin and create the menu item: `spoon.CPUTempMenuDisplay:start()`

`spoon.CPUTempMenuDisplay:start()` takes an optional parameter, a number of seconds it should refresh at. Be default, it is 20.
You can click the menubar item to pause/play the track.

Click the menu bar item to switch between Celsius (default) and Fahrenheit.

## Acknowledgements
- [Zoom.spoon](https://github.com/jpf/Zoom.spoon) - inspiration, installation instructions (mostly copied verbatim)
- [Hammerspoon Contributors](https://github.com/Hammerspoon/hammerspoon/blob/master/CREDITS.md) - thanks for Hammerspoon!
- [TwoLeaves Gist](https://gist.github.com/TwoLeaves/a9d226ac98be5109a226) - example, iStats usage
