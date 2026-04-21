SELECT
id_client,
nom_client,
prenom_client,
email_client,
id_segment
FROM `pouet-493607.VTC_star_train.dim_clients`
WHERE email_client IS NOT NULL