# Geospatial Vector Data Processing in Python
This repository contains an introduction to geospatial vector data processing in Python. This is part of the course on [Advanced Geospatial Analytics with Python](https://hamedalemo.github.io/advanced-geo-python/intro.html) taught since Fall 2023 at Clark University. 

## Requirements

You need to have Docker installed on your machine. 


## Instructions

Clone this repository to your local machine:

```
git clone git@github.com:HamedAlemo/vector-data-tutorial.git
```

Change your directory to the cloned repository:

```
cd vector-data-tutorial
```

To run the container, you have two options:


### Option 1 - Pull Docker image from DockerHub (Recommended):

It's recommended to pull the Docker image from Dockerhub. Otherwise, if you prefer, you can build your own image using the instructions in the following section. 

```
docker pull hamedalemo/vector-tutorial:1.2
```

```
docker run -it -p 8888:8888 -p 8787:8787 -v $(pwd):/home/gisuser/ hamedalemo/vector-tutorial:1.2
```
- Copy the Jupyter Lab url and paste it in your browser. 
- Open `vector_analysis.ipynb`, `dask_geopandas_intro.ipynb`, and `scalable_vector_analysis.ipynb` and follow the instructions. 


### Option 2 - Build your Docker image:

```
docker build -t vector-tutorial:1.2 .
```

Run the container as following after switching to the repository's directory locally:

```
docker run -it -p 8888:8888 -p 8787:8787 -v $(pwd):/home/gisuser/ vector-tutorial:1.2
```

- Copy the Jupyter Lab url and paste it in your browser. 
- Open `vector_analysis.ipynb`, `dask_geopandas_intro.ipynb`, and `scalable_vector_analysis.ipynb` and follow the instructions. 
