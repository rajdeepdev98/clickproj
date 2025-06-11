#!/bin/bash

# Clean up any existing builds
echo "Cleaning up previous builds..."
rm -rf build/ dist/ *.egg-info

# Build the package
echo "Building package..."
python -m build

# Upload to PyPI (uncomment when ready to publish)
echo "To upload to TestPyPI (for testing), run:"
echo "python -m twine upload --repository testpypi dist/*"
echo ""
echo "To upload to PyPI (for production), run:"
echo "python -m twine upload dist/*"
