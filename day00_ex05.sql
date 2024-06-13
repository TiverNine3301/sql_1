SELECT
	(SELECT p.name
     FROM person p
     WHERE p.id = po.person_id) as name -- внутренний запрос в главном предложении select
FROM person_order po
WHERE po.menu_id in (13, 14, 18) And po.order_date = '2022-01-07';