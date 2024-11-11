FROM continuumio/miniconda3:24.7.1-0

# Create a conda environment
COPY environment.yml .
RUN conda env create -f environment.yml

# Activate the Conda environment
RUN echo "conda activate vector_tutorial" >> ~/.bashrc
ENV PATH="$PATH:/opt/conda/envs/vector_tutorial/bin"

# Create a non-root user and switch to that user
RUN useradd -m gisuser
USER gisuser

# Set working directory, and copy the notebook
WORKDIR /home/gisuser
COPY --chown=gisuser vector_analysis.ipynb .
COPY --chown=gisuser dask_geopandas_intro.ipynb .
COPY --chown=gisuser scalable_vector_analysis.ipynb .

# Expose the JupyterLab and Dask ports
EXPOSE 8888
EXPOSE 8787

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0"]
