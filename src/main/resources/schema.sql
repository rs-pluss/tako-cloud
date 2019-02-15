CREATE TABLE if NOT EXISTS Ingredient (
ID VARCHAR (10
) NOT NULL,
NAME VARCHAR (25
) NOT NULL,
TYPE VARCHAR (10
) NOT NULL
);

CREATE TABLE if NOT EXISTS Taco (
ID IDENTITY,
NAME VARCHAR (50
) NOT NULL,
  createAt TIMESTAMP NOT NULL
);

CREATE TABLE if NOT EXISTS Taco_Ingredients (
  taco bigint NOT NULL,
  ingredient VARCHAR (10
) NOT NULL
);

ALTER TABLE Taco_Ingredients
  ADD FOREIGN KEY (taco) REFERENCES Taco (id);
ALTER TABLE Taco_Ingredients
  ADD FOREIGN KEY (ingredient) REFERENCES Ingredient (id);

CREATE TABLE if NOT EXISTS Taco_Order (
ID IDENTITY,
  deliveryName VARCHAR (50
) NOT NULL,
  deliveryStreet VARCHAR (50
) NOT NULL,
  deliveryCity VARCHAR (50
) NOT NULL,
  deliveryState VARCHAR (2
) NOT NULL,
  deliveryZip VARCHAR (10
) NOT NULL,
  ccNumber VARCHAR (16
) NOT NULL,
  ccExpiration VARCHAR (5
) NOT NULL,
  ccCVV VARCHAR (3
) NOT NULL,
  placedAt TIMESTAMP NOT NULL
);

CREATE TABLE if NOT EXISTS Taco_Order_Tacos (
  tacoOrder bigint NOT NULL,
  taco bigint NOT NULL
);

ALTER TABLE Taco_Order_Tacos
  ADD FOREIGN KEY (tacoOrder) REFERENCES Taco_Order (id);
ALTER TABLE Taco_Order_Tacos
  ADD FOREIGN KEY (taco) REFERENCES Taco (id);
