- <p align="center">
  <h1 align="center">Gradient-Direction-Aware Density Control for 3D Gaussian Splatting (ICLR 2026)</h1>
    <p align="center">
        <a href="https://github.com/zzcqz">Zheng Zhou</a>
      ·
      <a >Yu-Jie Xiong</a>
      ·
      <a href="https://github.com/Jia-Chen-Zhang">Jia-Chen Zhang</a>
      ·
      <a >Chun-Ming Xia</a>
      ·
      <a >Xihe Qiu</a>
      ·
      <a >Hongjian Zhan</a>
    </p>
    <h3 align="center"> <a href="https://arxiv.org/abs/2508.09239">arXiv</a> | <a href="https://zzcqz.github.io/GDAGS.github.io/">Project Page</a> | <a href="https://github.com/zzcqz/GDAGS">Code</a> </h3>
    <div align="center"></div>
  
  </p>

## Updates
[2026-01-26] GDAGS has been accepted to ICLR 2026!
## Installation

```
cd submodules/diff-gaussian-rasterization
pip install -e .
cd submodules/fused-ssim
pip install -e .
cd submodules/simple-knn
pip install -e .
```

## Dataset

### Mip-NeRF 360 Dataset

Please download the Mip-NeRF 360 dataset processed by colmap from [Mip-NeRF 360](https://jonbarron.info/mipnerf360/), and after unzipping "Dataset Pt. 1" and "Dataset Pt. 2", combine the scenes. Finally, the current directory should contain the following folders:

```
GDAGS
|---data
    |---Mip-NeRF360
        |---bicycle
        |   |---images
        |   |   |---<image 0>
        |   |   |---<image 1>
        |   |   |---...
        |   |---images_2
        |   |---images_4
        |   |---images_8
        |   |---sparse
        |       |---0
        |           |---cameras.bin
        |           |---images.bin
        |           |---points3D.bin
        |---bonsai
        |---...
```

### Tanks and Temples Dataset

Tanks and Temples is divided into three parts, comprising a total of 21 scenes: Intermediate ('Family', 'Francis', 'Horse', 'Lighthouse', 'M60', 'Panther', 'Playground', 'Train'), Advanced ('Auditorium', 'Ballroom', 'Courtroom', 'Museum', 'Palace', 'Temple'), and Training Data ('Barn', 'Caterpillar', 'Church', 'Courthouse', 'Ignatius', 'Meetingroom', 'Truck').

Please download the "image set" of 'Train' and 'Truck' scenes from the Tanks and Temples dataset from [Tanks and Temples](https://www.tanksandtemples.org/download/).
```
GDAGS
|---data
    |---Tanks_Temples
        |---Train
        |   |---images
        |   |   |---<image 0>
        |   |   |---<image 1>
        |   |   |---...
        |   |---sparse
        |       |---0
        |           |---cameras.bin
        |           |---images.bin
        |           |---points3D.bin
        |---Truck
        |---...
```
### Deep Blending Dataset
```
GDAGS
|---data
    |---Deep_Blending
        |---drjohnson
        |   |---images
        |   |   |---<image 0>
        |   |   |---<image 1>
        |   |   |---...
        |   |---sparse
        |       |---0
        |           |---cameras.bin
        |           |---images.bin
        |           |---points3D.bin
        |---playroom
        |---...
```
### Your Own Dataset

Our method requires the same data format as 3DGS. For your own data, you can use the processing method found in the ["Processing your own Scenes"](https://github.com/graphdeco-inria/gaussian-splatting?tab=readme-ov-file#processing-your-own-scenes) section of the original 3DGS code.

## Training and Evaluation

We have written a script that can run the training and testing all scenes. The launch instructions are as follows:

```
bash ./run.sh
```

For training and testing individual scenes, our commands are identical to those in the original 3DGS code. For details, please refer to [Running](https://github.com/graphdeco-inria/gaussian-splatting?tab=readme-ov-file#running) and [Evaluation](https://github.com/graphdeco-inria/gaussian-splatting?tab=readme-ov-file#evaluation).

## Viewer

Since the rendering process and point cloud storage format of our method are identical to those of the original 3DGS, our method can use the same viewer as the original 3DGS. For specific usage tutorials, please refer to [Interactive Viewers](https://github.com/graphdeco-inria/gaussian-splatting?tab=readme-ov-file#interactive-viewers).

## Acknowledgements

This project is built upon [3DGS](https://github.com/graphdeco-inria/gaussian-splatting). Please follow the license of 3DGS. We thank all the authors for their great work and repos. 

## Citation
If you find this repo helpful, please cite our paper.
```
@article{zhou2025gradient,
  title={Gradient-Direction-Aware Density Control for 3D Gaussian Splatting},
  author={Zhou, Zheng and Xiong, Yu-Jie and Xia, Chun-Ming and Zhang, Jia-Chen and Zhan, Hong-Jian},
  journal={arXiv preprint arXiv:2508.09239},
  year={2025}
}
```
