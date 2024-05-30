<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="shortcut icon" href="https://img.freepik.com/vecteurs-libre/modele-logo-jeu-video-style-retro_23-2147823232.jpg?size=338&ext=jpg&ga=GA1.1.523418798.1711843200&semt=ais" type="image/x-icon">
<link href="https://fonts.googleapis.com/css2?family=Cormorant:ital,wght@0,300..700;1,300..700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="CSS/style.css">
    <title>GameVerse - Index</title>
</head>
<body>
<header>
    <nav>
        <h4 class="Nom">GameVerse 🌌</h4>
        <h5 class="Fait">Website made by : Esteban / Alexander</h5>
    <a href='login.html'><div class='login'><p>Inscrire un jeu</p></div></a>
</header>
<?php 
    $test = "'";
    echo $test;
    $connexion = mysqli_connect('localhost','root','');
    $base=mysqli_select_db($connexion,'forum-jeu');
    $commande = mysqli_query($connexion,"SELECT * FROM jeu, createur  ");
    ?>
    <div class="Milieu">
    <?php
    While($tableau = mysqli_fetch_assoc($commande)){
        echo "<div class='Horizontale'><div class='test2'><img class='size' src='".$tableau['Img']."'><h1>".$tableau['Plateform_Jeu']."</h1></div>";
        echo "<div class='Verticale'><div class'cc'><h1 class='titre'>".$tableau['Titre_Jeu']."</h1>
                <p class='description'>".$tableau['Description_Jeu']."</p>
                <div class='test'>
                <p>Date : ".$tableau['Date_Jeu']."</p>
                <p>Créateur : ".$tableau['nom_Studio']."</p>
                <p>Prix : ".$tableau['Prix_Jeu']." euros</p>
                </div>
            </div>
        </div>
      </div>
      </div>
      <br>";
    }
    ?>
</div>
<footer>
    <h2>Copyright © 2024</h2>
</footer>
<script src="JS/raccourci.js"></script>
</body>
</html>