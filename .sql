-- Exercício 1

SELECT users.id,users.name,cities.name AS city
FROM cities
JOIN users
ON "cityId" = cities.id 
WHERE cities.name = 'Rio de Janeiro';

--Exercício 2

SELECT testimonials.id,
w.name AS writer,
r.name AS recipient,
testimonials.message
FROM testimonials
JOIN users w
ON "writerId" = w.id
JOIN users r
ON "recipientId" = r.id
ORDER BY id;

--Exercício 3

SELECT users.id, users.name,
courses.name AS course,
schools.name AS school,
"endDate"
FROM educations
JOIN schools
ON "schoolId" = schools.id
JOIN users
ON "userId" = users.id
JOIN courses
ON "courseId" = courses.id
WHERE users.id = '30' 
AND status = 'finished';

-- Exercício 4

select users.id,users.name,
roles.name AS "role",
companies.name AS company,
"startDate",
"endDate"
FROM experiences
JOIN users
ON users.id = "userId"
JOIN roles
ON "roleId" = roles.id
JOIN companies
ON "companyId" = companies.id
WHERE users.id = '50'
AND "endDate" IS NULL;