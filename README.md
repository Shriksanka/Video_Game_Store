# PL/SQL Project: Video Game Store Database

![Project Image](Diagram_encji.JPG)

## Table of Contents

- [Project Description](#project-description)
- [Table Structure](#tabel-structure)
- [Sample Queries](#sample-queries)
- [Triggers](#triggers)
- [Contributor](#contributor)
- [License](#license)

## Project Description

This SQL project involves the creation of a database schema for a video game store. It includes the definition of tables for various entities such as game categories, game genres, developers, games, orders, customers, employees, job positions, and more. The project also features data insertion scripts and triggers to enforce certain business rules and behaviors within the database.

## Table Structure

The project defines the following tables and their corresponding attributes:

- Kategoria_Gry (Game Category)
- Rodzaj_Gry (Game Genre)
- Deweloper (Developer)
- Gry (Games)
- Wydawca (Publisher)
- Zamowienie_Gry (Order Games)
- Zamowienie (Order)
- Klient (Customer)
- Pracownik (Employee)
- Stanowisko (Job Position)

## Data Insertion Scripts

The project includes data insertion scripts for populating the tables with sample data.

## Triggers

Triggers are implemented to enforce business rules and maintain data integrity:

- A BEFORE INSERT trigger for the "Kategoria_Gry" table ensures that each game category's name is set to "Nieznana kategoria" if not provided.
- A BEFORE UPDATE trigger for the "Gry" table prevents the price of a game from being negative.
- An AFTER INSERT trigger for the "Zamowienie" table displays information about newly created orders.
- An AFTER DELETE trigger for the "Deweloper" table updates related game records by setting their developer ID to NULL.

## Contributors

- Valerii Andriushchenko

Feel free to contribute to this project by submitting pull requests or reporting issues.

## License

This project is licensed under the MIT License.

For detailed SQL scripts and implementation, refer to the SQL script files in the repository.
