'''
Author: yjr 949804347@qq.com
Date: 2023-09-09 20:35:31
LastEditors: Ruijun Deng
LastEditTime: 2023-12-20 16:08:10
FilePath: /PP-Split/target_model/data_preprocessing/preprocess_bank.py
Description: none
'''
import pandas as pd
import numpy as np
from sklearn.preprocessing import MinMaxScaler, LabelEncoder
from torch.utils.data import Dataset
dataPath = 'dataset/bank-additional-full.csv'

# bank数据集
class bank_dataset(Dataset):
    def __init__(self, data):
        # data = data
        self.Xa, self.y = data

    def __getitem__(self, item):
        Xa = self.Xa[item]
        y = self.y[item]

        return np.float32(Xa), np.float32(y)

    def __len__(self):
        return len(self.Xa)
    

num_columns = ['age', 'duration', 'campaign', 'pdays', 'previous', 'emp.var.rate', 'cons.price.idx', 'cons.conf.idx', 'euribor3m', 'nr.employed']
onehot_columns = ['job_admin.', 'job_blue-collar', 'job_entrepreneur', 'job_housemaid',
       'job_management', 'job_retired', 'job_self-employed', 'job_services',
       'job_student', 'job_technician', 'job_unemployed', 'job_unknown',
       'marital_divorced', 'marital_married', 'marital_single',
       'marital_unknown', 'education_basic.4y', 'education_basic.6y',
       'education_basic.9y', 'education_high.school', 'education_illiterate',
       'education_professional.course', 'education_university.degree',
       'education_unknown', 'default_no', 'default_unknown', 'default_yes',
       'housing_no', 'housing_unknown', 'housing_yes', 'loan_no',
       'loan_unknown', 'loan_yes', 'contact_cellular', 'contact_telephone',
       'month_apr', 'month_aug', 'month_dec', 'month_jul', 'month_jun',
       'month_mar', 'month_may', 'month_nov', 'month_oct', 'month_sep',
       'day_of_week_fri', 'day_of_week_mon', 'day_of_week_thu',
       'day_of_week_tue', 'day_of_week_wed', 'poutcome_failure',
       'poutcome_nonexistent', 'poutcome_success']


def to_onehot(df, col_features):
    # 对类别型特征进行one-hot编码,并返回离散特征的索引
    onehot_df = pd.get_dummies(df[col_features]) # 0/1取值
    # print('onhot_df.columns: ', onehot_df.columns)
    # print(onehot_df.iloc[0])
    onehot_features = onehot_df.columns.values # 列名
    discrete_index = {s: [i for i in range(len(onehot_features)) if s in onehot_features[i]] for s in col_features}

    return onehot_df, discrete_index
# X_index:  {'job': [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], \
# 'marital': [12, 13, 14, 15], 'education': [16, 17, 18, 19, 20, 21, 22, 23], \
# 'default': [24, 25, 26], 'housing': [27, 28, 29], 'loan': [30, 31, 32], \
# 'contact': [33, 34], 'month': [35, 36, 37, 38, 39, 40, 41, 42, 43, 44], \
# 'day_of_week': [45, 46, 47, 48, 49], 'poutcome': [50, 51, 52]}

def preprocess_bank(dataPath):
    print("===============processing data===============")

    df = pd.read_csv(dataPath, delimiter=';',quotechar='"') # 读取文件生成df
    # df.head()
    # df.info()

    # 处理分类特征 # 类别特征
    cate_cols = ['job', 'marital', 'education', 'default', 'housing', 'loan', 'contact', 'month', 'day_of_week',
                 'poutcome']

    df['y'] = (df['y'] == 'yes').astype(int)

    df_object_col = cate_cols # 类别列
    df_num_col = [col for col in df.columns if col not in cate_cols and col != 'y'] # 数值列
    # print("num_columns: ", df_num_col)
    target = df['y'] # target列

    # 连续列缩放到[-1,1]之间
    scaler = MinMaxScaler(feature_range=(-1, 1))
    df[df_num_col] = scaler.fit_transform(df[df_num_col])
    # print(df.iloc[0])
    # 离散列进行one_hot编码
    X, X_index = to_onehot(df, df_object_col)
    X = pd.concat([X, df[df_num_col]], axis=1).values
    # print(X[0])
    # print("X_index: ",X_index)
    # -----------------------划分训练集和测试集-------------------------

    y = target.values
    y = np.expand_dims(y, axis=1)

    # 前0.8的做训练数据
    n_train = int(0.8 * X.shape[0])
    X_train, X_test = X[:n_train], X[n_train:]
    y_train, y_test = y[:n_train], y[n_train:]

    print("X_train.shape:", X_train.shape)
    print("X_test.shape:", X_test.shape)
    # print("X_onehot_index:", X_index)

    print("y_train.shape:", y_train.shape)
    print("y_test.shape:", y_test.shape, type(y_test))

    print("===============processing data end===============")

    return [X_train, y_train], [X_test, y_test]


if __name__ == "__main__":
    dataPath = '/home/dengruijun/data/FinTech/DATASET/kaggle-dataset/bank/bank-additional-full.csv'

    # df = pd.read_csv(dataPath, delimiter=';')

    # print(df.sample(10))
    # print(df.shape)
    # print(df.info())
    # print(df.describe())
    # print(df.head())
    # print(df.columns.values)


    [Xa_train, y_train], [Xa_test, y_test] = preprocess_bank(dataPath)


    # print(Xa_train[10:])
    # print(y_train[10:])