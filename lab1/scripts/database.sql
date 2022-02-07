-- CREATE DATABASE learning;
-- \c learning;

CREATE TABLE STUDENT (
    StuNo SERIAL PRIMARY KEY,
    StuName VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE SUPERVISOR (
    SupNo SERIAL PRIMARY KEY,
    SupName VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE COURSE (
    CourseNo SERIAL PRIMARY KEY,
    Course VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE LECTURER (
    LecturerNo SERIAL PRIMARY KEY,
    Lecturer VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE COURSE_LECTURER (
    CourseNo INTEGER REFERENCES COURSE(CourseNo),
    LecturerNo INTEGER REFERENCES Lecturer(LecturerNo)
);

CREATE TABLE COURSE_STUDENT_SUPERVISOR (
    StuNo INTEGER REFERENCES STUDENT(StuNo),
    CourseNo INTEGER REFERENCES COURSE(CourseNo),
    SupNo INTEGER REFERENCES SUPERVISOR(SupNo)
);

insert into SUPERVISOR (SupNo, SupName) values (1, 'Michell');
insert into SUPERVISOR (SupNo, SupName) values (2, 'Garnette');
insert into SUPERVISOR (SupNo, SupName) values (3, 'Joannes');
insert into SUPERVISOR (SupNo, SupName) values (4, 'Charity');
insert into SUPERVISOR (SupNo, SupName) values (5, 'Ulick');
insert into SUPERVISOR (SupNo, SupName) values (6, 'Roberta');
insert into SUPERVISOR (SupNo, SupName) values (7, 'Margret');
insert into SUPERVISOR (SupNo, SupName) values (8, 'Haleigh');
insert into SUPERVISOR (SupNo, SupName) values (9, 'Frankie');
insert into SUPERVISOR (SupNo, SupName) values (10, 'Alidia');

insert into Student (StuNo, StuName) values (1, 'Anthony');
insert into Student (StuNo, StuName) values (2, 'Dunstan');
insert into Student (StuNo, StuName) values (3, 'Stanton');
insert into Student (StuNo, StuName) values (4, 'Leopold');
insert into Student (StuNo, StuName) values (5, 'Cassondra');
insert into Student (StuNo, StuName) values (6, 'Nils');
insert into Student (StuNo, StuName) values (7, 'Harald');
insert into Student (StuNo, StuName) values (8, 'Joel');
insert into Student (StuNo, StuName) values (9, 'Vlad');
insert into Student (StuNo, StuName) values (10, 'Olag');

insert into Course (CourseNo, Course) values (1, 'Filippa');
insert into Course (CourseNo, Course) values (2, 'Portie');
insert into Course (CourseNo, Course) values (3, 'Towney');
insert into Course (CourseNo, Course) values (4, 'Drew');
insert into Course (CourseNo, Course) values (5, 'Alfons');
insert into Course (CourseNo, Course) values (6, 'Sonnie');
insert into Course (CourseNo, Course) values (7, 'Easter');
insert into Course (CourseNo, Course) values (8, 'Maridel');
insert into Course (CourseNo, Course) values (9, 'Emmerich');
insert into Course (CourseNo, Course) values (10, 'Cherin');

insert into Lecturer (LecturerNo, Lecturer) values (1, 'Tinson');
insert into Lecturer (LecturerNo, Lecturer) values (2, 'Poulden');
insert into Lecturer (LecturerNo, Lecturer) values (3, 'Lickorish');
insert into Lecturer (LecturerNo, Lecturer) values (4, 'Hendren');
insert into Lecturer (LecturerNo, Lecturer) values (5, 'Eddleston');
insert into Lecturer (LecturerNo, Lecturer) values (6, 'Brabben');
insert into Lecturer (LecturerNo, Lecturer) values (7, 'Dillinton');
insert into Lecturer (LecturerNo, Lecturer) values (8, 'Nussen');
insert into Lecturer (LecturerNo, Lecturer) values (9, 'Rosenqvist');
insert into Lecturer (LecturerNo, Lecturer) values (10, 'Monery');

insert into COURSE_LECTURER (CourseNo, LecturerNo) values (1, 1);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (1, 2);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (1, 3);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (2, 3);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (2, 4);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (2, 5);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (2, 6);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (2, 9);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (3, 3);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (3, 5);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (3, 8);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (7, 6);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (8, 10);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (4, 4);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (4, 5);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (4, 8);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (8, 9);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (8, 10);
insert into COURSE_LECTURER (CourseNo, LecturerNo) values (9, 10);

insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (1, 1, 1);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (1, 2, 1);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (1, 3, 1);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (1, 3, 4);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (1, 3, 5);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (1, 3, 8);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (2, 1, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (2, 1, 4);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (2, 1, 6);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (2, 1, 8);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (3, 2, 8);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (3, 2, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (4, 1, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (4, 2, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (4, 5, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (4, 5, 8);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (4, 5, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (5, 6, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (5, 4, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (5, 7, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (5, 8, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (5, 8, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (5, 8, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (6, 8, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (6, 3, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (6, 2, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (6, 1, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (6, 8, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (6, 8, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (6, 10, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 10, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 3, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 2, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 1, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 4, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 5, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 6, 9);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 6, 10);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 10, 10);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 10, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (7, 10, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (8, 10, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (8, 1, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (8, 3, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (8, 5, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (8, 6, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (8, 6, 3);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (8, 6, 1);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (8, 6, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (9, 6, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (9, 1, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (9, 3, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (9, 5, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (9, 8, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (9, 8, 10);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (10, 8, 10);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (10, 1, 10);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (10, 8, 10);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (10, 8, 2);
insert into COURSE_STUDENT_SUPERVISOR (StuNo, CourseNo, SupNo) values (10, 8, 1);