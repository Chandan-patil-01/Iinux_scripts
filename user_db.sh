#!/bin/bash

# Define the database file
DB_FILE="student.db"

# Check if the database file exists
if [ ! -f "$DB_FILE" ]; then
  touch "$DB_FILE"
  echo "Database file created: $DB_FILE"
fi

# Menu loop
while true; do
  # Display menu
  clear
  echo "Student Database Menu"
  echo "1. Add Student"
  echo "2. Delete Student"
  echo "3. Find Student"
  echo "4. Exit"
  echo -n "Enter your choice: "

  # Read user input
  read choice

  # Process user choice (switch case alternative)
  case $choice in
    1)  # Add student
      echo -n "Enter Roll Number: "
      read rollno
      # Check for duplicate roll number
      grep -q "^$rollno," "$DB_FILE"
      if [ $? -eq 0 ]; then
        echo "Error: Roll number $rollno already exists!"
      else
        echo -n "Enter Name: "
        read name
        echo -n "Enter Semester: "
        read semester
        echo -n "Enter Marks (Subject 1, Subject 2, Subject 3): "
        read mark1 mark2 mark3
        echo "$rollno,$name,$semester,$mark1,$mark2,$mark3" >> "$DB_FILE"
        echo "Student added successfully!"
      fi
      ;;
    2)  # Delete student
      echo -n "Enter Roll Number to delete: "
      read rollno
      grep -q "^$rollno," "$DB_FILE"
      if [ $? -eq 0 ]; then
        sed -i "/^$rollno,/d" "$DB_FILE"
        echo "Student deleted successfully!"
      else
        echo "Error: Roll number $rollno not found!"
      fi
      ;;
    3)  # Find student
      echo -n "Enter Roll Number to find: "
      read rollno
      grep "^$rollno," "$DB_FILE"
      if [ $? -eq 0 ]; then
        echo "Student Found!"
      else
        echo "Error: Roll number $rollno not found!"
      fi
      ;;
    4)  # Exit
      echo "Exiting..."
      break
      ;;
    *)  # Invalid choice
      echo "Invalid choice. Please try again."
      ;;
  esac

  # Wait for user input (press any key) after each operation
  echo -n "Press any key to continue..."
  read -r -s -n 1

done

echo "Bye!"
