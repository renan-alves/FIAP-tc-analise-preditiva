# Imagem base com Python e Jupyter
FROM python:3.12-slim

# Evitar prompts interativos
ENV DEBIAN_FRONTEND=noninteractive

# Criar diretório de trabalho
WORKDIR /app

# Copiar arquivos para dentro do container
COPY . /app

# Instalar dependências
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expor porta do Jupyter Notebook
EXPOSE 8888

# Comando para rodar o notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
