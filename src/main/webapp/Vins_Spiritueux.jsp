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

    <section class="Vins_Spiritueux">
    	<% int numId = 1; %>
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
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <span class="card_date_day">10 €</span>
                    <span class="card_date_month">Muscadet</span>
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <span class="card_date_day">10 €</span>
                    <span class="card_date_month">Cabernet d'Anjou</span>
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
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
    
    <script src=' http://code.jquery.com/jquery.min.js '></script>
    <script>

        var link = $("#images1");
        
        var imageActuelle = "starBlack";

        link.on('click', function () {
            if (imageActuelle == "starBlack") {
                link.prop('src', 'images/star.png');
                imageActuelle = 'star';
            } else if (imageActuelle == 'star') {
                link.prop('src', 'images/starBlack.png');
                imageActuelle = 'starBlack';
            }
        });
        
        var link2 = $("#images2");
        
        var imageActuelle2 = "starBlack";

        link2.on('click', function () {
            if (imageActuelle2 == "starBlack") {
                link2.prop('src', 'images/star.png');
                imageActuelle2 = 'star';
            } else if (imageActuelle2 == 'star') {
                link2.prop('src', 'images/starBlack.png');
                imageActuelle2 = 'starBlack';
            }
        });
        
        
        var link3 = $("#images3");
        
        var imageActuelle3 = "starBlack";

        link3.on('click', function () {
            if (imageActuelle3 == "starBlack") {
                link3.prop('src', 'images/star.png');
                imageActuelle3 = 'star';
            } else if (imageActuelle3 == 'star') {
                link3.prop('src', 'images/starBlack.png');
                imageActuelle3 = 'starBlack';
            }
        });
        
		var link4 = $("#images4");
        
        var imageActuelle4 = "starBlack";

        link4.on('click', function () {
            if (imageActuelle4 == "starBlack") {
                link4.prop('src', 'images/star.png');
                imageActuelle4 = 'star';
            } else if (imageActuelle4 == 'star') {
                link4.prop('src', 'images/starBlack.png');
                imageActuelle4 = 'starBlack';
            }
        });
        
 var link5 = $("#images5");
        
        var imageActuelle5 = "starBlack";

        link5.on('click', function () {
            if (imageActuelle5 == "starBlack") {
                link5.prop('src', 'images/star.png');
                imageActuelle5 = 'star';
            } else if (imageActuelle5 == 'star') {
                link5.prop('src', 'images/starBlack.png');
                imageActuelle5 = 'starBlack';
            }
        });
   
 var link6 = $("#images6");
        
        var imageActuelle6 = "starBlack";

        link6.on('click', function () {
            if (imageActuelle6 == "starBlack") {
                link6.prop('src', 'images/star.png');
                imageActuelle6 = 'star';
            } else if (imageActuelle6 == 'star') {
                link6.prop('src', 'images/starBlack.png');
                imageActuelle6 = 'starBlack';
            }
        });
        
 var link7 = $("#images7");
        
        var imageActuelle7 = "starBlack";

        link7.on('click', function () {
            if (imageActuelle7 == "starBlack") {
                link7.prop('src', 'images/star.png');
                imageActuelle7 = 'star';
            } else if (imageActuelle7 == 'star') {
                link7.prop('src', 'images/starBlack.png');
                imageActuelle7 = 'starBlack';
            }
        });
        
 var link8 = $("#images8");
        
        var imageActuelle8 = "starBlack";

        link8.on('click', function () {
            if (imageActuelle8 == "starBlack") {
                link8.prop('src', 'images/star.png');
                imageActuelle8 = 'star';
            } else if (imageActuelle8 == 'star') {
                link8.prop('src', 'images/starBlack.png');
                imageActuelle8 = 'starBlack';
            }
        });
        
 var link9 = $("#images9");
        
        var imageActuelle9 = "starBlack";

        link9.on('click', function () {
            if (imageActuelle9 == "starBlack") {
                link9.prop('src', 'images/star.png');
                imageActuelle9 = 'star';
            } else if (imageActuelle9 == 'star') {
                link9.prop('src', 'images/starBlack.png');
                imageActuelle9 = 'starBlack';
            }
        });
        
var link10 = $("#images10");
        
        var imageActuelle10 = "starBlack";

        link10.on('click', function () {
            if (imageActuelle10 == "starBlack") {
                link10.prop('src', 'images/star.png');
                imageActuelle10 = 'star';
            } else if (imageActuelle10 == 'star') {
                link10.prop('src', 'images/starBlack.png');
                imageActuelle10 = 'starBlack';
            }
        });
        
var link11 = $("#images11");
        
        var imageActuelle11 = "starBlack";

        link11.on('click', function () {
            if (imageActuelle11 == "starBlack") {
                link11.prop('src', 'images/star.png');
                imageActuelle11 = 'star';
            } else if (imageActuelle11 == 'star') {
                link11.prop('src', 'images/starBlack.png');
                imageActuelle11 = 'starBlack';
            }
        });


    </script>
</body>

</html>
</html>