import tester

tester.start("input.csv")
file = open("input.csv", "r")
lines = file.readlines()
file.close()

departments = []
salaries = []
total = 0
employees = 0

if len(lines) <= 1:
    print("Data kosong")
else:
    for line in lines[1:]:
        parts = line.strip().split(',')
        department = parts[1]
        salary = int(parts[2])
        
        total += salary
        employees += 1
        
        found = False
        for i in range(len(departments)):
            if departments[i] == department:
                salaries[i] += salary
                found = True
                break
        if not found:
            departments.append(department)
            salaries.append(salary)

    average_salary = 0

    for i in range(len(departments)):
        print(salaries[i])
        average_salary += salaries[i]

    average_salary = average_salary // len(departments)
    print(average_salary)

tester.end("input.csv")