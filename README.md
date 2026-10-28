# Geospatial Vector Data Processing in Python
This repository contains an introduction to geospatial vector data processing in Python. This is part of the course on [Advanced Geospatial Analytics with Python](https://hamedalemo.github.io/advanced-geo-python/intro.html) taught since Fall 2023 at Clark University. 

## Requirements

You need to have [pixi](https://pixi.sh) installed on your machine. Pixi manages the Python environment and all the dependencies for this tutorial (pinned in `pixi.toml` and locked in `pixi.lock`).

To install pixi on macOS, Linux or Windows Subsystem for Linux (WSL):

```
curl -fsSL https://pixi.sh/install.sh | sh
```

On Windows (PowerShell):

```
powershell -ExecutionPolicy ByPass -c "irm -useb https://pixi.sh/install.ps1 | iex"
```

Restart your terminal after the installation, and check that it works by running `pixi --version`. See the [pixi installation docs](https://pixi.sh/latest/installation/) for other options.


## Instructions

Clone this repository to your local machine:

```
git clone git@github.com:HamedAlemo/vector-data-tutorial.git
```

Change your directory to the cloned repository:

```
cd vector-data-tutorial
```

Install the environment (this only needs to be done once; it creates a local `.pixi` folder inside the repository):

```
pixi install
```

Launch Jupyter Lab:

```
pixi run lab
```

- Jupyter Lab opens in your browser (if it doesn't, copy the URL printed in the terminal and paste it in your browser).
- Open `vector_analysis.ipynb`, `dask_geopandas_intro.ipynb`, and `scalable_vector_analysis.ipynb` and follow the instructions.
- The Dask dashboard is available at [http://localhost:8787/status](http://localhost:8787/status) once you start a Dask cluster in `scalable_vector_analysis.ipynb`.

Alternatively, you can activate the environment in your terminal with `pixi shell` and run any command (e.g. `jupyter lab` or `python`) from there.

### Using VS Code

If you prefer to run the notebooks in VS Code, run `pixi install` first, then open a notebook and select the kernel from `.pixi/envs/default/bin/python` (Windows: `.pixi\envs\default\python.exe`).

