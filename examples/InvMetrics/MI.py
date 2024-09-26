# 导包
import torch
import os
import argparse
import pandas as pd
import tqdm
import numpy as np
from torch.nn.functional import avg_pool2d
# os.environ['NUMEXPR_MAX_THREADS'] = '48'


# 导入各个指标
import sys
sys.path.append('/home/dengruijun/data/FinTech/PP-Split/')
from ppsplit.quantification.distance_correlation.distCor import distCorMetric
from ppsplit.quantification.fisher_information.dFIL_inverse import dFILInverseMetric
from ppsplit.quantification.shannon_information.mutual_information import MuInfoMetric
from ppsplit.quantification.shannon_information.ULoss import ULossMetric
from ppsplit.quantification.rep_reading.rep_reader import PCA_Reader


# 模型、数据集获取
from target_model.task_select import get_dataloader_and_model,get_dataloader_and_model, get_dataloader,get_models, get_infotopo_para

# utils
from ppsplit.utils.utils import create_dir


# nohup python -u MI.py > ../../results/InvMetric-202403/VGG5/MI/MI-layer5.log 2>&1 &
# 超参数

args = {
        'device':torch.device("cuda:0" if torch.cuda.is_available() else "cpu"),
        # 'device':torch.device("cpu"),
        'dataset':'CIFAR10',
        # 'dataset':'bank',
        # 'dataset':'credit',
        # 'dataset':'purchase',
        # 'dataset':'Iris',
        # 'model': 'ResNet18',
        'model': 'VGG5',
        # 'result_dir': '20240702-FIL/',
        'result_dir': 'InvMetric-202403/',
        'oneData_bs': 500,
        'test_bs': 500,
        'train_bs': 1,
        'noise_scale': 0, # 防护措施
        'split_layer': 5,
        'test_num': 'MI', # MI, invdFIL, distCor, ULoss,  # split layer [2,3,5,7,9,11] for ResNet18
        'no_dense':True,
        }

print(args['device'])
print(args)

data_msg = get_dataloader(args)
model_msg = get_models(args)
infotopo_msg = get_infotopo_para(args)
msg = {**model_msg,**data_msg,**infotopo_msg}

# 数据集
one_data_loader,trainloader,testloader = data_msg['one_data_loader'],data_msg['trainloader'], data_msg['testloader']

# infotopo
conv = msg['conv']

# 模型和路径
client_net,decoder_net = model_msg['client_net'],model_msg['decoder_net']
decoder_route = model_msg['decoder_route']
image_deprocess = model_msg['image_deprocess']

results_dir = model_msg['results_dir']
inverse_dir = results_dir + 'layer'+str(args['split_layer'])+'/'
data_type = 1 if args['dataset'] == 'CIFAR10' else 0
split_layer = args['split_layer']

print('results_dir:',results_dir)
print('inverse_dir:',inverse_dir)
print('decoder_route:',decoder_route)

create_dir(results_dir)

# client_net使用
client_net = client_net.to(args['device'])
client_net.eval()

# mutual information指标计算

MI_diff_layer_list = []
MI_same_layer_list = []
metric = MuInfoMetric()
avg_MI = []

# for e in range(20):
# for j, data in enumerate(tqdm.tqdm(testloader)): # 对testloader遍历
for j, data in enumerate(tqdm.tqdm(one_data_loader)): # 测试第一个testloader
    images, labels = data
    images, labels = images.to(args['device']), labels.to(args['device'])
    with torch.no_grad():
        # inference
        if conv:
            print('images: ', images.shape)
            images= avg_pool2d(images,kernel_size=4)
            print('images_pooled: ',images.shape)

        outputs = client_net(images).clone().detach()
        inputs = images.cpu().detach()
        mi = metric.quantify(inputs=inputs, outputs = outputs)
        MI_same_layer_list.append(mi)
        
print(f"Layer {args['split_layer']} MI: {sum(MI_same_layer_list)/len(MI_same_layer_list)}")
MI_diff_layer_list.append(MI_same_layer_list)


# 保存到csv中
matrix = np.array(MI_diff_layer_list) # 有点大，x
transpose = matrix.T # 一行一条数据，一列代表一个layer 
# pd.DataFrame(data=transpose, columns=[i for i in split_layer_list]).to_csv(results_dir + f'MI-bs{batch_size}.csv',index=False)
# pd.DataFrame(data=transpose, columns=[split_layer]).to_csv(results_dir + f'MILoss-layer{split_layer}.csv',index=False)
save_route = results_dir + f'MI.csv'
if os.path.exists(save_route):
    df = pd.read_csv(save_route)
    df[args['split_layer']] = transpose
    df.to_csv(save_route,index=False)
else:
    pd.DataFrame(data=transpose, columns=[args['split_layer']]).to_csv(save_route,index=False)





