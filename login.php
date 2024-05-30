<!DOCTYPE html>
<html lang="en">
<head>
<link href="CSS/Error_log.css" rel="stylesheet">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/Connexion.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="shortcut icon" href="https://img.freepik.com/vecteurs-libre/modele-logo-jeu-video-style-retro_23-2147823232.jpg?size=338&ext=jpg&ga=GA1.1.523418798.1711843200&semt=ais" type="image/x-icon">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="5;url=login.html">
    <title>Redirection</title>
</head>
<body>
    <?php 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $identifiant = $_POST["identifiant"];
    $mot_de_passe = $_POST["MDP"];
    $connexion = mysqli_connect('localhost', 'root', '', 'forum-jeu');
    if (!$connexion) {
        die("La connexion à la base de données a échoué : " . mysqli_connect_error());
    }
    $identifiant = mysqli_real_escape_string($connexion, $identifiant);
    $mot_de_passe = mysqli_real_escape_string($connexion, $mot_de_passe);
    $sql = "SELECT * FROM login WHERE identifiant='$identifiant' AND MotDePasse='$mot_de_passe'";
    $resultat = mysqli_query($connexion, $sql);
    if (mysqli_num_rows($resultat) == 1) {

        header("Location: rajouter.html");
        exit();
    } else {
        ?>
            <div class="center">
    <h2><div class="Erreur">ERREUR CONNEXION</h2>
        <br>
        <div class="Erreur2">
        <p>ERREUR : Nom  d’utilisateur  ou mots de passe non valide .  Veuillez réessayer.</p>
        </div>
        <div class="bloc"></div>
        <div class="bloc2"></div>
        <br>
        <div class="Redirection">Redirection en cours ...</div>
    </div>
    <?php
    }
    mysqli_close($connexion);
}
?>

    
</body>
</html>