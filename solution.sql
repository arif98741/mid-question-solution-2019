a. select sID from Student 
join Took on Student.sID = Took.sID
join Offering on Took.oID = Offering.oID
join Course on Course.cNum = Offering.cNum 
where Course.dept = 'CSE' and Course.name = 'CSE311' and Took.grade = 'A+'

b. select * from Course 
join Offering on Offering.cNum = Course.cNum 
where Course.dept = 'CSE'

c. Select semester from Offering 
join Course on Course.cNum = Offering.cNum 
where not Course.name = 'Object Oriented Programming'

d. select sId from Student 
join Took on Student.sID = Took.sID 
join Offering on Took.oID = Offering.oID
join Course on Course.cNum = Offering.cNum 
where Course.dept = 'CSE311' and Took.totalMarks = (select max(Took.totalMarks) from Took)