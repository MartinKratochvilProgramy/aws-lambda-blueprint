import psycopg2
import os

# RDS settings from environment variables
db_username = os.environ['db_username']
db_password = os.environ['db_password']
rds_endpoint = os.environ['rds_endpoint']
rds_db_name = os.environ['rds_db_name']

def lambda_handler(event, context):
    try:
        # Connect to RDS PostgreSQL instance
        connection = psycopg2.connect(
            host=rds_endpoint.split(":")[0],
            user=db_username,
            password=db_password,
            dbname=rds_db_name,
            port=5432,
            connect_timeout=5
        )
        
        print("Connection to RDS PostgreSQL instance succeeded")
        
        # Example query execution
        with connection.cursor() as cursor:
            cursor.execute("SELECT version()")
            version = cursor.fetchone()
            print(f"Database version: {version[0]}")
        
        # Commit the transaction if needed
        connection.commit()

        return {
            'statusCode': 200,
            'body': f'DB version {version}'
        }

        
    except Exception as e:
        print(f"Error: {str(e)}")
    
        return {
            'statusCode': 500,
            'body': f'Error {e}'
        }
