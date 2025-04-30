DATASETS=(
    "./data/Deep_Blending/drjohnson"
    # "./data/Deep_Blending/playroom"
    # "./data/Tanks_Temples/Train"
    # "./data/Tanks_Temples/Truck"
    # "./data/Mip-NeRF360/bicycle"
    # "./data/Mip-NeRF360/bonsai"
    # "./data/Mip-NeRF360/counter"
    # "./data/Mip-NeRF360/flowers"
    # "./data/Mip-NeRF360/garden"
    # "./data/Mip-NeRF360/kitchen"
    # "./data/Mip-NeRF360/room"
    # "./data/Mip-NeRF360/stump"
    # "./data/Mip-NeRF360/treehill"
)

for data in "${DATASETS[@]}"; do
    echo "========== Processing dataset: ${data} =========="
    
    # 训练阶段
    echo ">>> Running training..."
    python ./train.py \
        -s "${data}" \
        -m "${data}/output" \
        --eval

    # 渲染阶段
    echo ">>> Running rendering..."
    python ./render.py \
        -m "${data}/output"

    # 指标计算
    echo ">>> Running metrics..."
    python ./metrics.py \
        -m "${data}/output"

    echo "========== Finished dataset: ${data} =========="
    echo
done