<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--type doc-->
<html lang="fr">
<!--langue de la page-->

<head>
    <!--indique les fonctionnalité utilisé-->
    <meta charset="utf-8">
    <!--encodage de caractère, a placer a en premier dans head !!!!!!!-->
    <title>Paiement Accepté</title>
    <!--titre de l onglet-->
    <link link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <!--relation avec des documents externe-->
    <link rel="stylesheet" href="paiementcss.css">
    <link rel="icon" href="image/favicon.ico">
    <link type="text/css" rel="stylesheet" href="CSS/PaiementValide.css">
</head>

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
            </ul>
        </nav>
        <div class="visites">
            <%! int compteur =0;%>
            <% compteur++; %> Nombre de visites: <%=compteur%>
        </div>
    </header>
<body>
<h1>Paiement Accepté</h1>

<p class ="para">

    <p> Votre paiement a été Accepté.</p> 

    <p>Merci de votre achat. </p> 

    <p>Votre commande sera livré dans moins de 30 minutes.</p> 

    <p> N'hésitez pas continuer de visiter notre site.</p> 

    <p> Cliquer <a href="/HomeDrink/AccueilServlet">ICI</a> pour retourner à l'accueil.</p> 
    
</p>

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
                    <li><a href="#"><img src="images/face.png">Facebook</a></li>
                    <li><a href="#"><img src="images/twitter.png">Twitter</a></li>
                    <li><a href="#"><img src="images/instagram.png">Instagram</a></li>
                </ul>
            </div>
        </div>
        <div>
            <h3>Home Drink // 2019 © <a href="#"> </a></h3>
        </div>
    </footer>


</body>
</html>





