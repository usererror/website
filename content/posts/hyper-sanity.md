---
title: "BetterTouchTool as Window Manager"
date: 2019-03-05T08:46:59-05:00
---

# BetterTouchTool
[BetterTouchTool](https://folivora.ai/) is a fantastic MacOS utility that can act as a window manager. It also lets you customize your trackpad and Touch Bar to an extreme degree. It is no longer a free application but does come with a 45-day free trial and a reasonable price tag.

The easiest way to install BetterTouchTool is with Homebrew:

```console
brew cask install bettertouchtool
```

## Configuration
After opening BetterTouchTool, hit the `Gestures/Triggers` button (with the animal paw icon) and then select `Keyboard` from the toolbar. It should look something like this:

{{< image src="/img/btt-wm/btt.png" alt="BetterTouchTool" position="center" style="border-radius: 8px;" >}}

The shortcuts I have set up show some useful but straightforward window management commands BetterTouchTool provides. These shortcuts let me easily snap windows around without leaving the keyboard.

## Adding Shortcuts
Adding new shortcuts is relatively easy:

1. Click the `+ Add New Shortcut or Key Sequence` button.
1. Select the `Shortcut` option on the bottom left of the app above the entry box.
1. Click on the entry box and type the new shortcut.
1. Set the shortcut to trigger a predefined action on the right-hand side of the app.

## Disappointment and Remorse
When I first configured BetterTouchTool, I tried using simple modifier combinations with the default Vim movement keys (`⌥ + ⌘ + H` to move a window to the left side of the screen for example). 

This approach failed miserably. I effectively spent $20 to turn my computer into a loud, temperamental, unpredictable error simulator. After about a week of being blasted by unexpected bell noises and inconsistent behavior, I was ready to give up on my quest for sane window management and uninstall BetterTouchTool in the hopes of finding some sanity again.

# Diagnosis
After researching other window management apps like [Spectacle](https://www.spectacleapp.com/) and [Amethyst](https://ianyh.com/amethyst/), I discovered the issue was just that many MacOS applications (and the OS itself) define shortcuts that use simple modifier combinations like `^ + ⇧` and `⌥ + ⌘` which often interfere with shortcuts defined in BetterTouchTool that use the same modifiers. The answer is to this problem is to define a "Hyper Key" using a program called Karabiner-Elements. A "Hyper Key" is a single key that transmits the  `^ + ⌥  + ⇧ + ⌘` key combination when pressed.

# Karabiner-Elements
Karabiner-Elements is an application that can map keys to other keys and key combinations. 

It is also available through Homebrew:

```console
brew cask install karabiner-elements
```

## Configuration
The Hyper key configuration I use is [here](https://pqrs.org/osx/karabiner/complex_modifications/#caps_lock). Clicking the blue `Import` button adds this configuration to Karabiner-Elements automatically.

This configuration turns the `Caps Lock` key into `Esc` when pressed by itself or the "Hyper Key" combination `^ + ⌥ + ⇧ + ⌘` when held down and used with other keys such as `H`, `J`, `K`, and `L`. 

# Benefits
Once the `Caps Lock` key is upgraded to a "Hyper Key", moving windows around is dead easy. The shortcuts in the screenshot above become `Caps Lock + {H,J,K,L}`.

As an added benefit, the `Caps Lock` key is now useful in Vim and prevents repeatedly reaching for the `Esc` key with the pinky finger, a common source of RSI and wrist strain. The "Hyper Key" strategy can be used for much, much more than window management shortcuts; this post is just the tip of the iceberg.
