<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<!--type doc-->
<html lang="fr">
<!--langue de la page-->

<head>
    <!--indique les fonctionnalité utilisé-->
    <meta charset="utf-8">
    <!--encodage de caractère, a placer a en premier dans head !!!!!!!-->
    <title>Formulaire</title>
    <!--titre de l onglet-->
    <link link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <!--relation avec des documents externe-->
    <link rel="stylesheet" href="typecssformulaireprojet.css">
    <link rel="icon" href="image/favicon.ico">
    <link type="text/css" rel="stylesheet" href="CSS/Connexion.css">
</head>



<body>
    <header class="top">
        <div class="HomeDrink">
            <img src="images/homedrink.png">
        </div>
        <nav>
            <ul id="menu">
                <li><a href="/HomeDrink/AccueilServlet">Accueil</a></li>
                <li><a href="#">Boissons</a>
                    <ul>
                        <li><a href="/HomeDrink/Vins_Spiritueux.jsp">Vins / Spiriteux</a></li>
                        <li><a href="#">Bières</a></li>
                        <li><a href="#">Sans alcool</a></li>
                        <li><a href="#">Shooter</a></li>
                        <li><a href="#">Cocktails</a></li>
                    </ul>
                </li>
                <li><a href="#">Création</a></li>
                <li><a href="/HomeDrink/Coffret.jsp">Coffrets</a></li>
                <li><a href="#">Apéritifs</a></li>
                <li><a href="#">Login</a>
                    <ul>
                        <li><a href="/HomeDrink/ConnexionServlet">Connexion</a></li>
                        <li><a href="/HomeDrink/InscriptionServlet">Créer un compte</a></li>
                        <li><a href="/HomeDrink/PaiementServlet">Informations Bancaire</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div class="visites">
            <%! int compteur =0;%>
            <% compteur++; %> Nombre de visites: <%=compteur%>
        </div>
    </header>
    
    <section class="formulaire">
        <form action="ConnexionServlet" method="POST">
            <div class="contenu">
            <span id ="error"></span>
                <fieldset>
                   
                   	<p class = "error">
                   	<%  
                   	Boolean erreurConnexion = (Boolean) request.getAttribute("Mot de passe et/ou email incorrect");
                   	Boolean erreurSession = (Boolean) request.getAttribute("Session incorrect");

                   	if(erreurSession == true) {
            			out.println("Cet utilisateur existe déjà ! Connectez-vous.");	
                   	} 
                   	
                   	if(erreurConnexion == true) {
            			out.println("Mot de passe et/ou email incorrect");	
                   	} 
                   	
                   	%>
                   	</p>
                   	
                    <p>
                            <label for="email">E-mail</label>
                            <input type="email" id="email" name="email" required="required"/>
                    </p>
                    
                    <p>
                        <label for="password">Mot de passe</label>
                        <input type="password" id="password" name="password" placeholder="Mot de passe" required="required"/>
                    </p>

                </fieldset>
            </div>

            <fieldset class = "submit">
                <p>
                    <input type="submit" value = "Envoyer" id="bouton_envoi"/>
                </p>
            </fieldset>

        </form>
    </section>

    <footer>
        <!--alt0169-->
        <h3>Home Drink // 2019 © <a href="#">  </a></h3>
    </footer>
    
  


	<script>

    </script>
</body>
</html>