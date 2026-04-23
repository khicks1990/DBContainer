# Final Project

## Getting Started

Please put all of your code in the starter.sql file. Leave headers provided. Open a terminal and use these commands:

**Connect to your database:**
```bash
mysql -u student -pstudent student_db
```

**Run a `.sql` file:**
```bash
mysql -u student -pstudent student_db < starter.sql
```

**Useful commands once connected:**
```sql
SHOW TABLES;          -- list all your tables
DESCRIBE tablename;   -- show a table's columns
SHOW DATABASES;       -- list all databases
exit                  -- quit the MySQL prompt
```

---

## Assignment Checklist

### Database Design
- [ ] Choose a topic (library, store, hospital, sports league, etc.)
- [ ] Design an ERD showing tables, relationships, and constraints — include the image or text file in this repository

### Database Implementation
- [ ] Create at least 3 tables with proper normalization
- [ ] Use appropriate data types (`INT`, `VARCHAR`, `DATE`, `DECIMAL`, etc.)
- [ ] Implement constraints (`PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE`)
- [ ] Populate every table with sample data using `INSERT`

### Queries *(at least 5 total, one from each category)*
- [ ] `SELECT` with `WHERE`, `AND`/`OR`, `LIKE`, `BETWEEN`, `ORDER BY`
- [ ] `JOIN` (INNER, LEFT, or RIGHT) across multiple tables
- [ ] Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` with `GROUP BY` / `HAVING`
- [ ] Subquery or set operation (`IN`, `EXISTS`, `UNION`, etc.)
- [ ] `UPDATE`, `DELETE`, and `INSERT` on existing data

### Views & Indexes
- [ ] `CREATE VIEW` for a useful query you want to reuse
- [ ] `CREATE INDEX` to improve query performance

### Procedures & Triggers
- [ ] `CREATE PROCEDURE` for a complex or reusable operation
- [ ] `CREATE TRIGGER` that automatically enforces a rule

---

## Topic Ideas

The best topics are ones where you can naturally imagine **multiple related entities** — for example, a gym has members, classes, instructors, and equipment, each of which becomes its own table. The more you care about the subject, the easier the design work tends to be.

| Category | Ideas |
|---|---|
| **Everyday / Consumer** | Movie rental or streaming service, Recipe and meal planning app, Fitness tracker, Pet adoption shelter, Real estate listings |
| **Business / Commerce** | Car dealership inventory, Airline reservations, Pharmacy and prescriptions, Event ticketing system, Freelancer invoice tracker |
| **Education / Community** | School grade book, Public library checkouts and fines, Youth sports league, Book club tracker, Scholarship and financial aid system |
| **Tech / Gaming** | Video game collection and reviews, Esports tournament bracket, Bug/issue tracker, App store with ratings, Twitch-style channel stats |
| **Health / Science** | Hospital patient and appointment system, Veterinary clinic records, Drug trial tracker, Nutrition and food diary, Gym class scheduling |
| **Niche / Fun** | Pokémon or trading card database, Theme park ride wait times, Fantasy football league, Vinyl record collection, Travel itinerary planner |
