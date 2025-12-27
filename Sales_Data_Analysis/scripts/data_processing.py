import sqlite3
import pandas as pd
import os

# Setup Paths
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.dirname(BASE_DIR)
db_path = os.path.join(PROJECT_ROOT, 'data', 'sales_database.db')
output_path = os.path.join(PROJECT_ROOT, 'data', 'cleaned_sales_data.csv')

def process_sales_data():
    # Connect to Database
    conn = sqlite3.connect(db_path)
    
    # Load data into a Pandas DataFrame
    query = "SELECT * FROM Sales"
    df = pd.read_sql_query(query, conn)
    
    # Data Cleaning & Feature Engineering
    # Convert SaleDate to actual datetime objects
    df['SaleDate'] = pd.to_datetime(df['SaleDate'])
    
    # Calculate Revenue for each sale
    df['Revenue'] = (df['Quantity'] * df['Price']) * (1 - df['Discount'])
    
    print("--- Project Insights ---")
    total_revenue = df['Revenue'].sum()
    print(f"Total Revenue: ${total_revenue:,.2f}")
    
    top_category = df.groupby('Category')['Revenue'].sum().idxmax()
    print(f"Top Performing Category: {top_category}")
    
    # Save to CSV for the R Visualization phase
    df.to_csv(output_path, index=False)
    print(f"\n Cleaned data exported to: {output_path}")
    
    conn.close()

if __name__ == "__main__":
    process_sales_data()