SELECT
  sc.nom_segment,
  tv.nom_type_vehicule,
  COUNT(t.id_trajet) AS nombre_trajets,
  ROUND(SUM(t.montant_total),2) AS total_revenus
FROM `pouet-493607.VTC_star_train.fact_trajets` t
JOIN `pouet-493607.VTC_star_train.dim_clients` c ON t.id_client = c.id_client
JOIN `pouet-493607.VTC_star_train.segments_clients` sc ON c.id_segment = sc.id_segment
JOIN `pouet-493607.VTC_star_train.dim_vehicules` v ON t.id_vehicule = v.id_vehicule
JOIN `pouet-493607.VTC_star_train.types_vehicule` tv ON v.id_type_vehicule = tv.id_type_vehicule
GROUP BY sc.nom_segment, tv.nom_type_vehicule
ORDER BY total_revenus DESC