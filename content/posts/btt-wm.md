---
title: "OSX Window Management and the Hyper Key"
date: 2019-03-05T08:46:59-05:00
---

MacOS does not support snapping or moving windows around at all. If you come from the Linux world and are fond of tiling window managers like `i3`, you are in for serious frustration. The solution is to use two applications:

1. [BetterTouchTool](https://folivora.ai/) is a fantastic MacOS utility tool that can act as a window manager among other things. It is no longer a free application but does come with a 45-day free trial and a reasonable price tag.
2. [Karabiner-Elements](https://github.com/tekezo/Karabiner-Elements) is another great MacOS utility tool that can customize your keyboard by mapping keys to other keys and even key combinations. Karabiner-Elements is free and open source software.

The easiest way to install BetterTouchTool and Karabiner-Elements is with [Homebrew](https://brew.sh/):

```console
brew cask install bettertouchtool karabiner-elements
```

## Define a "Hyper" Key
A "Hyper Key" is a single key that transmits the  `^ + ⌥  + ⇧ + ⌘` key combination when pressed. Karabiner-Elements can configure the `Caps Lock` key to send `Esc` when pressed by itself and the Hyper combination `^ + ⌥ + ⇧ + ⌘` when held down and used with other keys such as `H`, `J`, `K`, and `L`. The Hyper key configuration I use to accomplish this is [here](https://pqrs.org/osx/karabiner/complex_modifications/#caps_lock). Clicking the blue `Import` button adds this configuration to Karabiner-Elements automatically.

The reason you need a Hyper key at all is that many MacOS applications (and the OS itself) define shortcuts that use simple modifier combinations like `^ + ⇧` and `⌥ + ⌘` which often interfere with shortcuts defined in BetterTouchTool that use the same modifiers. By configuring a Hyper key and using it in BetterTouchTool all of the inconsistent behavior, shortcut interference, and nightmarish error bells can be avoided.

## Create BetterTouchTool Shortcuts
Adding new keyboard shortcuts in BetterTouchTool is relatively easy:

1. Click the `Gestures/Triggers` button (with the animal paw icon) and then select `Keyboard` from the toolbar.
1. Click the `+ Add New Shortcut or Key Sequence` button.
1. Select the `Shortcut` option on the bottom left of the app above the entry box.
1. Click on the entry box and type the new shortcut.
1. Set the shortcut to trigger a predefined action on the right-hand side of the app. The actions relevant to this post are under the `Window Resize & Move` category.

For example, by pressing `Hyper + H` during step 4, you can create a new shortcut that is triggered by the `Hyper + H` key combination. The Hyper key will show up in BetterTouchTool as the full `^ + ⌥  + ⇧ + ⌘` key combination.

The shortcuts I have set up show some useful but straightforward window management commands BetterTouchTool provides. These shortcuts let me easily snap windows around with the Hyper key and standard Vim movement keys:

{{< image src="/img/btt-wm/btt.png" alt="BetterTouchTool" position="center" style="border-radius: 8px;" >}}

# Conclusion
Once the `Caps Lock` key is upgraded to a "Hyper Key", moving windows around is dead easy. The shortcuts in the screenshot above become `Hyper + {H,J,K,L}`. As an added bonus, the Hyper key is also useful in Vim since it transmits the `Esc` key when pressed by itself, preventing repeatedly reaching for the actual `Esc` key with your pinky finger (a common source of RSI and wrist strain). The Hyper key can be used for any shortcuts you want to be available system-wide without interfering with the operating system and your applications shortcuts; this post is just the tip of the iceberg!
