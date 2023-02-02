Contact List
This is a simple Ruby program that allows you to store, retrieve and list contacts with their birthdays. The data is stored in a PStore file, which is a file-based storage system in Ruby. The program runs in a loop and provides several options to the user:

1. Add a new contact - the user is prompted to enter a first name and a date of birth for the new contact. The first name and date of birth are stored in the PStore file.

2. Retrieve a contact's birthday - the user is prompted to enter the name of the contact whose birthday they want to retrieve. If the contact exists in the PStore file, their date of birth is displayed. If the contact doesn't exist, an error message is displayed.

3. List all contacts - all the contacts stored in the PStore file are displayed.

4. Exit the program - the user can exit the program by choosing this option.

The code uses transactions to ensure that the PStore file is updated in a consistent and reliable way.

Requirements
Ruby
PStore gem
Usage
Press 1 to add a new contact
Press 2 to retrieve a contact's birthday
Press 3 to list all contacts
Press 4 to exit the program