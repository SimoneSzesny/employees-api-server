json.array! @employees.each do |employee|
 json.id employee.id
 json.firstName employee.first_name
 json.lastName employee.last_name
 json.birthdate employee.birthdate
 json.email employee.email
 json.ssn employee.ssn
end