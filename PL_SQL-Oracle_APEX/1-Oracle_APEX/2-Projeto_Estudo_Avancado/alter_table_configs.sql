select * from eba_country_sub_regions

select * from eba_country_regions



-- 1) Adiciona a coluna
ALTER TABLE eba_country_sub_regions ADD (
    regions_id NUMBER
);

-- 2) Popula a coluna (UPDATEs)
UPDATE eba_country_sub_regions SET regions_id = 10 WHERE name = 'Latin America and the Caribbean';
UPDATE eba_country_sub_regions SET regions_id = 10 WHERE name = 'Northern America';

UPDATE eba_country_sub_regions SET regions_id = 20 WHERE name = 'Northern Europe'
UPDATE eba_country_sub_regions SET regions_id = 20 WHERE name = 'Southern Europe'
UPDATE eba_country_sub_regions SET regions_id = 20 WHERE name = 'Eastern Europe'
UPDATE eba_country_sub_regions SET regions_id = 20 WHERE name = 'Western Europe'

UPDATE eba_country_sub_regions SET regions_id = 30 WHERE name = 'Southern Asia';
UPDATE eba_country_sub_regions SET regions_id = 30 WHERE name = 'Eastern Asia';
UPDATE eba_country_sub_regions SET regions_id = 30 WHERE name = 'South-eastern Asia';
UPDATE eba_country_sub_regions SET regions_id = 30 WHERE name = 'Western Asia';
UPDATE eba_country_sub_regions SET regions_id = 30 WHERE name = 'Central Asia';

UPDATE eba_country_sub_regions SET regions_id = 40 WHERE name = 'Australia and New Zealand';
UPDATE eba_country_sub_regions SET regions_id = 40 WHERE name = 'Melanesia';
UPDATE eba_country_sub_regions SET regions_id = 40 WHERE name = 'Micronesia';
UPDATE eba_country_sub_regions SET regions_id = 40 WHERE name = 'Polynesia';

UPDATE eba_country_sub_regions SET regions_id = 50 WHERE name = 'Northern Africa';
UPDATE eba_country_sub_regions SET regions_id = 50 WHERE name = 'Sub-Saharan Africa';
UPDATE eba_country_sub_regions SET regions_id = 50 WHERE name = 'Eastern Africa';
UPDATE eba_country_sub_regions SET regions_id = 50 WHERE name = 'Middle Africa';
UPDATE eba_country_sub_regions SET regions_id = 50 WHERE name = 'Western Africa';

COMMIT;

-- 3) Cria a foreign key
ALTER TABLE eba_country_sub_regions ADD (
    CONSTRAINT fk_subreg_region
    FOREIGN KEY (regions_id)
    REFERENCES eba_country_regions (id)
);