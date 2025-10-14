# cyber-scripts

Collection centralisée de scripts, outils et utilitaires Cyber.


## Structure

- `tools/` : outils multi-fichiers (chaque outil dans son dossier)
- `scripts/` : petits scripts one-file
- `libs/` : fonctions / modules réutilisables
- `examples/` : exemples d'utilisation
- `docs/` : documentation générale
- `.github/workflows/` : CI (lint/tests)

## Règles d'utilisation

1. Une branche pour chaque feature : `feat/nom-outil`.
2. Un `README.md` dans chaque outil (voir `tools/README_TEMPLATE.md`).
3. Dépendances dans `requirements.txt` à la racine de l'outil.
4. Tests unitaires `tests/` (ou `tools/<outil>/tests`).
5. Pas de commit de secrets.

## Installation / exécution (exemples)

```bash
# cloner
git clone git@github.com:jceintrey/cyber-scripts.git
cd cyber-scripts

# exemple : exécuter un script python dans un venv
python3 -m venv .venv
source .venv/bin/activate
pip install -r tools/example-tool/requirements.txt
python tools/example-tool/run.py --help
````

## Contribuer

* Ouvrir une Pull Request sur `main` avec description et tests.
* CI lancera lint + tests sur les fichiers modifiés.

## Licence


```
