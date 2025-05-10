# 🎬 IMDb SQL Project – Learning SQL with Real-World Movie Data

This project consists of SQL queries written to explore and analyze a movie database inspired by IMDb. It's designed as a **learning tool** to practice SQL using real-world data challenges and answer common questions related to movie data analysis.

All queries are written in a **single SQL file** and clearly separated by comments indicating the question they answer.

## 🎯 Skills Practiced

- **Filtering data** using `WHERE` and `LIKE`
- **Aggregating data** with `GROUP BY`, `COUNT`, `AVG`, and `DISTINCT`
- **Sorting and limiting results** using `ORDER BY` and `LIMIT`
- Working with **NULL** values and handling missing data

## 💡 Sample Questions Covered

Here are some of the questions you can expect to answer with the queries in this project:

1. What movies were released in a specific year?
2. Who acted in a given movie?
3. Which movies received the highest ratings?
4. Which director worked on top-rated films?
5. Which actors co-starred with a particular person?
6. What is the average movie rating by genre?
7. Which movies have the highest gross earnings?

## 📁 File Structure

- **`imdb_movies.sql`**: Contains all the SQL queries for analyzing the movie database.
- **`main.py`**: The main Python script to run and interact with the database.
- **`results.txt`**: This file contains the results of the queries, showing outputs such as movie titles, ratings, and other key statistics.

## 🛠 Technologies Used

- **SQL**: For querying and manipulating data in the IMDb movie database.
- **SQLite**: For storing and querying the movie data.
- **Python**: Used in `main.py` to connect to the database and handle query executions.

## 🚀 Running the Project

To run this project, follow these steps:

1. **Setting Up the Database**:
   - Before running the queries, you need to load the movie data into an SQLite database. To do this, first import the CSV file into SQLite. This can be done manually or via a Python script.

2. **Writing SQL Queries**:
   - Once the database is set up, write the SQL queries in the `imdb_movies.sql` file. Each query should be written as a comment block that describes the question it answers, followed by the query itself. This keeps the project organized.

3. **Executing Queries**:
   - In the `main.py` file, the SQLite database connection is established.

4. **Saving Results**:
   - The results of the queries are saved manually into the `results.txt` file. While this can be automated, the current version requires manual saving of each result after query execution.

## 📝 Query List Example

Here are some examples of the questions answered by the queries:

1. **List all movie titles released in 2010**
2. **Movies released on or after 2016 (alphabetically ordered)**
3. **Count of movies with a 10.0 rating**
4. **Titles and years of all Harry Potter films**
5. **Average rating of movies released in 2012**
6. **Movies from 2010 sorted by rating and title**
7. **Directors of movies rated 9.0 and above**
8. **Movies starring both Bradley Cooper and Jennifer Lawrence**

### 🔍 Example SQL Query

```sql
-- List all movie titles released in 2010
SELECT *
FROM movies
WHERE released_year = 2010;

## 🛠 Areas for Improvement

This project currently involves manual steps (loading CSV into SQLite and manually saving results). However, these processes can be automated for greater efficiency. Here are a few suggestions for automating these steps:

1. **Automated CSV to SQLite Data Import**: 
   - Currently, the CSV file is manually loaded into the SQLite database. This process can be automated by writing a Python function using libraries like `pandas` or `sqlite3` to directly import the CSV data into the SQLite database.
   
2. **Automating SQL Query Execution**:
   - SQL queries are manually executed in the `main.py` file. Instead of this, you can enhance `main.py` to automatically read and execute all queries from the SQL file. This would eliminate the need for manual intervention every time you want to run queries on the database.
   
3. **Automating Result Saving**:
   - Results are currently saved manually to the `results.txt` file. This can also be automated. You could write a Python script to fetch query results and directly save them to a file without manual input.
   
4. **Dynamic Database Selection**:
   - Instead of manually specifying the database file path, you could offer users the option to input the path dynamically when running the project. This would make it easier to use the project with different databases.

By implementing these improvements, you can make the project more efficient and reduce the need for manual steps.

## 🤝 Contributions
Feel free to contribute to this project by submitting pull requests, reporting issues, or suggesting improvements. This project is intended to be a learning resource, so contributions are welcome!

