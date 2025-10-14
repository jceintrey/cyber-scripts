# example-tool


Outil de démonstration : collecte basique d'info et écriture dans un CSV.


## Fichiers
- `run.py` : script principal
- `requirements.txt` : `requests` (exemple)


## Installation
```bash
cd tools/example-tool
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

## Usage
```bash
python run.py --target 10.10.10.5 -o output.csv

## Exemple de requirements.txt
## 4) `.gitignore`
```text
# Python
__pycache__/
*.pyc
.venv/
.env


# OS
.DS_Store
Thumbs.db


# IDE
.vscode/
.idea/


# Secrets / binaires
*.pem
*.key
*.pfx
secrets.json
*.db


# Node
node_modules/


# Other
/dist
/build
