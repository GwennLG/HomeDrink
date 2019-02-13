<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--type doc-->
<html lang="fr">
<!--langue de la page-->

<head>
    <!--indique les fonctionnalité utilisé-->
    <meta charset="utf-8">
    <!--encodage de caractère, a placer a en premier dans head !!!!!!!-->
    <title>Paiement</title>
    <!--titre de l onglet-->
    <link link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <!--relation avec des documents externe-->
    <link rel="stylesheet" href="paiement.css">
    <link rel="icon" href="images/icon.jpg">
     <link type="text/css" rel="stylesheet" href="CSS/Paiement.css">
    
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
    
    <section class="formulaire">
        <form action="envoi.php" method="POST">
            <div class="contenu">
                <fieldset>
                    
                    <p class = "numero">
                        <label for="numero">Numero Carte Banquaire<i>(16 chiffres)</i></label>
                        <input type="text" id="numero" name="numero" required="required" pattern="^([0-9]){16}"/>
                    </p>
<br>
                    <div class="expi">
                        <p> Date d'expiration : </p>
                        <span class="date">
                        
                            <label for="mois">Mois<i></label>
                            <input type="number" id="mois" name="mois"  required="required" min="1" max="12"/>
                        </span>   

                        <span class="date">
                            
                            <label for="annee">Année<i></label>
                            <input type="number" id="annee" name="annee"  required="required" min="4"/>
                        </span> 
                    </div> 
<br>
                    <p class="crypto">
                        <label for="cryptogramme">Cryptogramme<i>(3 chiffres)</i></label>
                        <input type="text" id="cryptogramme" name="cryptogramme" required="required" pattern="^([0-9]){3}"/>
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
    
    <script>
        var formValid = document.getElementById('bouton_envoi');

        var user = document.getElementById('nom');
        var userValidation = /^[a-zA-ZéêèîïÌÎÈÉ][A-Za-zéêëèàçîï]+([-'\s][a-zA-ZéêèîïÌÎÈÉ][A-Za-zéêëèàçîï]+)?/;
        var missingNom = document.getElementById('missingNom');

       
        
     

        formValid.addEventListener('click', validation1);

        function validation1(event)
        {
            if(user.validity.valueMissing)
            {
                event.preventDefault();
                missingNom.textContent='Nom manquant';
                missingNom.style.color='white';
                missingNom.style.background='red';
                missingNom.style.padding='3px 30px';
                missingNom.style.borderRadius='3px';
                missingNom.style.fontSize='13px';
                missingNom.style.fontWeight='700';
            }
            else if(!userValidation.test(user.value))
            {
                event.preventDefault();
                missingNom.textContent='Format incorrect';
                missingNom.style.color='white';
                missingNom.style.background='purple';
                missingNom.style.padding='3px 30px';
                missingNom.style.borderRadius='3px';
                missingNom.style.fontSize='13px';
                missingNom.style.fontWeight='700';
            }
            else
            {
                missingNom.textContent='';
                missingNom.style='none';
            }
        }

        



    </script>
</body>
</html>