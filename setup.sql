DROP TABLE IF EXISTS houseAddress;
CREATE TABLE IF EXISTS houseAddress(
    addressid INT SERIAL NOT NULL UNIQUE,
    streetAddress VARCHAR(50) NOT NULL,
    postcode VARCHAR(9) NOT NULL,
    PRIMARY KEY (addressid) 
);
DROP TABLE IF EXISTS person;
CREATE TABLE person(
    personid INT SERIAL NOT NULL UNIQUE,
    fname VARCHAR(20) NOT NULL,
    sname VARCHAR(20) NOT NULL,
    age INT CHECK(0<=age<=120),
    householdSize INT,
    addressid INT NOT NULL,
    PRIMARY KEY (personid),
    FOREIGN KEY (addressid) REFERENCES houseAddress(addressid)
);
DROP TABLE IF EXISTS house;
CREATE TABLE house(
    addressid INT NOT NULL UNIQUE,
    ownername VARCHAR(40) NOT NULL,
    FOREIGN KEY (addressid) REFERENCES houseAddress(addressid)
);
