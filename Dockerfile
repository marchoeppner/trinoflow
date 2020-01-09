FROM nfcore/base:1.7
LABEL authors="M. P. Hoeppner" \
      description="Docker image containing all requirements for nf-core/trinoflow pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-trinoflow-1.0dev/bin:$PATH
