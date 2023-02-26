import json
import psycopg2


def init():
    conn = psycopg2.connect(database='expenses', host='localhost',
                            user='postgres', password='postgres', port='5432')
    with open('expenses.json', 'r', 'utf8') as f:
        file = json.load(f)

        for i, expense in enumerate(file):
            tag = expense['Category']
            date = expense['Date']
            desc = expense['Description']
            recurrence_str = expense['Recurrence']
            amt = expense['Price']

            conn.execute(f"""
                         INSERT INTO tags ({tag});
                         """)
            conn.execute(f"""
                         INSERT INTO expenses ({i}, {date});
                         """)
            conn.execute(f"""
                         INSERT INTO tags ({tag});
                         """)


if __name__ == '__main__':
    init()
