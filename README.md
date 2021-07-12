

<img src="https://res.cloudinary.com/teepublic/image/private/s--3irQSqys--/t_Preview/b_rgb:191919,c_limit,f_jpg,h_630,q_90,w_630/v1511111763/production/designs/2076522_0.jpg" width="100"></img>
<p align="center">

![https://github.com/AliasPedroKarim/KarimAndCo_Composant4/releases](https://img.shields.io/badge/stable-1.1.0-success)  ![https://github.com/AliasPedroKarim/KarimAndCo_Composant4/releases](https://img.shields.io/github/downloads/aliaspedrokarim/KarimAndCo_Composant4/total) ![https://github.com/AliasPedroKarim/KarimAndCo_Composant4/graphs/contributors](https://img.shields.io/github/contributors/aliaspedrokarim/KarimAndCo_Composant4) [![HitCount](http://hits.dwyl.io/AliasPedroKarim/AliasPedroKarim/KarimAndCo_Composant4.svg)](http://hits.dwyl.io/AliasPedroKarim/AliasPedroKarim/KarimAndCo_Composant4)

</p>

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

<p align="center">

[![Generic badge](https://img.shields.io/badge/weblaf-v1.2.9-success)](https://github.com/mgarin/weblaf) [![Generic badge](https://img.shields.io/badge/mysql--connector--j-v5.1.48-success)](https://github.com/mysql/mysql-connector-j)

</p>

#### Documentation
_La JavaDoc est disponible dans le dossier `docs` mais aussi [javadoc](https://aliaspedrokarim.github.io/KarimAndCo_Composant4/)_  
_Une documentation utilisateur est aussi disponible [ici](https://docs.google.com/document/d/1v6MzYAcXDMMQzYLZLa2klrXSc6LA4_zX15RLvXv4bb8/edit)_

#### Comment utiliser ce composant dans votre projet !

##### ➜ Installation et/ou récuperation

+ Récupérer le code : 
	+ <u>__1er Méthode :__</u> Le code source est téléchargeable avec ce lien [GitHub](https://github.com/AliasPedroKarim/KarimAndCo_Composant4/archive/master.zip) _(Lien de la branche master)_
		+ Comme c'est un fichier zip, veuillez le dé-compilé.
		+ Sur l'IDE Netbeans ou autre, créer un nouveau projet Maven
		+ Une fois créer, ouvrer aussi le projet composant sous Netbeans
	
	+ <u>__2ième Méthode :__</u> Sous Netbeans, un onglet `Team` est disponible et on peut clone les projets GitHub grâce au lien `.git` disponible en ⬆ de la page `https://github.com/AliasPedroKarim/KarimAndCo_Composant4.git` :  
	
	  ![](https://i.imgur.com/aoDpRMu.png)
	       ![](https://i.imgur.com/wiwWBJ8.png)

+ Quand les projets (votre projet et le composant) est chargé, vous devriez avoir ce rendu là :    

![](https://i.imgur.com/WbhR3id.png)

+ Maintenant, vous pouvez tous simplement copier le package `com.karimandco.cv` dans votre `Source packages`
+ Ensuite, en ce qui concerne les dépendances, si votre projet est un projet Maven, vous devriez certainement avoir un fichier `pom.xml` dans la racine de votre projet :  

![](https://i.imgur.com/lGaBvGk.png)

+ Copier ou rajouté ceci à l'intérieur, juste après `<packaging>jar</packaging>` :
	
```xml
<dependencies>
    <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
        <version>5.1.48</version>
    </dependency>
    <dependency>
        <groupId>com.weblookandfeel</groupId>
        <artifactId>weblaf-ui</artifactId>
        <version>1.2.9</version>
    </dependency>
</dependencies>
```

###### _Remarque : La dépendance `com.weblookandfeel` n'est pas requis pour utiliser le composant. Seul le fichier `Main.java` utilise les fonctions de `com.weblookandfeel`, donc vous pouvez le supprimé_

+ Enregistrant, vous ne devriez plus avoir d'erreur :  

![](https://i.imgur.com/llvhEa0.png)

+ Et pour ce qui veulent utilisé le composant sur un projet Java Vanilla vous pouvait télécharger les dépendances avec ces liens :
	+ [mysql-connector-j v5.1.48](https://dev.mysql.com/downloads/connector/j/5.1.html#targetText=Connector/J%205.1.48&targetText=MySQL%20Connector/J%20is%20the,versions%20starting%20with%20MySQL%205.5.)
	+ [weblaf v1.2.9](https://mvnrepository.com/artifact/com.weblookandfeel/weblaf-ui/1.2.9)
+ ⚠ Vous pouvez visualiser, l'interface du composant en démarrant le composant sur le fichier `Main.java` ou `JFramePrincipalCV.java` mais les autres fichiers sont justes des composants réutilisables (JPanel et/ou JTextefield) que vous pouvez utilisé dans votre projet.

###### Ajouter dans la liste des composants NetBeans : `Click droit sur fichier class JPanel` ➜ `Tools` ➜ `Add To Palette...` ➜ `Choisir la catégorie palette pour l'ajouter` (Vous pouvez créer les catégories palettes)

+ Done.
##### ➜ Utilisation et/ou Instanciation
Pour pouvoir utiliser le composant (JPanel) `CreationDuCV.java` :
+ Par l'instanciation du panel :
	+ Il faut savoir que `CreationDuCV.java` peut s’instancier de 2 manières différentes
```java 
CreationDuCV creationDuCV = new CreationDuCV();
// ou
CreationDuCV creationDuCV = new CreationDuCV(<id_du_cv>, <id_de_l'utisateur>);
```
+ Mais on peut aussi utiliser des setters :
	+ En utilisant les setters le cv va ce recharger tous seul, mais bien sur, il faut l'instancier avant. un setter `setIdUtilisateur()` et `setIdCV()` sont disponibles.
```java
CreationDuCV creationDuCV = new CreationDuCV();
creationDuCV.setIdUtilisateur(<id_de_l'utisateur>);
creationDuCV.setIdCV(<id_du_cv>);
```

#### Fonctionnalité importante
##### ➜ Méthode resultSetToList
Permet de convertir le ResultSet en une liste de cartes, où chaque carte représente une ligne avec columnNames et columValues
<u>Définition :</u>
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
<u>utilisation : </u>
```java
Statement req = this.connexion.createStatement();
ResultSet res = req.executeQuery("SQL REQUEST");
resultSetToList(res).get("Le numéro de la donnée").get("L'un des champs de la donnée");
```
---
##### ➜ Plusieurs fonctions Get sont à votre disposition.
<u>Exemple : </u>
```java
public List<Map<String, Object>> getUtilisateur(Integer id) throws SQLException {
	//...
}

public List<Map<String, Object>> getCV(Integer id) throws SQLException {
	//...
}

//Et autre ....
```

<u>Utilisation : </u>
```java
List<Map<String, Object>> utilisateur = getUtilisateur(idUtilisateur).utilisateur.size();

List<Map<String, Object>> cv = getCV(id)cv.get(0).get("id");
```
---
##### ➜ Class DaoSIO (Singleton)
Permet avec `DaoSIO.getIntance().connexion` obtenir une instance de connexion valide. Mais il y a 2 méthodes qui permet d'exécuté des requêtes SQL en toute simplicité, que ce soit les requêtes de selections ou d'acti

<u>Utilisation : </u>
```java
DaoSIO.getIntance().requeteSelection("SELECT * FROM ...");
DaoSIO.getInstance().requeteAction("DELETE FROM ...");
```

#### Crédit
Lycée jean lurçat

[![forthebadge made-with-java]( https://forthebadge.com/images/badges/made-with-java.svg )](https://www.python.org/)
