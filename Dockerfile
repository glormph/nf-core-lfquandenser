FROM nfcore/base
LABEL authors="Jorrit Boekel" \
      description="Docker image containing all requirements for nf-core/lfquandenser pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-lfquandenser-1.0dev/bin:$PATH
