import sqlite3
import pandas as pd
import os

# Robust path handling
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.dirname(BASE_DIR)
db_path = os.path.join(PROJECT_ROOT, 'data', 'salary_database.db')
sql_path = os.path.join(BASE_DIR, 'salary_db.sql')
csv_output = os.path.join(PROJECT_ROOT, 'data', 'cleaned_salary_data.csv')

def process_salaries():
    os.makedirs(os.path.dirname(db_path), exist_ok=True)
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Setup DB
    with open(sql_path, 'r') as f:
        cursor.executescript(f.read())
    
    # Load into Pandas
    df = pd.read_sql_query("SELECT * FROM Employees", conn)

    # Calculations
    avg_total = df['Salary'].mean()
    print(f"Total Company Average Salary: ${avg_total:,.2f}")
    
    # Save for R Visualization
    df.to_csv(csv_output, index=False)
    print(f" Data for Project 3 ready at: {csv_output}")

    conn.close()

if __name__ == "__main__":
    process_salaries()