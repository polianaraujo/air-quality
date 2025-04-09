# .devcontainer/Dockerfile

FROM tensorflow/tensorflow:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    build-essential \
    && apt-get clean

# Atualiza pip e instala libs padrão
RUN pip install --upgrade pip && pip install \
    numpy \
    pandas \
    matplotlib \
    seaborn \
    scikit-learn \
    jupyterlab \
    ipywidgets

# Define diretório de trabalho
WORKDIR /workspace

# Copia requirements da raiz para o container
COPY ../requirements.txt .

# Instala dependências do projeto
RUN pip install -r requirements.txt

# Comando padrão ao iniciar o container
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''"]
