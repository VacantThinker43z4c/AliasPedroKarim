<img src="https://res.cloudinary.com/teepublic/image/private/s--3irQSqys--/t_Preview/b_rgb:191919,c_limit,f_jpg,h_630,q_90,w_630/v1511111763/production/designs/2076522_0.jpg" width="100"></img>

### Project Karim and Co - Composant 4
---

#### Introduction
Dans le cadre de création d'un logiciel de gestion de **curriculum vitae**, ce projet où est le composant numéro 4 de ce projet. On pourrait dire que ce composant est l'un des composants principal du projet puisque ce composant a pour but de pouvoir **gérer**, **créer**, **mettre à jour** et surtout **supprimer** le curriculum vitae, avec tous ses contenus, donc ça concerne des formations et les expériences professionnelles.

#### Fonctionnalité
En arrivant sur le composant, comme vous ne possédez pas de CV tous les champs présents actuellement sur le composant seront vides.
Le composant est capable de :

+ Curriculum Vitae
	+ Créer les données
	+ Modifier les données
	+ Supprimer les données
+ Formations et Expériences professionnelles
	+ Créer les données
	+ Modifier les données
	+ Supprimer les données

#### Dépendance
_Pour ce qui concerne les dépendance voir le fichier `pom.xml`_

#### Documentation
_La JavaDoc est disponible dans le dossier `javadoc`_

#### Fonction importante
Convertir le ResultSet en une liste de cartes, où chaque carte représenteune ligne avec columnNames et columValues
```java
private List<Map<String, Object>> resultSetToList(ResultSet res) throws SQLException {
    ResultSetMetaData md = res.getMetaData();
    int columns = md.getColumnCount();
    List<Map<String, Object>> rows = new ArrayList<Map<String, Object>>();
    while (res.next()) {
        Map<String, Object> row = new HashMap<String, Object>(columns);
        for (int i = 1; i <= columns; ++i) {
            row.put(md.getColumnName(i), res.getObject(i));
        }
        rows.add(row);
    }
    return rows;
}
```
utilisation : 
```java
Statement req = this.connexion.createStatement();
ResultSet res = req.executeQuery("SQL REQUEST");
resultSetToList(res).get("Le numéro de la donnée").get("L'un des champs de la donnée");
```
---
Plusieurs fonctions Get sont à votre disposition.
Exemple : 
```java
public List<Map<String, Object>> getUtilisateur(Integer id) throws SQLException {
	//...
}

public List<Map<String, Object>> getCV(Integer id) throws SQLException {
	//...
}

//Et autre ....
```

Utilisation : 
```java
List<Map<String, Object>> utilisateur = getUtilisateur(idUtilisateur).utilisateur.size();

List<Map<String, Object>> cv = getCV(id)cv.get(0).get("id");
```

#### Crédit
Lycée jean lurçat