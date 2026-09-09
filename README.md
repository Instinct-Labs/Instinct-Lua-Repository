Instinct Lua Repository

Official community Lua script repository for Instinct Menu.

This repository provides a central place for Lua scripts built for
Instinct's Lua API, making scripts easier to organize, maintain, share,
and install.

[!IMPORTANT] Scripts in this repository are designed for Instinct
Menu. Compatibility with other Lua environments or menus is not
guaranteed.

About

Instinct includes a Lua scripting environment that allows features and
utilities to be created without rebuilding the menu itself.

This repository serves as the script library for that system. Scripts
can use the APIs exposed by Instinct, including menu integration and
other supported Lua functionality.

Repository Structure

Each script should be kept clean and self-contained.

Instinct-Lua-Repository/
├── scripts/
│   ├── ExampleScript/
│   │   ├── main.lua
│   │   └── ...
│   └── ...
└── README.md

Individual scripts may contain additional files or folders when
required.

Creating a Script

A minimal Instinct Lua script can start with:

log.info("Hello from Instinct!")

From there, scripts can use the APIs exposed by Instinct.

Keep scripts readable, avoid unnecessary dependencies, and place
initialization code in a clear entry point.

Script Guidelines

When contributing a script:

Keep the script organized and readable.

Use clear names for files, features, and menu options.

Avoid unnecessary global variables.

Include a short description of what the script does.

Do not intentionally include malicious or destructive code.

Test changes before submitting them.

Keep script-specific assets inside the script's own directory.

Prefer Instinct's provided Lua APIs where applicable.

Contributing

Contributions are welcome.

Fork this repository.

Create a branch for your script or change.

Add or update the relevant files.

Test the script with the current version of Instinct.

Commit your changes with a clear commit message.

Open a pull request.

Example:

git checkout -b add-example-script
git add .
git commit -m "Add Example Script"
git push origin add-example-script

Updating Existing Scripts

If you maintain a script already included in the repository, keep
changes focused on that script unless a repository-wide change is
necessary.

For significant changes, briefly explain what changed in the pull
request.

Compatibility

Instinct's Lua API may evolve as new functionality is added.

Scripts that depend on specific APIs should be updated when those APIs
change. If a script requires a particular Instinct version, document
that requirement with the script.

Issues

If a repository script has a problem, open an issue with enough
information to reproduce it.

Useful information includes:

Script name

Instinct version

What you expected to happen

What actually happened

Relevant Lua errors or logs

Steps to reproduce the issue

Disclaimer

Community scripts are provided as-is. Review third-party scripts before
using them and only run scripts from sources you trust.

Instinct

Developed for the Instinct Lua ecosystem.
