# Add prefix filter plugin for Embulk

Embulk filter plugin to add arbitrary prefixes to all columns.

## Overview

* **Plugin type**: filter

## Configuration

- **prefix**: Prefix name to be added (string, required)

## Example

```yaml
filters:
  - type: addprefix
    prefix: t_hoge_
```


## Build

```
$ rake
```
