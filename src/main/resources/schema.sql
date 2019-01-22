CREATE TABLE if NOT exists Ingredient (
ID VARCHAR (10
) NOT NULL,
NAME VARCHAR (25
) NOT NULL,
TYPE VARCHAR (10
) NOT NULL
);

CREATE TABLE if NOT exists Taco (
ID IDENTITY,
NAME VARCHAR (50
) NOT NULL,
  createAt TIMESTAMP NOT NULL
);

CREATE TABLE if NOT exists Taco_Ingredients (
  taco bigint NOT NULL,
  ingredient VARCHAR (10
) NOT NULL
);

ALTER TABLE Taco_Ingredients
  ADD FOREIGN KEY (taco) REFERENCES Taco (id);
ALTER TABLE Taco_Ingredients
  ADD FOREIGN KEY (ingredient) REFERENCES Ingredient (id);

CREATE TABLE if not exists Taco_Order(
  id identity,
  deliveryName varchar(50) not null,
  deliveryStreet varchar(50) not null,
  deliveryCity varchar(50) not null,
  deliveryState varchar(2) not null,
  deliveryZip varchar(10) not null,
  ccNumber varchar(16) not null,
  ccExpiration varchar(5) not null,
  ccCVV varchar(3) not null,
  placedAt timestamp not null
);

create table if not exists Taco_Order_Tacos (
  tacoOrder bigint not null,
  taco bigint not null
);

Alter table Taco_Order_Tacos
add FOREIGN KEY (tacoOrder) REFERENCES Taco_Order(id);
Alter table Taco_Order_Tacos
add FOREIGN KEY (taco) REFERENCES Taco(id);
