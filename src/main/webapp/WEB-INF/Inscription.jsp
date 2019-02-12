<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <!--indique les fonctionnalité utilisé-->
    <meta charset="utf-8">
    <!--encodage de caractère, a placer a en premier dans head !!!!!!!-->
    <title>Inscription</title>
    <!--titre de l onglet-->
    <link link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <!--relation avec des documents externe-->
    <link rel="stylesheet" href="CSS/Inscription.css">
    <link rel="icon" href="images/icon.jpg">
    <link type="text/css" rel="stylesheet" href="CSS/Inscription.css">
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
                        <li><a href="#">Vins / Spiriteux</a></li>
                        <li><a href="#">Bières</a></li>
                        <li><a href="#">Sans alcool</a></li>
                        <li><a href="#">Shooter</a></li>
                        <li><a href="#">Cocktails</a></li>
                    </ul>
                </li>
                <li><a href="#">Création</a></li>
                <li><a href="#">Coffrets</a></li>
                <li><a href="#">Apéritifs</a></li>
                <li><a href="#">Login</a>
                    <ul>
                        <li><a href="/HomeDrink/ConnexionServlet">Connexion</a></li>
                        <li><a href="/HomeDrink/InscriptionServlet">Créer un compte</a></li>
                        <li><a href="#">Informations Bancaire</a></li>
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
        <form action="InscriptionServlet" method="GET">
            <div class="contenu">
                <fieldset>
                    <p>
                        <label for="Nom">Nom</label>
                        <input type="text" id="nom" name="nom" placeholder="Nom" required="required"/>
                    </p>
                    <span id="missingNom"></span>

                    <p>
                        <label for="Prenom">Prenom</label>
                        <input type="text" id="prenom" name="prenom" placeholder="Prenom" required="required" pattern = "^([a-zA-ZéêèîïÌÎÈÉéêëèàçîï]){0,50}"/>
                    </p>
                   
                    <p>
                        <label for="email">E-mail</label>
                        <input type="email" id="email" name="email" placeholder="abc@lol.fr" required="required"/>
                    </p>

                    <p>
                        <label for="password">Mot de passe</label>
                        <input type="text" id="password" name="password" placeholder="Mot de passe" required="required"/>
                    </p>
                   
                   
                    
                    <p>
                        <label for="Ville">Ville</label>
                        <input type="text" id="ville" name="ville" placeholder="Ville" required="required"/>
                    </p>

                    <p>
                        <label for="code">Code Postal <i>(5 chiffres)</i></label>
                        <input type="text" id="code" name="code"  placeholder="ex:70000" required="required" pattern="^([0-9]){5}"/>
                    </p>
                    
                    <p>
                        <label for="adresse">Adresse</label>
                        <input type="text" id="adresse" name="adresse" placeholder="Adresse" required="required"/>
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