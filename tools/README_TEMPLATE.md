# NOM_DU_TOOL

Bref résumé : à quoi sert l'outil.


## Contenu du dossier
- `README.md` (ce fichier)
- `run.py` ou `main.sh` (entrypoint)
- `requirements.txt` (dépendances Python)
- `examples/` (exemples de commande)


## Installation
```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

## Usage 
```bash
python run.py --target 10.10.10.5 --option foo

## Notes sécurité

- Ne pas mettre de credentials en dur.
- Documenter comment générer tout payload, ne pas committer de binaires malveillants.

