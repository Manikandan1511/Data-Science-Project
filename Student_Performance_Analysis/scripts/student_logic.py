import sqlite3
import pandas as pd
import os

# Robust path handling for your specific folder structure
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.dirname(BASE_DIR)
db_path = os.path.join(PROJECT_ROOT, 'data', 'students_database.db')
sql_path = os.path.join(BASE_DIR, 'students_db.sql')
csv_output = os.path.join(PROJECT_ROOT, 'data', 'cleaned_student_data.csv')

def process_students():
    os.makedirs(os.path.dirname(db_path), exist_ok=True)
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Load and execute SQL
    with open(sql_path, 'r') as f:
        cursor.executescript(f.read())
    
    # Read into Pandas
    df = pd.read_sql_query("SELECT * FROM Students", conn)

    # 1st Class Logic: Pass/Fail column
    # Condition: Pass if Marks >= 50
    df['Status'] = df['Marks'].apply(lambda x: 'Pass' if x >= 50 else 'Fail')
    
    # Additional Insight: Grade column
    def get_grade(m):
        if m >= 90: return 'A'
        elif m >= 75: return 'B'
        elif m >= 50: return 'C'
        else: return 'F'
    
    df['Grade'] = df['Marks'].apply(get_grade)

    # Save to CSV for the R phase
    df.to_csv(csv_output, index=False)
    print(f" Student data processed! Output saved to: {csv_output}")
    print("\nPreview of engineered data:")
    print(df.head())

    conn.close()

if __name__ == "__main__":
    process_students()