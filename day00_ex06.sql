SELECT
	(SELECT p.name
     FROM person p
     WHERE p.id = po.person_id) as name,
     CASE
     	when (SELECT p.name
              FROM person p
              WHERE p.id = po.person_id) = 'Denis' THEN TRUE
        ELSE FALSE
    end as check_name
FROM person_order po
WHERE po.menu_id in (13, 14, 18) AND po.order_date = '2022-01-07';