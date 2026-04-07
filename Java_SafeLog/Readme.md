# Digital Library Audit System (SQL)

## Project Overview
This project was developed for a community college to streamline the management of their book collection and student borrowing records. The system focuses on tracking overdue materials and analyzing genre popularity to assist in future inventory decisions.

## Problem Statement
The objective was to design a relational database capable of generating reports for unreturned items and maintaining an up-to-date registry of active student accounts.

## Core Functionality
* **Relational Database Design**: Established organized tables for Books, Students, and IssuedBooks with appropriate data relationships.
* **Overdue Tracking Logic**: Implemented a query to identify students who have not returned books within the standard 14-day window.
* **Genre Popularity Analysis**: Utilized data aggregation to determine which categories, such as Fiction or Science, are most frequently borrowed.
* **Database Maintenance**: Developed logic to automatically identify and remove student records for accounts that have remained inactive for over 3 years.

## Deliverables
* **DigitalLibrary.sql**: Includes the complete table schemas and analytical queries.
