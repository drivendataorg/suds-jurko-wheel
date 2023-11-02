set -e

URL="https://files.pythonhosted.org/packages/d0/88/f3bed9b494e0dae26bd55e5f3d527b8244208125024727267e8109956a11/suds-jurko-0.6.zip"
SHA256SUM="1cb7252cb13018fc32887c3a834ed7c6648a5b5c4c159be5806da2e1785399e8"

# Set for reproducible builds
# https://reproducible-builds.org/docs/source-date-epoch/
export SOURCE_DATE_EPOCH=1390539600  # Fri Jan 24 2014 05:00:00 GMT+0000

# Download source archive
wget $URL

# Verify checksum
echo "${SHA256SUM} suds-jurko-0.6.zip" | sha256sum -c

# Unzip
rm -rf suds-jurko-0.6
unzip suds-jurko-0.6.zip

# Build
rm -rf dist/
python -m build --wheel --no-isolation --outdir dist/ suds-jurko-0.6/

sha256sum dist/*
