<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="coffret.css" rel="stylesheet">
    <link rel="icon" href="images/icon.jpg">
    <link type="text/css" rel="stylesheet" href="CSS/Coffret.css">
    <title>Coffret</title>
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


    <section class="coffret" id="ongletCoffret">
        <h1>Coffrets disponibles</h1>
        <article class="card">

            <div class="card_thumb">
                <a href="#">
                    <img src="images/coffret1.png" alt="coffret1">
                </a>
            </div>
            <div class="card_date">
                <span class="card_date_day">35 €</span>
                <span class="card_date_month">Irish Time</span>
            </div>
            <footer class="card_footer">
                <p>3 bières : 2 Guinness, 1 Kilkenny <br/>
                    1 bouteille de spiritueux : Bayley's<br/></p>
                <input type="button" value="Ajouter au panier"></button>
            </footer>
        </article>

        <article class="card">
            <div class="card_thumb">
                <a href="#">
                    <img src="images/coffret2.jpg" alt="coffret2">
                </a>
            </div>
            <div class="card_date">
                <span class="card_date_day">25 €</span>
                <span class="card_date_month">Apéro aux vins</span>
            </div>
            <footer class="card_footer">
                <p>2 bouteilles de vins : Brouilly et Chardonnay <br/>
                    1 bouteille de Coca-Cola<br/></p>
                <input type="button" value="Ajouter au panier"></button>
            </footer>
        </article>

        <article class="card">
            <div class="card_thumb">
                <a href="#">
                    <img src="images/coffret3.jpg" alt="coffret3">
                </a>
            </div>
            <div class="card_date">
                <span class="card_date_day">77 €</span>
                <span class="card_date_month">Irish Time ++</span>
            </div>
            <footer class="card_footer">
                <p>2 bouteilles de spiritueux : Bayley's et Kalhua<br/>
                    6 bouteilles de bières : 2 Kilkenny, Guinness, La Bête, 2 Murphy's<br/>
                    1 bouteille de jus de pomme 
                </p>
                <input type="button" value="Ajouter au panier"></button>
            </footer>
        </article>
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