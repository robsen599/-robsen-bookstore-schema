#!/usr/bin/env python3

import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Robsen_DB!2025"
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except Error as err:
        print(f"Error: Could not connect or create database.\nDetails: {err}")

    finally:
        try:
            if cursor:
                cursor.close()
            if connection and connection.is_connected():
                connection.close()
        except NameError:
            pass

if __name__ == "__main__":
    create_database()