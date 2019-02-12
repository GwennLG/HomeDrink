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

    </header>
    
    <section class="formulaire">
        <form action="ConnexionServlet" method="POST">
            <div class="contenu">
                <fieldset>
                   
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