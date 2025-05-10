import sqlite3
import pandas as pd

def read_csv_to_sqlite():
    try:
        df = pd.read_csv('imdb_top_1000.csv')
        conn = sqlite3.connect('movies.db')
        df.drop(columns=['Poster_Link'], inplace=True) #It was unnecessary
        df.to_sql('movies', conn, if_exists='replace', index=False)
        conn.close()
        print("Data inserted successfully into the database.")
    except Exception as e:
        print(f"An error occurred: {e}")

def query_movies():
    try:
        conn = sqlite3.connect('movies.db')
        query = ""
        df = pd.read_sql_query(query, conn)
        conn.close()
        print("Query executed successfully.")
        return df
    except Exception as e:
        print(f"An error occurred: {e}")

def main():
    # Read CSV and insert into SQLite database
    read_csv_to_sqlite()
    # Query the database
    result_df = query_movies()
    # Print the result
    if result_df is not None:
        print(result_df)

if __name__ == "__main__":
    main()
    # Print the result
