import pymysql

db = pymysql.connect(host='mysqldatabase.czdvs0q8jq0t.ap-northeast-2.rds.amazonaws.com', user='admin', password='email123456')
cursor = db.cursor()
cursor.execute("select version()")
data = cursor.fetchone()
print(data)


# class Sql:
    # def __init__(self):
    #     self.transactionId = []
    #     self.customerId = []
    #     self.purchase = []
    #     self.price = []
    #     self.currency = []
    #     self.date = []
    #     self.recommended = []


    # def get(self):
    #     """
    #     the method gets all attributes of the transaction
    #
    #     Returns:
    #         all attributes of the Transaction class
    #     """
    #     return self.transactionId, self.customerId, self.purchase, self.price, self.currency, self.date, \
    #         self.recommended
    #
    # def post(self):
    #     """
    #     the method creates a new transaction and ads it to the transaction dataset
    #
    #     Returns:
    #         the updated dataset
    #     """
    #
    #     data = pd.read_csv('transactions.csv')
    #
    #     new_data = pd.DataFrame({
    #         'transactionId': [f'{self.transactionId}'],
    #         'customerId': [f'{self.customerId}'],
    #         'purchase': [f'{self.purchase}'],
    #         'price': [f'{self.price}'],
    #         'currency': [f'{self.currency}'],
    #         'date': [f'{self.date}'],
    #         'recommended': [f'{self.recommended}']
    #     })
    #
    #     data = data.append(new_data, ignore_index=True)
    #     data.to_csv('transactions.csv', index=False)
    #     return {'data': data.to_dict()}
    #
    # def delete(self):
    #     """
    #     the method deletes the transaction
    #
    #     Returns:
    #         the dataset without the transaction
    #
    #     Raises:
    #         404 error: if transactionId is not in transaction.csv
    #         404 error: customerId is not in transaction.csv
    #     """
    #     data = pd.read_csv('transactions.csv')
    #
    #     if self.transactionId in list(data['transactionId']):
    #         if self.customerId in list(data['customerId']):
    #             data = data[data['transactionId'] != self.transactionId]
    #
    #             data.to_csv('transactions.csv', index=False)
    #             return {'data': data.to_dict()}, 200
    #         else:
    #             return {
    #                        'message': f"Client number f'{self.customerId}' is not involved in this transaction!"
    #                    }, 404
    #     else:
    #         return {
    #                    'message': f"'{self.transactionId}' Transaction not found."
    #                }, 404


def choose_schema(name):
    sql = f'''use {name}'''
    return cursor.execute(sql)

def show_tables():
    sql = f'''show tables'''
    cursor.execute(sql)
    return print(cursor.fetchall())

def show_table(table_name):
    sql = f'''show {table_name}'''
    cursor.execute(sql)
    return print(cursor.fetchall())


choose_schema(name='crm')
show_tables()

