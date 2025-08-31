#!/bin/bash

# HSL HRT Home Assistant Integration Installer
# This script helps install the integration manually

echo "HSL HRT Home Assistant Integration Installer"
echo "============================================="
echo ""

# Check if we're in the right directory
if [ ! -d "hslhrt" ]; then
    echo "Error: hslhrt directory not found!"
    echo "Please run this script from the root of the repository."
    exit 1
fi

# Get Home Assistant config directory
echo "Please enter your Home Assistant configuration directory:"
echo "(e.g., /home/homeassistant/.homeassistant or /config)"
read -p "Config directory: " CONFIG_DIR

if [ ! -d "$CONFIG_DIR" ]; then
    echo "Error: Directory $CONFIG_DIR does not exist!"
    exit 1
fi

# Create custom_components directory if it doesn't exist
CUSTOM_COMPONENTS="$CONFIG_DIR/custom_components"
if [ ! -d "$CUSTOM_COMPONENTS" ]; then
    echo "Creating custom_components directory..."
    mkdir -p "$CUSTOM_COMPONENTS"
fi

# Copy the integration
echo "Installing HSL HRT integration..."
cp -r hslhrt "$CUSTOM_COMPONENTS/"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Installation successful!"
    echo ""
    echo "Next steps:"
    echo "1. Restart Home Assistant"
    echo "2. Go to Configuration → Integrations → +"
    echo "3. Search for 'HSL' and configure"
    echo ""
    echo "Installation directory: $CUSTOM_COMPONENTS/hslhrt"
else
    echo ""
    echo "❌ Installation failed!"
    echo "Please check the error messages above."
fi 