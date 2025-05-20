
CREATE DATABASE AbrigoAnimais;
USE AbrigoAnimais;


CREATE TABLE Animais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    especie VARCHAR(50),
    raca VARCHAR(100),
    idade INT,
    data_entrada DATE
);

CREATE TABLE Adocoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT,
    nome_adotante VARCHAR(100),
    data_adocao DATE,
    FOREIGN KEY (id_animal) REFERENCES Animais(id)
);

INSERT INTO Animais (nome, especie, raca, idade, data_entrada) VALUES
('Bolt', 'Cão', 'Labrador', 3, '2024-10-01'),
('Mia', 'Gato', 'Siamês', 2, '2024-11-15'),
('Thor', 'Cão', 'Pitbull', 5, '2024-09-10'),
('Luna', 'Gato', 'Persa', 1, '2025-01-05'),
('Max', 'Cão', 'Poodle', 4, '2024-12-20'),
('Nina', 'Gato', 'Maine Coon', 3, '2025-02-14');

INSERT INTO Adocoes (id_animal, nome_adotante, data_adocao) VALUES
(1, 'Carlos Silva', '2025-03-10'),
(2, 'Ana Oliveira', '2025-03-12'),
(5, 'João Pereira', '2025-04-01');

SELECT * FROM Animais
WHERE id NOT IN (SELECT id_animal FROM Adocoes);

SELECT * FROM Animais;


SELECT * FROM Adocoes;

SELECT a.especie, COUNT(*) AS total_adotados
FROM Animais a
JOIN Adocoes d ON a.id = d.id_animal
GROUP BY a.especie;

SELECT a.nome AS nome_animal, a.especie, a.raca, d.nome_adotante, d.data_adocao
FROM Animais a
JOIN Adocoes d ON a.id = d.id_animal;

INSERT INTO Animais (nome, especie, raca, idade, data_entrada) VALUES
('Rex', 'Cão', 'Pastor Alemão', 6, '2025-04-15'),
('Bella', 'Cão', 'Golden Retriever', 2, '2025-04-20'),
('Simba', 'Gato', 'Bengal', 3, '2025-04-10'),
('Toby', 'Cão', 'Beagle', 4, '2025-03-25'),
('Lili', 'Gato', 'Angorá', 5, '2025-03-30'),
('Charlie', 'Cão', 'Chihuahua', 1, '2025-04-22'),
('Luna', 'Cão', 'Husky Siberiano', 3, '2025-04-18'),
('Garfield', 'Gato', 'Persa', 7, '2025-04-05');


select * from animais
