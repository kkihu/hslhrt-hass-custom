# Helsinki Regional Transport (HSL HRT)

Real-time public transport information for Helsinki Metropolitan Area using the Digitransit platform APIs.

## Features

- Real-time arrival information for buses, trams, and metro
- Support for stop names, stop codes, and GTFS IDs
- Route and destination filtering
- Configurable update intervals
- Comprehensive sensor attributes
- Multiple UI display options

## Installation

### HACS (Recommended)
1. Install HACS if you haven't already
2. Add this repository to HACS
3. Search for "Helsinki Regional Transport" in the HACS store
4. Click "Download"
5. Restart Home Assistant
6. Go to Configuration → Integrations → + → Search for "HSL"
7. Configure with your stop information and API key

### Manual Installation
1. Download all files from this repository
2. Place the `hslhrt` folder in `<config_dir>/custom_components/`
3. Restart Home Assistant
4. Configure via the UI

## Configuration

- **Stop Name/Code**: Enter stop name (case-insensitive) or stop code (case-sensitive)
- **Route**: Specific route number or "ALL" for all routes
- **Destination**: Specific destination or "ALL" for all destinations
- **API Key**: Required API key from Digitransit platform

## Requirements

- Home Assistant 2023.8.0 or later
- Python GraphQL Client library
- Valid Digitransit API key

## Support

- [GitHub Issues](https://github.com/anand-p-r/hslhrt-hass-custom/issues)
- [Documentation](https://github.com/anand-p-r/hslhrt-hass-custom)

## Credits

- Original author: [@anand-p-r](https://github.com/anand-p-r)
- API key support: [@fimathias](https://github.com/fimathias) 