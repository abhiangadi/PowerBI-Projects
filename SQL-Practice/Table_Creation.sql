CREATE TABLE Student (
    Rollno INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT NOT NULL,
    Grade VARCHAR(1),
    City VARCHAR(20)
);


CREATE TABLE Dept (
  id int primary key,
  name varchar(50)
);

CREATE TABLE Teachers (
id int primary key,
name varchar(50),
Dept_id int,
Foreign key (Dept_id) references Dept(id)
On Update cascade
On Delete cascade
);
