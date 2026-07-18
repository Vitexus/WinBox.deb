# WARP.md - Working AI Reference for WinBox.deb

## Project Overview
**Type**: Debian source package
**Purpose**: Packages MikroTik's native Linux WinBox binary (GUI for RouterOS) as a `.deb`
**Status**: Active
**Repository**: git@github.com:Vitexus/WinBox.deb.git
**Current version**: 4.2 (native Linux WinBox, no Wine)

## Architecture & Structure
```
WinBox.deb/
├── com.mikrotik.winbox.desktop        # desktop entry
├── com.mikrotik.winbox.metainfo.xml   # AppStream metadata
├── upstreamversion.sh                 # scrapes current upstream version number
└── debian/
    ├── control        # winbox binary package, amd64, shlibs-based Depends
    ├── rules          # override_dh_install downloads+unzips WinBox_Linux.zip at build time
    ├── install        # maps debian/tmp/WinBox + icon + desktop/metainfo into the package
    ├── changelog
    ├── Jenkinsfile    # CI build definition (kept in sync with DebianRepository template)
    └── source/format  # 3.0 (native)
```

There is no vendored upstream source: `debian/rules` fetches the latest
`WinBox_Linux.zip` straight from `download.mikrotik.com` during
`override_dh_install`, so building requires network access.

## Development Workflow

### Prerequisites
- `debhelper-compat (= 13)`, `curl`/`wget`, `unzip`, `ca-certificates`
- Network access to `mikrotik.com` / `download.mikrotik.com` at build time

### Build & Run
```bash
dpkg-buildpackage -us -uc -b   # or: gbp buildpackage
lintian ../winbox_<version>_amd64.changes
```

### Checking for a new upstream version
```bash
./upstreamversion.sh   # prints the latest WinBox version published by MikroTik
```

## Key Concepts
- **Packaging model**: binary-only redistribution package — no source compilation,
  just fetch + repack MikroTik's official Linux zip.
- **Dependencies**: resolved via `${shlibs:Depends}` against the unpacked binary's
  library needs (X11/XCB/GL/EGL stack) rather than hand-maintained versions.
- **Distribution**: released via `repo.vitexsoftware.com` (see README.md) and as
  GitHub Releases with the built `.deb` attached.

## Common Tasks

### Releasing a new version
1. Run `./upstreamversion.sh` to confirm the new upstream version.
2. Update `debian/changelog` (`dch` or manual entry), set distribution to `stable`.
3. `dpkg-buildpackage -us -uc -b` and `lintian` the result.
4. Tag the release and push.
5. Create a GitHub Release, attaching the built `.deb`.

## Troubleshooting
- **Build fails fetching the zip**: check `https://mikrotik.com/download/winbox/`
  is reachable and still has the expected `WinBox_Linux.zip` link pattern used
  in `debian/rules`.
- **dpkg-shlibdeps diversion warnings**: harmless on systems using `mesa`/glx
  diversions; not package bugs.
