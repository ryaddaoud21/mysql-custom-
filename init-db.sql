-- Création des bases de données
CREATE DATABASE IF NOT EXISTS client_db;
CREATE DATABASE IF NOT EXISTS produit_db;
CREATE DATABASE IF NOT EXISTS commande_db;

-- Utiliser la base de données client_db
USE client_db;

-- Création de la table clients
CREATE TABLE IF NOT EXISTS clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    Prenom VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Telephone VARCHAR(20),
    Adresse VARCHAR(255),
    Ville VARCHAR(255),
    CodePostal VARCHAR(10),
    Pays VARCHAR(255)
);

-- Insertion de 10 valeurs dans clients
INSERT INTO clients (Nom, Prenom, Email, Telephone, Adresse, Ville, CodePostal, Pays) VALUES
('John', 'Doe', 'john.doe@example.com', '123456789', '123 Rue Principale', 'Paris', '75001', 'France'),
('Jane', 'Smith', 'jane.smith@example.com', '987654321', '456 Avenue des Champs', 'Lyon', '69001', 'France'),
('Alice', 'Johnson', 'alice.johnson@example.com', '555123456', '789 Boulevard de la Liberté', 'Marseille', '13001', 'France'),
('Bob', 'Williams', 'bob.williams@example.com', '444987654', '321 Rue de la Paix', 'Bordeaux', '33000', 'France'),
('Charlie', 'Brown', 'charlie.brown@example.com', '333789123', '654 Rue Victor Hugo', 'Toulouse', '31000', 'France'),
('David', 'Taylor', 'david.taylor@example.com', '888123456', '12 Rue des Fleurs', 'Nantes', '44000', 'France'),
('Emma', 'Davis', 'emma.davis@example.com', '777654321', '34 Rue de la Mer', 'Nice', '06000', 'France'),
('Lucas', 'Martinez', 'lucas.martinez@example.com', '666987654', '89 Rue du Soleil', 'Strasbourg', '67000', 'France'),
('Sophie', 'Lefevre', 'sophie.lefevre@example.com', '555222111', '45 Boulevard Saint-Germain', 'Paris', '75005', 'France'),
('Maxime', 'Dubois', 'maxime.dubois@example.com', '444333222', '67 Avenue de la République', 'Lille', '59000', 'France');

-- Utiliser la base de données produit_db
USE produit_db;

-- Création de la table produits
CREATE TABLE IF NOT EXISTS produits (
    ProduitID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    Description TEXT,
    Prix DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL,
    Categorie VARCHAR(255)
);

-- Insertion de 10 valeurs dans produits
INSERT INTO produits (Nom, Description, Prix, Stock, Categorie) VALUES
('iPhone 13', 'Smartphone Apple avec écran OLED 6.1 pouces', 899.99, 50, 'Électronique'),
('T-shirt Nike', 'T-shirt de sport respirant', 29.99, 150, 'Vêtements'),
('Pâtes Barilla', 'Pâtes italiennes de qualité supérieure', 1.99, 500, 'Alimentation'),
('Chaise de bureau ergonomique', 'Chaise ajustable pour bureau avec support lombaire', 119.99, 80, 'Meubles'),
('Ballon de football Adidas', 'Ballon de football professionnel', 25.99, 100, 'Sport et Loisirs'),
('Casque Bose QC35', 'Casque sans fil à réduction de bruit', 299.99, 40, 'Électronique'),
('Jeans Levi’s 501', 'Jean classique coupe droite', 79.99, 120, 'Vêtements'),
('Riz basmati', 'Riz basmati de haute qualité', 3.99, 200, 'Alimentation'),
('Table basse en chêne', 'Table basse en bois de chêne massif', 199.99, 30, 'Meubles'),
('Tapis de yoga', 'Tapis de yoga antidérapant pour séances de sport', 15.99, 75, 'Sport et Loisirs');

-- Utiliser la base de données commande_db
USE commande_db;

-- Création de la table commandes
CREATE TABLE IF NOT EXISTS commandes (
    CommandeID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    ProduitID INT NOT NULL,
    DateCommande DATE NOT NULL,
    Statut VARCHAR(100) DEFAULT 'En cours',
    MontantTotal DECIMAL(10, 2) NOT NULL
);

-- Insertion de 10 valeurs dans commandes
INSERT INTO commandes (ClientID, ProduitID, DateCommande, Statut, MontantTotal) VALUES
(1, 1, '2024-09-01', 'En cours', 1799.98),
(2, 2, '2024-09-02', 'Livrée', 59.98),
(3, 3, '2024-09-03', 'Annulée', 3.98),
(4, 4, '2024-09-04', 'En cours', 239.98),
(5, 5, '2024-09-05', 'En cours', 51.98),
(6, 6, '2024-09-06', 'Livrée', 299.99),
(7, 7, '2024-09-07', 'Annulée', 159.98),
(8, 8, '2024-09-08', 'En cours', 7.98),
(9, 9, '2024-09-09', 'En cours', 399.98),
(10, 10, '2024-09-10', 'En cours', 15.99);
