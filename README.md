# OpenBMC packager

OpenBMC packager is a facility to build RPM for RedHat based distributions (e.g. Alma Linux, Rocky Linux, ...)

## scripts

- `build-image.sh`: build an Apptainer image based on Alma Linux 10 (almalinux10.sif)
- `build-packages.sh`: start RPM building with obmc_pkg using almalinux10.sif as container
- `shell.sh`: launch a Bash shell on Apptainer image

## obmc_pkg

```
usage: obmc_pkg [-h] [-m MANIFEST] [--only PKG [PKG ...]] [--from PKG] [--force PKG [PKG ...]] [--clean PKG [PKG ...]] [--full-clean] [--yes] [--checkout-only] [--dry-run PKG] [--list]

OpenBMC RPM orchestrator

options:
  -h, --help            show this help message and exit
  -m MANIFEST, --manifest MANIFEST
  --only PKG [PKG ...]  build only these packages (plus their dependencies)
  --from PKG            restart from this package in the topological order
  --force PKG [PKG ...]
                        'all' or a list: clear markers before building
  --clean PKG [PKG ...]
                        remove markers + source + RPM for these packages (as if never built), then exit; sysroot is untouched
  --full-clean          wipe the whole environment (state, sources, sysroot, RPMs) as if nothing was ever built, then exit
  --yes                 skip the confirmation prompt for --clean/--full-clean
  --checkout-only       run only the checkout phase for all packages (for gen_deps)
  --dry-run PKG         print all commands for this package (checkout..package) without running them, then exit
  --list                print order and state, then exit
```


