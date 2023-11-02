# suds-jurko-wheel

[![publish](https://github.com/drivendataorg/suds-jurko-wheel/actions/workflows/publish.yaml/badge.svg)](https://github.com/drivendataorg/suds-jurko-wheel/actions/workflows/publish.yaml)

A repository that builds and distributes a wheel for the [suds-jurko](https://pypi.org/project/suds-jurko/) Python package without any modifications.

suds-jurko is an old, unmaintained Python package (last updated 2014) that other Python packages like the [ulmo](https://ulmo.readthedocs.io/en/latest/) hydrology data package depends on. Unfortunately, suds-jurko is only distributed on PyPI as a source distribution, and it is incompatible with modern versions of setuptools. This makes suds-jurko, and consequentially packages like ulmo, annoying to easily `pip install`.

By distributing suds-jurko as a wheel, users can easily `pip install` suds-jurko without needing to worry about their setuptools version, which only matters at build time.

## Using the wheel

The wheel is published as a release asset on this repository. See the `suds_jurko-0.6-py3-none-any.whl` file on the [Releases page](https://github.com/drivendataorg/suds-jurko-wheel/releases).

To install with pip:

```bash
pip install https://github.com/drivendataorg/suds-jurko-wheel/releases/download/v0.6/suds_jurko-0.6-py3-none-any.whl
```

To include in a `requirements.txt` file:

```bash
suds-jurko @ https://github.com/drivendataorg/suds-jurko-wheel/releases/download/v0.6/suds_jurko-0.6-py3-none-any.whl
```

## Building the wheel yourself

Requires Python, unzip, wget, sha256sum (coreutils). Install the Python dependencies with:

```bash
pip install -r requirements.txt
```

Then build the wheel with:

```bash
bash build.sh
```

This builds the wheel to `dist/suds_jurko-0.6-py3-none-any.whl`.

## License

The code in this repository for building a wheel for suds-jurko is licensed under the MIT license.

The built suds-jurko wheel contains the unmodified source code from the suds-jurko project and is distributed under its original license (LGPLv3). See the `LICENSE.txt` file included inside the wheel for details.
