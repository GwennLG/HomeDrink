<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="homeDrink.css" rel="stylesheet">
    <link rel="icon" href="images/icon.jpg">
    <link type="text/css" rel="stylesheet" href="CSS/Aperitif.css">
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
                <li><a href="#"><div class="basket"><img id= "panier" src="images/panier.png" alt="panier">Panier</div></a></li>
            </ul>
        </nav>
        <div class="visites">
            <%! int compteur =0;%>
            <% compteur++; %> Nombre de visites: <%=compteur%>
        </div>
    </header>
    
     <div class=boissons>
                <img src="images/guinness.jpg" alt="Guinness">
                <h2>Plats à base de Guinness</h2>
                <p> Si la Guinness est une boisson qui saura vous rafraîchir, vous pouvez également utiliser cette
                        boisson pour des recettes
                        qui pourront éveiller votre curiosité: <br><br>
                        - Huîtres ou moules à la Guinness: <a
                                href="https://www.papillesetpupilles.fr/2012/06/moules-a-la-guinness.html/"> lien
                                recette </a> <br>
                        - Jaret d'Agneau braisé à la Guinness: <a
                                href="https://www.guide-irlande.com/gastronomie/jarret-agneau-braise-guinness/"> lien
                                recette </a>
                </p>
        </div>

        <div class=boissons>
                <img src="images/bayleys.png" alt="Bailey's">
                <h2>Plats à base de Bailey's</h2>
                <p>Le bailey's, cette crème de whiskey peut servir de base à la réalisation de desserts qui réveilleront
                        et enchanteront vos papilles.
                        Voici notre sélection de desserts à base Bailey's: <br><br>
                        - Madeleine Bailey's: <a href="https://www.750g.com/madeleine-baileys-r91555.htm">lien
                                recette.</a> <br>
                        - Tiramisu au Baily's: <a
                                href="https://www.marmiton.org/recettes/recette_tiramisu-baileys_167242.aspx">lien
                                recette.</a>
                </p>

        </div>

        <div class=boissons>
                <img src="images/amaretto.jpg" alt="Amaretto">
                <h2>Plats à base d'Amaretto</h2>
                <p>
                        Cet liqueur aux amandes amères, venue tout droit d'Italie, qui peut être consommée à l'apéritif
                        ou comme digestif est un parfait complément pour vos desserts.
                        Si vous n'avez encore jamais essayé un tiramisu à base d'Amaretto c'est le moment de vous jeter
                        à l'eau et de vous mettre aux fourneaux.
                        Voici deux idées de desserts où vous pourrez utiliser cette liqueur: <br><br>
                        - Tiramisu aux abricots: <a
                                href="https://odelices.ouest-france.fr/recette/Tiramisu-aux-abricots-r833/">lien
                                recette.</a> <br>
                        - Parfait glacé aux spéculos et Amaretto: <a
                                href="https://www.750g.com/parfait-glace-aux-speculoos-amaretto-r2187.htm">lien
                                recette.</a>
                </p>

        </div>

        <div class=boissons>
                <img src="images/vodka.jpg" alt="Vodka">
                <h2>Plats accompagnant la Vodka</h2>
                <p> La vodka n'est pas la première boisson qui vous vient à l'esprit pour accompagner votre repas ou
                        votre apéritif. Pourtant cette
                        boisson se marie très bien avec différents plats. Voici les choix que nous avons retenu pour
                        vous: <br><br>
                        - Saumon fumé au chèvre: <a
                                href="https://www.marmiton.org/recettes/recette_saumon-fume-au-chevre_16100.aspx"> lien
                                recette. </a> <br>
                        - Blinis: <a href="https://www.marmiton.org/recettes/recette_blinis_23421.aspx"> lien recette.
                        </a> <br>
                        - Caviar d'Aubergine pour accompagner vos Blinis: <a
                                href="https://www.marmiton.org/recettes/recette_caviar-d-aubergines_17847.aspx">lien
                                recette.</a>
                </p>
        </div>

        <div class=boissons>
                <img src="images/gin.jpg" alt="Gin">
                <h2>Plats à base de Gin</h2>
                <p> Au même titre que d'autres alcools, le Gin peut être intégré dans certaines recettes pour relever le
                        goùt de vos plats/desserts.
                        Nous avons sélectionné deux recettes pour vous: <br><br>
                        - Saumon mariné et sauce tartare: <a
                                href="http://www.elle.fr/Elle-a-Table/Recettes-de-cuisine/Saumon-marine-et-sauce-tartare-3752871">
                                lien recette. </a><br>
                        - Sorbet rhubarbe au Gin: <a
                                href="https://www.marmiton.org/recettes/recette_blinis_23421.aspxhttp://www.elle.fr/Elle-a-Table/Recettes-de-cuisine/Sorbet-minute-de-rhubarbe-au-gin-3674621">
                                lien recette. </a>
                </p>
        </div>

        <div class=boissons>
                <img src="images/cointreau.jpg" alt="Cointreau">
                <h2>Plats à base de Cointreau</h2>
                <p>
                        Cet alcool français à base d'écorces d'oranges douces et amères relèvera vos plats et entrainera
                        une explosion de saveurs dans votre bouche.
                        Voici deux idées de recettes faciles à réaliser et qui raviront tous vos convives sans
                        exception: <br><br>
                        - Magret de canard à l'orange et au cointreau <a
                                href="https://www.750g.com/magret-de-canard-a-lorange-et-au-cointreau-r45371.htm"> lien
                                recette. </a> <br>
                        - Pavé double chocolat au cointreau <a
                                href="https://cuisine.notrefamille.com/recettes-cuisine/pave-double-chocolat-au-cointreau-_28842-r.html">
                                lien recette. </a> <br>
                </p>
        </div>

        <div class=boissons>
                <img src="images/anjou.png" alt="Anjou">
                <h2>Plats accompagnant de l'Anjou</h2>
                <p>
                        Ce rosé à la robe intense qui adoucira votre palet acompagera vos repas ou apéritif dans la joie
                        et la bonne humeur.
                        Deux idées recette avec ce rosé: <br><br>
                        - Camembert frit: <a href="https://www.marmiton.org/recettes/recette_camembert-frit_22934.aspx">
                                lien recette. </a> <br>
                        - Gateau omelette aux girolles: <a
                                href="https://www.marmiton.org/recettes/recette_omelette-aux-girolles-ail-et-persil_52045.aspx">
                                lien recette. </a>
                </p>
        </div>

        <div class=boissons>
                <img src="images/brouilly.png" alt="Brouilly">
                <h2>Plats accompagnant du Brouilly</h2>
                <p>
                        Ce vin rouge, robuste et élégant accompagenra à merveille vos repas. Idées de recettes avec du
                        Brouilly: <br><br>
                        - Raclette: <a href="https://recettes.de/raclette"> lien recette. </a> <br>
                        - Dinde au miel: <a
                                href="https://www.marmiton.org/recettes/recette_cuisse-de-dinde-au-miel_27001.aspx">
                                lien recette. </a>

                </p>
        </div>

        <div class=boissons>
                <img src="images/chardonnay.jpg" alt="Chardonnay">
                <h2>Plats accompagnant du Chardonnay</h2>
                <p>
                        Ce vin à la robe or pâle d'une incroyable finesse et d'une grande élégance, composé de délicates
                        notes d’agrumes,
                        de pomme verte, de silex ou d’acacia accompagenra vos repas à base de poissons ou de fromages.
                        Retrouvez deux idées recettes ci-dessous: <br><br>
                        - Fondue savoyarde: <a
                                href="https://www.marmiton.org/recettes/recette_veritable-fondue-savoyarde_34077.aspx">
                                lien recette. </a> <br>
                        - Lieu jaune en papillote à la vanille: <a href="https://recettes.de/raclette"> lien recette.
                        </a>
                </p>

        </div>

        <div class=boissons>
                <img src="images/muscadet.jpg" alt="Muscadet">
                <h2>Plats accompagnant du Muscadet</h2>
                <p>
                        Ce vin blanc aux parfums de pomme, d'agrumes et de fleurs blanches, à la bouche fine et
                        légèrement minérale accompagnera vos entrées ou plats à base fruits de mer.
                        Voici notre sélection: <br><br>
                        - Avocat au crabe <a href="https://www.qwant.com/?q=avocat%20au%20crabe&t=web"> lien recette.
                        </a> <br>
                        - Tacos de poisson et salsa d'ananas <a
                                href="https://www.marmiton.org/recettes/recette_tacos-de-poisson-sur-la-plaque-salsa-d-ananas_359451.aspx">
                                lien recette.</a>
                </p>
        </div>
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