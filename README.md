# Geospatial Vector Data Processing in Python
This repository contains an introduction to geospatial vector data processing in Python. This is part of the course on [Advanced Geospatial Analytics with Python](https://hamedalemo.github.io/advanced-geo-python/intro.html) taught since Fall 2023 at Clark University. 

## Requirements

You need to have Docker installed on your machine. 


## Instructions

It's recommended to pull the Docker image from Dockerhub. Otherwise, if you prefer, you can build your own image using the instructions in the following section. 

```
docker pull hamedalemo/vector-tutorial:1.1
```
You will download files from s3 bucket in this tutorial, so it is best to mount a local directory to your container to keep the data accessible outside the container and after you terminate it:

```
docker run -it -p 8888:8888 -p 8787:8787 -v $(pwd):/home/gisuser/data hamedalemo/vector-tutorial:1.1
```
- Copy the Jupyter Lab url and paste it in your browser. 
- Open `vector_analysis.ipynb`, `dask_geopandas_intro.ipynb`, and `scalable_vector_analysis.ipynb` and follow the instructions. 


### Build Your Docker image:

```
docker build -t vector-tutorial .
```

Run the container as following after switching to the repository's directory locally:

```
docker run -it -p 8888:8888 -p 8787:8787 -v $(pwd):/home/gisuser/data vector-tutorial
```
- Copy the Jupyter Lab url and paste it in your browser. 
- Open `vector_analysis.ipynb`, `dask_geopandas_intro.ipynb`, and `scalable_vector_analysis.ipynb` and follow the instructions. 
