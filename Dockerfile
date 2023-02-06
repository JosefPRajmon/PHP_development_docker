# Základní image
FROM python:3.8-alpine

# Nastavení pracovního adresáře
WORKDIR /app

# Kopírování souborů z lokálního adresáře do pracovního adresáře v Dockeru
COPY . /app

# Instalace závislostí
RUN pip install --no-cache-dir -r requirements.txt

# Spuštění aplikace
CMD ["python", "app.py"]
