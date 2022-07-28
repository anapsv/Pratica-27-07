Question 1:

SELECT COUNT("endDate") AS "currentExperiences"
FROM experiences;

Question 2:

SELECT "userId" AS id, COUNT("id") AS educations
FROM educations
GROUP BY "userId";

Question 3:

SELECT users.name AS writer, COUNT(testimonials."writerId") AS "testimonialCount"
FROM testimonials
JOIN users ON users.id = testimonials."writerId"
WHERE testimonials."writerId" = 435
GROUP BY users.name;

Question 4:

SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM jobs
JOIN roles ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY role
ORDER BY "maximumSalary";

Bônus:

