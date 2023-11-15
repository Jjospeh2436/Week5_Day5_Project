CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(30),
  "last_name" VARCHAR(30),
  PRIMARY KEY ("customer_id")
);
CREATE TABLE "Car" (
  "car_id" SERIAL,
  "customer_id" INTEGER,
  "make" VARCHAR(30),
  "model" VARCHAR(50),
  "year_made" NUMERIC(4,0),
  PRIMARY KEY ("car_id"),
  CONSTRAINT "FK_Car.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id")
);
CREATE TABLE "Salesperson" (
  "salesperson_id" SERIAL,
  "first_name" VARCHAR(30),
  "last_name" VARCHAR(30),
  PRIMARY KEY ("salesperson_id")
);
CREATE TABLE "service_ticket" (
  "service_ticket_id" SERIAL,
  "car_id" INTEGER,
  PRIMARY KEY ("service_ticket_id"),
  CONSTRAINT "FK_service_ticket.service_ticket_id"
    FOREIGN KEY ("service_ticket_id")
      REFERENCES "Car"("car_id")
);
CREATE TABLE "invoice" (
  "invoice_id" SERIAL,
  "car_id" INTEGER,
  "salesperson_id" INTEGER,
  PRIMARY KEY ("invoice_id"),
  CONSTRAINT "FK_invoice.salesperson_id"
    FOREIGN KEY ("salesperson_id")
      REFERENCES "Salesperson"("salesperson_id")
);