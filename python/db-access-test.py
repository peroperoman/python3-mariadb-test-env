import os
import pymysql.cursors


connection = pymysql.connect(host='db',
                             user=os.environ.get('MYSQL_USER'),
                             password=os.environ.get('MYSQL_PASSWORD'),
                             database=os.environ.get('MYSQL_DATABASE'),
							 charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)

with connection:
    with connection.cursor() as cursor:
        cursor.execute('SELECT employees.name AS "名前", departments.name AS "部署" FROM employees INNER JOIN departments ON departments.id = employees.department_id')
        results = cursor.fetchall()

for result in results:
	print(result)
