CREATE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR(30), _last_name VARCHAR(30))
RETURNS void
LANGUAGE plpgsql
AS $MAIN$
BEGIN
	INSERT INTO Customer
	VALUES(_customer_id, _first_name, _last_name);
END;
$MAIN$

CREATE FUNCTION add_car(_car_id INTEGER, _make VARCHAR(30), _model VARCHAR(50), _year_made NUMERIC(4,0))
RETURNS void
LANGUAGE plpgsql
AS $MAIN$
BEGIN
	INSERT INTO Car
	VALUES(_car_id, _make, _model, _year_made);
END;
$MAIN$

CREATE FUNCTION add_sales_person(_sales_person_id INTEGER, _first_name VARCHAR(30), _last_name VARCHAR(30))
RETURNS void
LANGUAGE plpgsql
AS $MAIN$
BEGIN
	INSERT INTO Salesperson
	VALUES(_sales_person_id, _first_name, _last_name);
END;
$MAIN$

CREATE FUNCTION add_service_ticket(_service_ticket_id INTEGER)
RETURNS void
LANGUAGE plpgsql
AS $MAIN$
BEGIN
	INSERT INTO service_ticket
	VALUES(_service_ticket_id);
END;
$MAIN$

CREATE FUNCTION add_invoice(_invoice_id INTEGER)
RETURNS void
LANGUAGE plpgsql
AS $MAIN$
BEGIN
	INSERT INTO invoice
	VALUES(_invoice_id);
END;
$MAIN$

