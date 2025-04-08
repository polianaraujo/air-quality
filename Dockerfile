# Imagem base com TensorFlow para CPU
FROM tensorflow/tensorflow:latest

# Evita interações durante instalação
ENV DEBIAN_FRONTEND=noninteractive

# Atualiza pacotes e instala dependências úteis
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    build-essential \
    && apt-get clean

# Instala bibliotecas Python adicionais
RUN pip install --upgrade pip && pip install \
    numpy \
    pandas \
    matplotlib \
    seaborn \
    scikit-learn \
    jupyterlab

# Cria diretório de trabalho
WORKDIR /workspace

# Abre terminal interativo por padrão
CMD ["bash"]
