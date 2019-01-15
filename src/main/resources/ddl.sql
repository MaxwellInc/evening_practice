#ddl of shopdb
#additionaly store users in database (name, password, admin or no)

-- (c) Vova
create table DBUsers
(
	userId int auto_increment not null primary key,
    firstName nvarchar(30),  -- name of user (Vova, Petya...)
    userName nvarchar(30) not null, -- db username
    userPassword nvarchar(40) not null, -- encrypted password
    userStatus tinyint -- admin or not
);

create table Shop
(
	productID int auto_increment not null primary key,
    productType nvarchar(30) unique not null,
    productPrice decimal not null,
    producingCountry nvarchar(20),
    yearOfManufecture int,
    additionalInfo nvarchar(100),
    productStatus tinyint
);
