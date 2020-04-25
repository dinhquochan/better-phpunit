# Better PHPUnit

Convenient Sublime Text commands for running your PHPUnit tests. Scans up the directory tree to find the closest `phpunit.xml` file and runs phpunit from there. If it can't find one, it just runs phpunit from `/`.

## Installation

### From packages control

Use [Package Control](http://wbond.net/sublime_packages/package_control) (Preferences -> Package Control -> Install Package -> Better PHPUnit) to install this plugin.

### Manual

Installation is as simple as cloning the repository into your Sublime Text install's `Packages` folder:

```bash
git clone https://github.com/dinhquochan/better-phpunit ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Better\ PHPUnit
```

## Available Commands & Example Keybindings

You can find the commands in the command palette under "Better PHPUnit", or map any of these commands to whatever shortcuts you want:

Here's the full list of commands:

```
run_phpunit_test
run_phpunit_tests_in_dir
run_single_phpunit_test
run_last_phpunit_test
run_all_phpunit_tests
````

Here are some example keybindings:

```json
[
    { "keys": ["alt+t"], "command": "run_phpunit_test"},
    { "keys": ["super+alt+t"], "command": "run_single_phpunit_test"},
    { "keys": ["super+alt+l+t"], "command": "run_last_phpunit_test"},
    { "keys": ["super+shift+t"], "command": "run_phpunit_tests_in_dir"},
    { "keys": ["super+shift+ctrl+t"], "command": "run_all_phpunit_tests"},
]

```

## Using others instead of Terminal.app

By default, this package uses macOS's built-in **Terminal.app**. If you want to use another terminal, you should give **Sublime Text** Accessibility permissions. To enable this, go to `System Preferences > Security & Privacy > Privacy > Accessibility` and grant permission for Sublime Text.
You can do so changing the terminal in your settings `Sublime Text > Preferences > Packages Settings > Better PHPUnit > Settings - User`. Terminals supported: `iTerm`, `Alacritty`, `Hyper`.

```
{
    "termial": "{termial}",
}
```

## Using fish shell

If you use [fish shell](https://fishshell.com/), specify this in your settings: 

```
{
    "phpunit_sublime_shell": "fish"
}
``` 

This will instruct Sublime PHPUnit to connect the commands using fish's `; and` instead of bash's `&&`.

## Credits

- [Adam Wathan](https://github.com/adamwathan/)
- [Dinh Quoc Han](https://github.com/dinhquochan/)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.
