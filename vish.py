import re
import spacy
import sys
import json

# Chargement du modèle linguistique français de spaCy
nlp = spacy.load("fr_core_news_sm")

def detecter_avec_spacy(texte):
    resultats = {
        "cartes_bancaires": [],
        "noms": [],
        "adresses_lieux": []
    }
    
    # 1. Détection des cartes bancaires via RegEx (plus robuste pour les chiffres)
    motif_cb = r'\b(?:\d[ -]*?){16}\b'
    for x in list(set(re.findall(motif_cb, texte))):
        resultats["cartes_bancaires"].append(x)
    
    # 2. Analyse NLP avec spaCy pour le texte
    doc = nlp(texte)
    
    # Parcours des entités reconnues par spaCy (Named Entity Recognition)
    for ent in doc.ents:
        if ent.label_ == "PER":  # Personne (Nom complet / Prénom / Nom)
            resultats["noms"].append(ent.text)
        elif ent.label_ in ["LOC", "GPE"]:  # Lieu, Ville, Pays, Adresse géographique
            resultats["adresses_lieux"].append(ent.text)
            
    
    return resultats

# --- Exemple d'utilisation ---
texte_exemple = """
Bonjour, je m'appelle Marie Curie, j'habite au 42 avenue de la République à Lyon. 
Vous pouvez utiliser ma carte bancaire pour le paiement : 4532-1234-5678-9010.
"""
texte_exemple=sys.argv[1]
#print(texte_exemple)

resultats = detecter_avec_spacy(texte_exemple)
#print("Résultats de la détection (spaCy + RegEx) :")
#for cle, valeurs in resultats.items():
#    print(f"- {cle} : {valeurs}")
print(json.dumps(resultats))
#print((resultats))

