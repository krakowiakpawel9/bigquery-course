import pandas as pd
from seaborn import load_dataset


def fetch_financial_data(company='AMZN'):
    """
    This function fetch stock market quotations.
    """
    import pandas_datareader.data as web
    return web.DataReader(name=company, data_source='stooq')

def main():
    df = pd.DataFrame(data={'age': [12, 13, 21, 18],
                            'name': ['Paul', 'John', 'Mike', 'Donald'],
                            'has_married': [False, False, True, False],
                            'has_house': [0, 0, 1, 1],
                            'height': [185.0, 176.5, 192.0, 182.5]})

    df.to_csv('people.csv', index=False)

    df = pd.DataFrame(data={'var1': [3, 2, 4, 1],
                            'var2': [1.2, 4.2, 2.4, 0.2],
                            'var3': [1 / 3, 1 / 7, 1 / 4, 1 / 21]})

    df.to_csv('numeric_types.csv', index=False)

    df = pd.DataFrame(data={'var1': [0, 1, 0, 1],
                            'var2': [True, False, False, True],
                            'var3': ['T', 'F', 'F', 'F'],
                            'var4': ['True', 'True', 'False', 'False']})

    df.to_csv('boolean_types.csv', index=False)

    df = pd.DataFrame(data={'var1': ['001', '002', '003', '004'],
                            'var2': ['python', 'sql', 'java', 'scala'],
                            'var3': ['Python 3.8.0', 'SQL', 'Java SE 8 (LTS)', 'Scala 2.13.1']})

    df.to_csv('string_types.csv', index=False)

    df = pd.DataFrame(data={'var1': pd.date_range('2019-01-01', periods=4, freq='H'),
                            'var2': pd.date_range('2019-01-01', periods=4, freq='D'),
                            'var3': pd.date_range('2019-01-01', periods=4, freq='BQS'),
                            'var4': pd.date_range('2019-01-01', periods=4, freq='Min'),
                            'var5': ['01-01-2019', '02-01-2019', '03-01-2019', '04-01-2019'],
                            'var6': ['00:01:00', '00:02:30', '00:03:00', '00:04:45']})

    df.to_csv('date_time_types.csv', index=False)

    df = load_dataset('tips')
    df.to_csv('tips.csv', index=False)

    df = fetch_financial_data('GOOGL')
    df.to_csv('google.csv')


if __name__ == '__main__':
    main()
    print('Dane zostały wygenerowane.')
