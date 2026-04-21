SELECT
id_vehicule,
modele_vehicule,
id_type_vehicule,
immatriculation
FROM `pouet-493607.VTC_star_train.dim_vehicules`
WHERE immatriculation IS NOT NULL