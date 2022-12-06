Cuda GPU Advanced Libraries, final project.

Coursera hardware:  Tesla V100, nvidia architecture sm_70

I've (tried) built and run the cuda atari port.  This project utilizes pytorch built on top of cuda libraries, and trains several AI models to play classic Atari games from the 1980s.  

The model I've focused on is the a2c, which stands for Actor Critic model.  This is a Reinforcement Learning algorithm, reference: https://greydanus.github.io/files/mastering-atari-actor.pdf

Various obstacles were encountered during build process, documented in build\_attempt.out.
Successful build was accomplished: build\_success.out

Current runtime error:
cd examples
python3 a2c/a2c_main.py
File "/home/coder/.local/lib/python3.8/site-packages/torchcule/atari/rom.py", line 11, in <module>
    from torchcule_atari import AtariRom
ImportError: /home/coder/.local/lib/python3.8/site-packages/torchcule_atari.cpython-38-x86_64-linux-gnu.so: undefined symbol: \_ZN8AtariEnv16frame_state_sizeEv

That has to do with seeing the games played with the trained model.

