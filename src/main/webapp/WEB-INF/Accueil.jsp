<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="homeDrink.css" rel="stylesheet">
    <link rel="icon" href="images/icon.jpg">
    <link type="text/css" rel="stylesheet" href="CSS/Accueil.css">
    <title>HomeDrink</title>
</head>

<body>
    <header class="top">
    	<a href="/HomeDrink/DeconnexionServlet" class = "connexion">
    	<% String deconnexion = (String) session.getAttribute("email");
    	
    	if(deconnexion != null){
    		out.println("Deconnexion");
    	}
    	%>
    	</a>
        <div class="HomeDrink">
            <img src="images/homedrink.png">
        </div>
        <nav>
            <ul id="menu">
                <li><a href="/HomeDrink/AccueilServlet">Accueil</a></li>
                <li><a href="#">Boissons</a>
                    <ul>
                        <li><a href="/HomeDrink/Vins_Spiritueux.jsp">Vins / Spiriteux</a></li>
                        <li><a href="/HomeDrink/Biere.jsp">Bières</a></li>
                        <li><a href="/HomeDrink/Soft.jsp">Sans alcool</a></li>
                        <li><a href="/HomeDrink/Shooter.jsp">Shooter</a></li>
                        <li><a href="/HomeDrink/Cocktail.jsp">Cocktails</a></li>
                    </ul>
                </li>
                <li><a href="#">Création</a></li>
                <li><a href="/HomeDrink/Coffret.jsp">Coffrets</a></li>
                <li><a href="/HomeDrink/Aperitif.jsp">Apéritifs</a></li>
                <li><a href="#">Login</a>
                    <ul>
                        <li><a href="/HomeDrink/ConnexionServlet">Connexion</a></li>
                        <li><a href="/HomeDrink/InscriptionServlet">Créer un compte</a></li>
                        <li><a href="/HomeDrink/PaiementServlet">Informations Bancaire</a></li>
                    </ul>
                </li>
                <li><a href="/HomeDrink/PanierServlet"><div class="basket"><img id= "panier" src="images/panier.png" alt="panier">Panier</div></a></li>
            </ul>
        </nav>
        <div class="visites">
            <%! int compteur =0;%>
            <% compteur++; %> Nombre de visites: <%=compteur%>
        </div>
    </header>


    <section class="propos">
        <div class="logo">
            <img src="images/logo.png">
        </div>
        <div class="imageAccueil">
            <img src="images\propos.jpg">
        </div>
        <div class="texte">
            <h2>À Propos</h2>
            <p>Né de la concertation de quatre amis ce site se veut unique, intéractif et laisse place à l'imagination
                des clients.
                Ce nouveau concept de bar en ligne vous offre la possibilité de créer vos propres shooters à partir
                d'une large
                gamme de boissons alcoolisées ou non. Si vous vous sentez casanier, que le temps vous empêche de sortir,
                commandez vos boissons directement en ligne et soyez livrés en moins de 30 minutes ! </br></br>

                En panne d'idées cadeaux, Noël approche rapidement et vous n'avez toujours rien acheté, ne cherchez
                plus, nous avons la solution.
                <b>Créez votre propre coffret</b>, choississez la quantité, le type de bouteille. Votre imagination est
                la seule limite à la conception
                de ces coffrets livrés dans une magnifique boîte.
                Pour un supplément de 1€ nous emballons et dédions cette idée cadeau à la personne de votre choix.
                </br></br>

                Un partenariat avec la multinationale G'F1 vous permettra de découvrir comment marier de la meilleure
                possible vos plats et vos boissons.
                Vous en apprendez plus sur ces associations uniques et magiques dans l'onglet "apéritifs".
            </p>
        </div>
    </section>


    <footer>
        <div class="infos">
            <div class="row">
                <h2>Nos videos</h2>
                <ul>
                    <li><a href="#">Vidéos de nos cocktails</a></li>
                    <li><a href="#">Vidéos de nos shooters</a></li>
                </ul>
            </div>
            <div class="row">
                <h2> Infos Pratiques </h2>
                <ul>
                    <li><a href="#">Nous trouver</a></li>
                    <li><a href="#">Espace Fidelité</a></li>
                </ul>
            </div>
            <div class="row">
                <h2> Suivez-Nous </h2>
                <ul class="social">
                    <li><a href="#"><img src="images/face.png"> Facebook</a></li>
                    <li><a href="#"><img src="images/twitter.png"> Twitter</a></li>
                    <li><a href="#"><img src="images/instagram.png"> Instagram</a></li>
                </ul>
            </div>
        </div>
        <div>
            <h3>Home Drink // 2019 © <a href="#"> </a></h3>
        </div>
    </footer>


</body>

</html>