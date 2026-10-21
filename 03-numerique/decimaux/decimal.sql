-- Guide MySQL et MariaDB
-- Sujet : DECIMAL
-- Objectif : illustrer le stockage exact de valeurs décimales.
-- À tester sur la version cible avant publication.

CREATE TABLE IF NOT EXISTS exemple_decimal (
    id INT PRIMARY KEY AUTO_INCREMENT,
    montant DECIMAL(10,2) NOT NULL
);

INSERT INTO exemple_decimal (montant)
VALUES (19.99), (85.46);

SELECT id, montant
FROM exemple_decimal
ORDER BY id;

SELECT SUM(montant) AS total
FROM exemple_decimal;

-- Résultat attendu pour le jeu de données ci-dessus : total = 105.45
