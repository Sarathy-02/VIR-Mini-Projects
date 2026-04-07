CREATE TABLE Books (BookID INT PRIMARY KEY, Title VARCHAR(100), Category VARCHAR(100));

CREATE TABLE Students (StudentID INT PRIMARY KEY, StudentName VARCHAR(100), LastBorrowDate DATE);

CREATE TABLE IssuedBooks (IssueID INT PRIMARY KEY, BookID INT, StudentID INT, 
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);



INSERT INTO Books (BookID, Title, Category) VALUES (101, 'The Great Gatsby', 'Fiction');

INSERT INTO Books (BookID, Title, Category) VALUES (102, 'Brief History of Time', 'Science');

INSERT INTO Books (BookID, Title, Category) VALUES (103, 'The Art of War', 'History');

INSERT INTO Books (BookID, Title, Category) VALUES (104, 'Principles of Physics', 'Science');




INSERT INTO Students (StudentID, StudentName, LastBorrowDate) VALUES (1, 'Alex Rivera', TO_DATE('2024-03-15', 'YYYY-MM-DD')); 

INSERT INTO Students (StudentID, StudentName, LastBorrowDate) VALUES (2, 'Jamie Smith', TO_DATE('2020-01-10', 'YYYY-MM-DD')); 

INSERT INTO Students (StudentID, StudentName, LastBorrowDate) VALUES (3, 'Sam Wilson', TO_DATE('2024-04-01', 'YYYY-MM-DD')); 




INSERT INTO IssuedBooks (IssueID, BookID, StudentID, IssueDate, ReturnDate) 
VALUES (501, 101, 1, TO_DATE('2024-04-01', 'YYYY-MM-DD'), TO_DATE('2024-04-05', 'YYYY-MM-DD')); 



INSERT INTO IssuedBooks (IssueID, BookID, StudentID, IssueDate, ReturnDate)
VALUES (502, 102, 3, TO_DATE('2024-03-10', 'YYYY-MM-DD'), NULL); 



INSERT INTO IssuedBooks (IssueID, BookID, StudentID, IssueDate, ReturnDate)
VALUES (503, 104, 1, TO_DATE('2024-03-20', 'YYYY-MM-DD'), NULL);



SELECT StudentID, BookID FROM IssuedBooks WHERE ReturnDate IS NULL AND IssueDate < (SYSDATE - 14);

SELECT Category, COUNT(*) AS Total FROM Books b JOIN IssuedBooks i ON b.BookID = i.BookID GROUP BY Category ORDER BY Total DESC;

DELETE FROM Students WHERE LastBorrowDate < ADD_MONTHS(SYSDATE, -36);