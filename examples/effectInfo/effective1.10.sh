###
 # @Author: Ruijun Deng
 # @Date: 2024-09-25 06:01:20
 # @LastEditTime: 2024-10-08 06:49:51
 # @LastEditors: Ruijun Deng
 # @FilePath: /PP-Split/examples/effectInfo/effective1.10.sh
 # @Description: 
### 

# Resnet18  
# nohup python -u effectInfo1.10.py  --device cuda:1 --dataset CIFAR10 --model ResNet18 --split_layer 2 > ../../results/20240702-effectiveInfo/Resnet18/effectiveInfo1.10/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:1 --dataset CIFAR10 --model ResNet18 --split_layer 3 > ../../results/20240702-effectiveInfo/Resnet18/effectiveInfo1.10/pool4-layer3-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:1 --dataset CIFAR10 --model ResNet18 --split_layer 5 > ../../results/20240702-effectiveInfo/Resnet18/effectiveInfo1.10/pool4-layer5-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:1 --dataset CIFAR10 --model ResNet18 --split_layer 7 > ../../results/20240702-effectiveInfo/Resnet18/effectiveInfo1.10/pool4-layer7-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:1 --dataset CIFAR10 --model ResNet18 --split_layer 9 > ../../results/20240702-effectiveInfo/Resnet18/effectiveInfo1.10/pool4-layer9-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:1 --dataset CIFAR10 --model ResNet18 --split_layer 11 > ../../results/20240702-effectiveInfo/Resnet18/effectiveInfo1.10/pool4-layer11-gpu.log 2>&1 &


# VGG5 CIFAR10 
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 0  > ../../results/20240702-effectiveInfo/VGG5/effectiveInfo1.10/0ep/pool4-layer0-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 1  > ../../results/20240702-effectiveInfo/VGG5/effectiveInfo1.10/0ep/pool4-layer1-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2  > ../../results/20240702-effectiveInfo/VGG5/effectiveInfo1.10/0ep/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 3  > ../../results/20240702-effectiveInfo/VGG5/effectiveInfo1.10/0ep/pool4-layer3-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 4  > ../../results/20240702-effectiveInfo/VGG5/effectiveInfo1.10/0ep/pool4-layer4-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 5 --no_dense > ../../results/20240702-effectiveInfo/VGG5/effectiveInfo1.10/0ep/pool4-layer5-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 6 --no_dense > ../../results/20240702-effectiveInfo/VGG5/effectiveInfo1.10/0ep/pool4-layer6-gpu.log 2>&1 &


# VGG5 MNIST
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 0  > ../../results/20240702-effectiveInfo/VGG5_MNIST/effectiveInfo1.10/pool4-layer0-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 1  > ../../results/20240702-effectiveInfo/VGG5_MNIST/effectiveInfo1.10/pool4-layer1-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2  > ../../results/20240702-effectiveInfo/VGG5_MNIST/effectiveInfo1.10/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 3  > ../../results/20240702-effectiveInfo/VGG5_MNIST/effectiveInfo1.10/pool4-layer3-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 4  > ../../results/20240702-effectiveInfo/VGG5_MNIST/effectiveInfo1.10/pool4-layer4-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 5 --no_dense > ../../results/20240702-effectiveInfo/VGG5_MNIST/effectiveInfo1.10/pool4-layer5-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 6 --no_dense > ../../results/20240702-effectiveInfo/VGG5_MNIST/effectiveInfo1.10/pool4-layer6-gpu.log 2>&1 &


# Purchase100
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset purchase --split_layer 3  > ../../results/20240702-effectiveInfo/Purchase/effectiveInfo1.10/effectInfo1.10-layer3-gpu.log 2>&1 &


# Iris
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset Iris --split_layer 3  > ../../results/20240702-effectiveInfo/Purchase/effectiveInfo1.10/effectInfo1.10-layer3-gpu.log 2>&1 &



# VGG9 CIFAR10 [1,4,7,9,10,11,12,13]
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 1  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer1-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 2  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 3  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer3-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer4-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 5  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer5-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 6  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer6-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 7  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer7-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 9  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer9-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 10  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer10-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 11  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer11-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 12  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer12-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 13  > ../../results/20240702-effectiveInfo/VGG9/effectiveInfo1.10/pool4-layer13-gpu.log 2>&1 &


# VGG9 MNIST
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 1  > ../../results/20240702-effectiveInfo/VGG9_MNIST/effectiveInfo1.10/pool4-layer1-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 2  > ../../results/20240702-effectiveInfo/VGG9_MNIST/effectiveInfo1.10/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 3  > ../../results/20240702-effectiveInfo/VGG9_MNIST/effectiveInfo1.10/pool4-layer3-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4  > ../../results/20240702-effectiveInfo/VGG9_MNIST/effectiveInfo1.10/pool4-layer4-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 5  > ../../results/20240702-effectiveInfo/VGG9_MNIST/effectiveInfo1.10/pool4-layer5-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 6  > ../../results/20240702-effectiveInfo/VGG9_MNIST/effectiveInfo1.10/pool4-layer6-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 7  > ../../results/20240702-effectiveInfo/VGG9_MNIST/effectiveInfo1.10/pool4-layer7-gpu.log 2>&1 &


# ResNet18 CIFAR100
# nohup python -u effectInfo1.10.py  --device cuda:0 --dataset CIFAR100 --model ResNet18 --split_layer 2 > ../../results/20240702-effectiveInfo/Resnet18_CIFAR100/effectiveInfo1.10/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:0 --dataset CIFAR100 --model ResNet18 --split_layer 3 > ../../results/20240702-effectiveInfo/Resnet18_CIFAR100/effectiveInfo1.10/pool4-layer3-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:0 --dataset CIFAR100 --model ResNet18 --split_layer 5 > ../../results/20240702-effectiveInfo/Resnet18_CIFAR100/effectiveInfo1.10/pool4-layer5-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:0 --dataset CIFAR100 --model ResNet18 --split_layer 7 > ../../results/20240702-effectiveInfo/Resnet18_CIFAR100/effectiveInfo1.10/pool4-layer7-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:0 --dataset CIFAR100 --model ResNet18 --split_layer 9 > ../../results/20240702-effectiveInfo/Resnet18_CIFAR100/effectiveInfo1.10/pool4-layer9-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:0 --dataset CIFAR100 --model ResNet18 --split_layer 11 > ../../results/20240702-effectiveInfo/Resnet18_CIFAR100/effectiveInfo1.10/pool4-layer11-gpu.log 2>&1 &


# Different width ResNet18 CIFAR10
# nohup python -u effectInfo1.10.py  --device cuda:1 --dataset CIFAR10 --model ResNet18 --split_layer 7 > ../../results/20240702-effectiveInfo/Resnet18/Resnet18_20ep_org/effectiveInfo1.10/pool4-layer7-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:1 --dataset CIFAR10 --model ResNet18 --split_layer 7 > ../../results/20240702-effectiveInfo/Resnet18/Resnet18_20ep_narrow/effectiveInfo1.10/pool4-layer7-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:0 --dataset CIFAR10 --model ResNet18 --split_layer 7 > ../../results/20240702-effectiveInfo/Resnet18/Resnet18_20ep_wide/effectiveInfo1.10/pool4-layer7-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:0 --dataset CIFAR10 --model ResNet18 --split_layer 7 > ../../results/20240702-effectiveInfo/Resnet18/Resnet18_20ep_2narrow/effectiveInfo1.10/pool4-layer7-gpu.log 2>&1 &


# Different deepth ResNet18 CIFAR10
# nohup python -u effectInfo1.10.py  --device cuda:1 --dataset CIFAR10 --model ResNet18 --split_layer 7 > ../../results/20240702-effectiveInfo/Resnet18/Resnet18_20ep_org/effectiveInfo1.10/pool4-layer7-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py  --device cuda:0 --dataset CIFAR10 --model ResNet34 --split_layer 10 > ../../results/20240702-effectiveInfo/Resnet34/effectiveInfo1.10/pool4-layer10-gpu.log 2>&1 &


# different epochs
# vgg5 cifar10
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 0 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 1 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/1ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 2 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/2ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 3 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/3ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 4 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/4ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 5 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/5ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 6 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/6ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 7 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/7ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 8 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/8ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 9 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/9ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 10 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/10ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 11 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/11ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 12 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/12ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 13 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/13ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 14 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/14ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 15 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/15ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 16 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/16ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 17 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/17ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 18 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/18ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 19 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/19ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG5 --split_layer 2 --ep 20 > ../../results/20240702-effectiveInfo/VGG5/VGG5_0ep/effectiveInfo1.10/20ep-pool4-layer2-gpu.log 2>&1 &


# different epochs
# vgg5 MNIST
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 0 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 1 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/1ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 2 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/2ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 3 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/3ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 4 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/4ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 5 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/5ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 6 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/6ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 7 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/7ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 8 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/8ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 9 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/9ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG5 --split_layer 2 --ep 10 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/10ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 11 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/11ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 12 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/12ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 13 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/13ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 14 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/14ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 15 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/15ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 16 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/16ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 17 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/17ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 18 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/18ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 19 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/19ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG5 --split_layer 2 --ep 20 > ../../results/20240702-effectiveInfo/VGG5_MNIST/VGG5_0ep/effectiveInfo1.10/20ep-pool4-layer2-gpu.log 2>&1 &



# different epochs
# vgg9 MNIST
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 0 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 1 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/1ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 2 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/2ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 3 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/3ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 4 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/4ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 5 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/5ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 6 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/6ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 7 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/7ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 8 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/8ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 9 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/9ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset MNIST --model VGG9 --split_layer 4 --ep 10 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/10ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 11 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/11ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 12 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/12ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 13 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/13ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 14 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/14ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 15 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/15ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 16 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/16ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 17 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/17ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 18 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/18ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 19 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/19ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset MNIST --model VGG9 --split_layer 4 --ep 20 > ../../results/20240702-effectiveInfo/VGG9_MNIST/VGG9_0ep/effectiveInfo1.10/20ep-pool4-layer2-gpu.log 2>&1 &


# different epochs
# vgg9 CIFAR10
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 0 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 1 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/1ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 2 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/2ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 3 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/3ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 4 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/4ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 5 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/5ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 6 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/6ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 7 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/7ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 8 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/8ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 9 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/9ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:1 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 10 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/10ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 11 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/11ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 12 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/12ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 13 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/13ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 14 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/14ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 15 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/15ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 16 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/16ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 17 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/17ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 18 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/18ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 19 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/19ep-pool4-layer2-gpu.log 2>&1 &
# nohup python -u effectInfo1.10.py --device cuda:0 --dataset CIFAR10 --model VGG9 --split_layer 4 --ep 20 > ../../results/20240702-effectiveInfo/VGG9/VGG9_0ep/effectiveInfo1.10/20ep-pool4-layer2-gpu.log 2>&1 &

