/* Populate database with sample data. */

--ANIMALS TABLE DATA

--Animal: His name is Agumon. He was born on Feb 3rd, 2020, and currently weighs 10.23kg. He was neutered and he has never tried to escape.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Agumon',
        '2020-2-3',
        0,
        true,
        10.23
        );

--Animal: Her name is Gabumon. She was born on Nov 15th, 2018, and currently weighs 8kg. She is neutered and she has tried to escape 2 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Gabumon',
        '2018-11-15',
        2,
        true,
        8
        );

--Animal: His name is Pikachu. He was born on Jan 7th, 2021, and currently weighs 15.04kg. He was not neutered and he has tried to escape once.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Pikachu',
        '2021-1-7',
        1,
        false,
        15.04
        );

--Animal: Her name is Devimon. She was born on May 12th, 2017, and currently weighs 11kg. She is neutered and she has tried to escape 5 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Devimon',
        '2017-5-12',
        5,
        true,
        11
        );

--Animal: His name is Charmander. He was born on Feb 8th, 2020, and currently weighs -11kg. He is not neutered and he has never tried to escape.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Charmander',
        '2020-2-8',
        0,
        false,
        -11
        );

--Animal: Her name is Plantmon. She was born on Nov 15th, 2022, and currently weighs -5.7kg. She is neutered and she has tried to escape 2 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Plantmon',
        '2022-11-15',
        2,
        true,
        -5.7
        );

--Animal: His name is Squirtle. He was born on Apr 2nd, 1993, and currently weighs -12.13kg. He was not neutered and he has tried to 3 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Squirtle',
        '1993-4-2',
        3,
        false,
        -12.13
        );

--Animal: His name is Angemon. He was born on Jun 12th, 2005, and currently weighs -45kg. He is neutered and he has tried to escape once.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Angemon',
        '2005-6-12',
        1,
        true,
        -45
        );

--Animal: His name is Boarmon. He was born on Jun 7th, 2005, and currently weighs 20.4kg. He is neutered and he has tried to escape 7 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Boarmon',
        '2005-6-7',
        7,
        true,
        20.4
        );

--Animal: Her name is Blossom. She was born on Oct 13th, 1998, and currently weighs 17kg. She is neutered and she has tried to escape 3 times.
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Blossom',
        '1998-10-13',
        3,
        true,
        17
        );

--OWNERS TABLE DATA

--Sam Smith 34 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Sam Smith',
        34
        );

--Jennifer Orwell 19 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Jennifer Orwell',
        19
        );

--Bob 45 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Bob',
        45
        );

--Melody Pond 77 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Melody Pond',
        77
        );

--Dean Winchester 14 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Dean Winchester',
        14
        );

--Jodie Whittaker 38 years old.
INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Jodie Whittaker',
        38
        );

--SPECIES TABLE DATA

--Pokemon
INSERT INTO species (
    name
    ) VALUES (
        'Pokemon'
        );
        
--Digimon
INSERT INTO species (
    name
    ) VALUES (
        'Digimon'
        );

--Modify inserted animals so it includes the species_id value:

--All other animals are Pokemon
UPDATE animals SET species_id = 1;
--If the name ends in "mon" it will be Digimon
UPDATE animals SET species_id = 2 WHERE id=1;
UPDATE animals SET species_id = 2 WHERE id=2;
UPDATE animals SET species_id = 2 WHERE id=3;
UPDATE animals SET species_id = 2 WHERE id=4;
UPDATE animals SET species_id = 2 WHERE id=7;

--Modify your inserted animals to include owner information (owner_id):
--Sam Smith owns Agumon.
UPDATE animals SET owners_id = 1 WHERE name='Agumon';

--Jennifer Orwell owns Gabumon and Pikachu.
UPDATE animals SET owners_id = 2 WHERE name='Gabumon';
UPDATE animals SET owners_id = 2 WHERE name='Pikachu';

--Bob owns Devimon and Plantmon.
UPDATE animals SET owners_id = 3 WHERE name='Devimon';
UPDATE animals SET owners_id = 3 WHERE name='Plantmon';

--Melody Pond owns Charmander, Squirtle, and Blossom.
UPDATE animals SET owners_id = 4 WHERE name='Charmander';
UPDATE animals SET owners_id = 4 WHERE name='Squirtle';
UPDATE animals SET owners_id = 4 WHERE name='Blossom';

--Dean Winchester owns Angemon and Boarmon. 
UPDATE animals SET owners_id = 5 WHERE name='Angemon';       
UPDATE animals SET owners_id = 5 WHERE name='Boarmon';

--VETS TABLE DATA

--Vet William Tatcher is 45 years old and graduated Apr 23rd, 2000.
--Vet Maisy Smith is 26 years old and graduated Jan 17th, 2019.
--Vet Stephanie Mendez is 64 years old and graduated May 4th, 1981.
--Vet Jack Harkness is 38 years old and graduated Jun 8th, 2008.

INSERT INTO vets (
    name,
    age,
    date_of_graduation
    ) VALUES
    ('Vet William Tatcher', 45, '2000-4-23'),
    ('Vet Maisy Smith', 26, '2019-1-17'),
    ('Vet Stephanie Mendez', 64, '1981-5-4'),
    ('Vet Jack Harkness', 38, '2008-6-8');

--SPECIALIZATION TABLE DATA

--Vet William Tatcher is specialized in Pokemon.
--Vet Stephanie Mendez is specialized in Digimon and Pokemon.
--Vet Jack Harkness is specialized in Digimon.

INSERT INTO specializations (
    species_id,
    vets_id
    ) VALUES
    (1, 1),
    (1, 3),
    (2, 3),
    (2, 4);

--VISITS TABLE DATA

--Agumon visited William Tatcher on May 24th, 2020.
--Agumon visited Stephanie Mendez on Jul 22th, 2020.
--Gabumon visited Jack Harkness on Feb 2nd, 2021.
--Pikachu visited Maisy Smith on Jan 5th, 2020.
--Pikachu visited Maisy Smith on Mar 8th, 2020.
--Pikachu visited Maisy Smith on May 14th, 2020.
--Devimon visited Stephanie Mendez on May 4th, 2021.
--Charmander visited Jack Harkness on Feb 24th, 2021.
--Plantmon visited Maisy Smith on Dec 21st, 2019.
--Plantmon visited William Tatcher on Aug 10th, 2020.
--Plantmon visited Maisy Smith on Apr 7th, 2021.
--Squirtle visited Stephanie Mendez on Sep 29th, 2019.
--Angemon visited Jack Harkness on Oct 3rd, 2020.
--Angemon visited Jack Harkness on Nov 4th, 2020.
--Boarmon visited Maisy Smith on Jan 24th, 2019.
--Boarmon visited Maisy Smith on May 15th, 2019.
--Boarmon visited Maisy Smith on Feb 27th, 2020.
--Boarmon visited Maisy Smith on Aug 3rd, 2020.
--Blossom visited Stephanie Mendez on May 24th, 2020.
--Blossom visited William Tatcher on Jan 11th, 2021.

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES
    ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2020-5-24'),
    ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2020-7-22'),
    ((SELECT id FROM animals WHERE name = 'Gabumon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2021-2-2'),
    ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-1-5'),
    ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-3-8'),
    ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-5-14'),
    ((SELECT id FROM animals WHERE name = 'Devimon'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2021-5-4'),
    ((SELECT id FROM animals WHERE name = 'Charmander'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2021-2-24'),
    ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-12-21'),
    ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2020-8-10'),
    ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2021-4-7'),
    ((SELECT id FROM animals WHERE name = 'Squirtle'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2019-9-29'),
    ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2020-10-3'),
    ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2020-11-4'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-1-24'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-5-15'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-2-27'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-8-3'),
    ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2020-5-24'),
    ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2021-1-11');

-- Add an email column to your owners table
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animals_id, vets_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animals_id, (SELECT id FROM vets) vets_id, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

-- This will add 2.500.000 owners with full_name = 'Owner <X>' and email = 'owner_<X>@email.com' (~2min approx.)
INSERT INTO owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';