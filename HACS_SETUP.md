# HACS Installation Guide

This repository is now fully configured for HACS (Home Assistant Community Store) installation.

## What's Been Added/Updated

### 1. HACS Configuration Files
- **`hacs.json`** - Updated with proper metadata for HACS store
- **`info.md`** - HACS store description and information
- **`hslhrt/manifest.json`** - Enhanced with additional metadata fields

### 2. GitHub Integration
- **`.github/workflows/validate.yml`** - Validates the integration with Home Assistant standards
- **`.github/workflows/release.yml`** - Automates release creation
- **`.github/ISSUE_TEMPLATE/`** - Bug report and feature request templates

### 3. Documentation
- **`README.md`** - Updated with HACS installation instructions
- **`CHANGELOG.md`** - Version change tracking
- **`requirements.txt`** - Python dependencies

### 4. Project Structure
- **`.gitignore`** - Proper Python/Home Assistant project exclusions
- **`LICENSE`** - GPL v3 license (already existed)
- **`install.sh`** & **`install.bat`** - Installation scripts for Unix/Windows

## Repository Structure

```
hslhrt-hass-custom/
├── hslhrt/                    # Integration files (REQUIRED for HACS)
│   ├── __init__.py
│   ├── manifest.json
│   ├── config_flow.py
│   ├── sensor.py
│   ├── const.py
│   ├── strings.json
│   ├── translations/
│   └── resources/
├── hacs.json                  # HACS metadata
├── info.md                    # HACS store description
├── README.md                  # User documentation
├── CHANGELOG.md              # Version history
├── requirements.txt           # Python dependencies
├── install.sh                 # Unix/Linux installer
├── install.bat                # Windows installer
└── .github/                   # GitHub workflows and templates
```

## How to Install via HACS

### For Users:
1. Install HACS in your Home Assistant instance
2. Go to HACS → Integrations → + → Custom repositories
3. Add: `kkihu/hslhrt-hass-custom`
4. Category: Integration
5. Search for "Helsinki Regional Transport"
6. Click Download
7. Restart Home Assistant
8. Configure via Configuration → Integrations → + → Search "HSL"

### For Repository Owners:
1. Push these changes to your GitHub repository
2. Create a release tag (e.g., `v0.4.0`)
3. The GitHub workflows will automatically validate and create releases
4. Users can then install via HACS

## Manual Installation

### Using Installation Scripts:
- **Unix/Linux**: Run `./install.sh` from the repository root
- **Windows**: Run `install.bat` from the repository root

### Manual Steps:
1. Download this repository
2. Copy the `hslhrt` folder to your Home Assistant `custom_components` directory
3. Restart Home Assistant
4. Configure via the UI

## Repository Requirements Met

✅ **HACS Compatibility**: All required files present with correct structure
✅ **Home Assistant Standards**: Follows integration guidelines
✅ **Documentation**: Comprehensive README and info.md
✅ **CI/CD**: GitHub workflows for validation and releases
✅ **Issue Management**: Templates for bug reports and features
✅ **Version Control**: Proper changelog and versioning
✅ **Installation Scripts**: Easy manual installation

## Next Steps

1. **Push to GitHub**: Commit and push all these changes
2. **Create Release**: Tag a new version (e.g., `git tag v0.4.0 && git push origin v0.4.0`)
3. **Test Installation**: Verify HACS installation works correctly
4. **Monitor**: Watch for any issues or improvements from the community

## Troubleshooting

If you get "Repository structure for main is not compliant" error:
- Ensure the `hslhrt` folder contains all integration files
- Verify `manifest.json` is inside the `hslhrt` folder
- Check that the repository structure matches the diagram above

Your repository is now ready for HACS installation! 🎉 