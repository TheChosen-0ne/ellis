FROM python:alpine3.22

# O diretório dentro do container que rodará a aplicação
WORKDIR /app

# Copia as dependências e as instalam.
COPY requirements.txt .
RUN pip install --no-cache -r requirements.txt

# Copia todos os arquivos para dentro do container
COPY . .

# Expoe a porta do container
EXPOSE 8000

# Executa a aplicação
CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "8000", "--reaload"]