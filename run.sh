cd bin
python3 a2c_main.py --env-name SpaceInvadersNoFrameskip-v4 --normalize --use-cuda-env --num-ales 1200 --num-steps 20 --num-steps-per-update 1 --num-minibatches 20 --t-max 8000000 --evaluation-interval 200000
