# Homebrew Tap for daprme

## Setup

Install [Homebrew](https://brew.sh) for macOS.

## Create 

```shell
brew create https://github.com/dapr-templates/daprme/releases/download/<VERSION>/daprme
```

## Update formula

1. Update release version in [Makefile](./Makefile) to match the latest release in `daprme`

```shell
RELEASE_TAG  =v0.6.2
```

2. Push the update upstream

```shell
git add ./Makefile
git commit -am "Version update"
```

3. Tag repo to trigger formula update action

```shell
make tag
```

## Install daprme

```shell
brew tap dapr-templates/daprme
brew install dapr-templates/daprme/daprme
```

Or `brew upgrade dapr-templates/daprme/daprme` if you already have it installed.

