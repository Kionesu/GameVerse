<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="https://img.freepik.com/vecteurs-libre/modele-logo-jeu-video-style-retro_23-2147823232.jpg?size=338&ext=jpg&ga=GA1.1.523418798.1711843200&semt=ais" type="image/x-icon">

    <link rel="stylesheet" href="CSS/Ajout_jeu.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <meta http-equiv="refresh" content="5;url=index.php">
    <title>GameVerse</title>
</head>
<body>
<?php
// Vérifier si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données du formulaire
    $titre_jeu = $_POST["titre_jeu"];
    $prix_jeu = $_POST["prix_jeu"];
    $date_jeu = $_POST["date_jeu"];
    $plateform_jeu = $_POST["plateform_jeu"];
    $description_jeu = $_POST["description_jeu"];
    $img = $_POST["img"];

    // Connexion à la base de données
    $connexion = mysqli_connect('localhost', 'root', '', 'forum-jeu');

    // Vérifier la connexion
    if (!$connexion) {
        die("La connexion à la base de données a échoué : " . mysqli_connect_error());
    }

    // Requête SQL pour insérer les valeurs
    $sql = "INSERT INTO jeu (Titre_Jeu, Prix_Jeu, Date_Jeu, Plateform_Jeu, Description_Jeu, Img) 
            VALUES ('$titre_jeu', $prix_jeu, '$date_jeu', '$plateform_jeu', '$description_jeu', '$img')";

    // Exécuter la requête et vérifier si l'insertion a réussi
    if (mysqli_query($connexion, $sql)) {
        echo "<body style='background: #232323;'>
        <div class='center'>
        <div class='Ajout'> AJOUTS D'UN JEU</div>
        <br>
        <div class='bloc'></div>
        <div class='bloc2'></div>
        <div class='jeu'>
        <p>Votre jeu a été ajouté avec succès.</p>
        <div class='Redirection'>
            <p>Redirection en cours ...</p>
        </div>
        </div>
        </div>";
    } else {
        echo "Erreur : " . $sql . "<br>" . mysqli_error($connexion);
    }

    // Fermer la connexion à la base de données
    mysqli_close($connexion);
}
?>

</body>
</html>