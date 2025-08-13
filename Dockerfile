# Imagem base com Python 3.12 slim
FROM python:3.12-slim

# Evitar prompts interativos
ENV DEBIAN_FRONTEND=noninteractive

# Criar diretório de trabalho
WORKDIR /app

# Copiar arquivos do projeto
COPY . /app

# Atualizar pip
RUN pip install --upgrade pip

# Instalar dependências
RUN pip install pandas numpy matplotlib seaborn scikit-learn shap jupyter

# Expor porta do Jupyter Notebook
EXPOSE 8888

# Comando para iniciar o Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser", "--NotebookApp.token=''"]


