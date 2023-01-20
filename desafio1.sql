DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.planos(
      plano_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      plano VARCHAR(45) NOT NULL,
      valor_plano DOUBLE NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuarios(
      usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      usuario VARCHAR(45) NOT NULL,
      idade INT NOT NULL,
      plano_id INT NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artistas(
      artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      artista VARCHAR(45) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albuns(
      album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      album VARCHAR(45) NOT NULL,
      ano_lancamento INT NOT NULL,
      artista_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.cancoes(
      cancao_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      cancao VARCHAR(45) NOT NULL,
      duracao_segundos INT NOT NULL,
      artista_id INT NOT NULL,
      album_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
      FOREIGN KEY (album_id) REFERENCES albuns (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historico(
      data_reproducao INT NOT NULL,
      usuario_id INT NOT NULL,
      cancao_id INT NOT NULL,
      FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
      FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id),
      PRIMARY KEY (usuario_id, cancao_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.seguidores(
      usuario_id INT NOT NULL,
      artista_id INT NOT NULL,
      FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
      FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
      PRIMARY KEY (usuario_id, artista_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.planos (plano, valor_plano)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('pessoal', 6.99),
    ('universitário', 5.99);

  INSERT INTO SpotifyClone.usuarios (usuario, idade, plano_id)
  VALUES
    ('Barbara Liskov', '82', 1),
    ('Robert Cecil Martin', '58', 1),
    ('Ada Lovelace', '37', 2),
    ('Martin Fowler', '46', 2),
    ('Sandi Metz', '58', 2),
    ('Paulo Freire', '19', 4),
    ('Bell Hooks', '26', 4),
    ('Christopher Alexander', '85', 3),
    ('Judith Butler', '45', 3),
    ('Jorge Amado', '58', 3);

  INSERT INTO SpotifyClone.artistas (artista)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.albuns (album, ano_lancamento, artista_id)
  VALUES
    ('Renaissance',2022,1),
    ('Jazz',1978,2),
    ('Hot Space',1982,2),
    ('Falso Brilhante',1998,3),
    ('Vento de Maio',2001,3),
    ('QVVJFA?',2003,4),
    ('Somewhere Far Beyond',2007,5),
    ('I Put A Spell On You',2012,6);

  INSERT INTO SpotifyClone.cancoes (cancao, duracao_segundos, artista_id, album_id)
  VALUES
    ('BREAK MY SOUL',279,1,1),
    ("VIRGO’S GROOVE",369,1,1),
    ('ALIEN SUPERSTAR',116,1,1),
    ("Don’t Stop Me Now",203,2,2),
    ('Under Pressure',152,2,3),
    ('Como Nossos Pais',105,3,4),
    ('O Medo de Amar é o Medo de Ser Livre',207,3,5),
    ('Samba em Paris',267,4,6),
    ("The Bard’s Song",244,5,7),
    ('Feeling Good',100,6,8);

  INSERT INTO SpotifyClone.historico (data_reproducao, usuario_id, cancao_id)
  VALUES
    (2022,1,8),
    (2020,1,2),
    (2020,1,10),
    (2022,2,10),
    (2020,2,7),
    (2020,3,10),
    (2020,3,2),
    (2021,4,8),
    (2022,5,8),
    (2020,5,5),
    (2017,6,7),
    (2017,6,1),
    (2011,7,4),
    (2012,8,4),
    (2022,9,9),
    (2015,10,3);

  INSERT INTO SpotifyClone.seguidores (usuario_id, artista_id)
  VALUES
    (1,1),
    (1,2),
    (1,3),
    (2,1),
    (2,3),
    (3,2),
    (4,4),
    (5,5),
    (5,6),
    (6,6),
    (6,1),
    (7,6),
    (9,3),
    (10,2);
