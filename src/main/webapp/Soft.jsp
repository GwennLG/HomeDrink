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
    <link type="text/css" rel="stylesheet" href="CSS/Soft.css">
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
    
 
    <section class="SansAlcool">
            <% int numId = 1; %>
            <h1>Boissons sans alcool disponnibles</h1>
            <article class="card">

                <div class="card_thumb">
                    <a href="#">
                        <img src="images/ananas.png" alt="jus d'ananas">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">3 €</span>
                    <span class="card_date_month">Jus d'Ananas</span>
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
                </div>
                <footer class="card_footer">
                    <p>Jus d'ananas 100% pur jus</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/pomme.png" alt="jus de pomme">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">3 €</span>
                    <span class="card_date_month">Jus de Pomme</span>
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
                </div>
                <footer class="card_footer">
                        <p>Jus de pomme 100% pur jus.</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                    <div class="card_thumb">
                        <a href="#">
                            <img src="images/orange.jpg" alt="jus d'orange">
                        </a>
                    </div>
                    <div class="card_date">
                        <span class="card_date_day">3 €</span>
                        <span class="card_date_month">Jus d'Orange</span>
                        <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
                    </div>
                    <footer class="card_footer">
                            <p>Jus d'orange 100% pur jus.</p>
                        <input type="button" value="Ajouter au panier"></button>
                    </footer>
                </article>

            <article class="card">
                <div class="card_thumb">
                    <a href="#">
                        <img src="images/cola.jpg" alt="cola">
                    </a>
                </div>
                <div class="card_date">
                    <span class="card_date_day">2.5 €</span>
                    <span class="card_date_month">Breizh Cola</span>
                    <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
                </div>
                <footer class="card_footer">
                        <p>Cola régional.</p>
                    <input type="button" value="Ajouter au panier"></button>
                </footer>
            </article>

            <article class="card">
                        <div class="card_thumb">
                            <a href="#">
                                <img src="images/eau.jpg" alt="eaugazeuse">
                            </a>
                        </div>
                        <div class="card_date">
                            <span class="card_date_day">2 €</span>
                            <span class="card_date_month">San Pellegrino</span>
                            <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
                        </div>
                        <footer class="card_footer">
                                <p>Eau gazeuse.</p>
                            <input type="button" value="Ajouter au panier"></button>
                        </footer>
                
            </article>

            <article class="card">
                    <div class="card_thumb">
                        <a href="#">
                            <img src="images/tonic.jpg" alt="tonic">
                        </a>
                    </div>
                    <div class="card_date">2 €</span>
                        <span class="card_date_month">Schweppes tonic</span>
                        <img id="images<%out.print(numId++);%>" src="images/starBlack.png">
                    </div>
                    <footer class="card_footer">
                            <p>Boisson gazeuse aux extraits d'oranges amères.</p>
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
    </script>
</body>

</html>
