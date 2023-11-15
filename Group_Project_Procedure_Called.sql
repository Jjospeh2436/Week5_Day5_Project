ALTER TABLE Car
ADD is_serviced BOOLEAN;

CREATE PROCEDURE add_service(
	customer INTEGER,
	car INTEGER,
	_year NUMERIC(4,0)
)
LANGUAGE plpgsql
AS $$
BEGIN
	
	UPDATE Car
	SET is_serviced = True
	WHERE customer_id = customer AND car_id = car AND year_made = _year
	
	COMMIT;
	
END;
$$

CALL add_service(1, 1, 2020)