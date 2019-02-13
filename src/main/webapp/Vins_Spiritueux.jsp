<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--type doc-->
<html lang="fr">
<!--langue de la page-->

<head>
    <!--indique les fonctionnalité utilisé-->
    <meta charset="utf-8">
    <!--encodage de caractère, a placer a en premier dans head !!!!!!!-->
    <title>Vins et Spiritueux</title>
    <!--titre de l onglet-->
    <link link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <!--relation avec des documents externe-->
    <link rel="stylesheet" href="Vins_Spiritueux.css">
    <link rel="icon" href="images/icon.jpg">
    <link type="text/css" rel="stylesheet" href="CSS/Vins_Spiritueux.css">

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

    <section class="Vins_Spiritueux">
        <div class="vin">
            <h1>Vins disponibles</h1>
            <article class="card">

                <div class="card_thumb">
                    <a href="#">
                        <img src="images/brouilly.png" alt="brouilly">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">9 €</span>
                    <span class="card_date_month">Brouilly</span>
                </div>
                <footer class="card_footer">
                    <p>Vin rouge</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/chardonnay.jpg" alt="chardonnay">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">10 €</span>
                    <span class="card_date_month">Chardonnay</span>
                </div>
                <footer class="card_footer">
                        <p>Vin blanc</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/muscadet.jpg" alt="muscadet">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">8 €</span>
                    <span class="card_date_month">Muscadet</span>
                </div>
                <footer class="card_footer">
                        <p>Vin blanc</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/anjou.png" alt="anjou">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">8 €</span>
                    <span class="card_date_month">Cabernet d'Anjou</span>
                </div>
                <footer class="card_footer">
                        <p>Vin rosé</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>
        </div>

        <div class="titre">
            <h1>Spiritueux disponibles</h1>
        </div>

        <div class="spirit">

            <article class="card">

                <div class="card_thumb">
                    <a href="#">
                        <img src="images/bayleys.png" alt="bayleys">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">15.99 €</span>
                    <span class="card_date_month">Bayley's</span>
                </div>
                <footer class="card_footer">
                        <p>Crème de whisky</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/vodka.jpg" alt="vodka">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">25 €</span>
                    <span class="card_date_month">Vodka</span>
                </div>
                <footer class="card_footer">
                        <p>Vodka</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/kalhua.jpg" alt="kalhua">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">20 €</span>
                    <span class="card_date_month">Kalhua</span>
                </div>
                <footer class="card_footer">
                        <p>Liqueur de café</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/tequila.jpg" alt="tequila">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">15 €</span>
                    <span class="card_date_month">Tequila</span>
                </div>
                <footer class="card_footer">
                        <p>Tequila</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>
            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/cointreau.jpg" alt="cointreau">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">15 €</span>
                    <span class="card_date_month">Cointreau</span>
                </div>
                <footer class="card_footer">
                        <p>Liqueur d'orange</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/amaretto.jpg" alt="amaretto">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">35 €</span>
                    <span class="card_date_month">Amaretto</span>
                </div>
                <footer class="card_footer">
                        <p>Liqueur d'amande</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/gin.jpg" alt="gin">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">35 €</span>
                    <span class="card_date_month">Gin</span>
                </div>
                <footer class="card_footer">
                        <p>Gin</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

        </div>

        <div class="spirit2">

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
</html>