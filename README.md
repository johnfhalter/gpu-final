Cuda GPU Advanced Libraries, final project.

Coursera hardware:  Tesla V100, nvidia architecture sm_70

I've built and (attempted to) run the cuda atari port.  This project utilizes pytorch built on top of cuda libraries, and trains several AI models to play classic Atari games from the 1980s.  
Reference: https://research.nvidia.com/sites/default/files/pubs/2019-07\_GPU-Accelerated-Atari-Emulation/CuLE.pdf

The model I've focused on is the a2c, which stands for Actor Critic model.  This is a Reinforcement Learning algorithm. 
Reference: https://greydanus.github.io/files/mastering-atari-actor.pdf

Various obstacles were encountered during build process, documented in data/build\_attempt.out.
Successful build was accomplished: data/build\_success.out

Current runtime error:
cd examples
python3 a2c/a2c_main.py
File "/home/coder/.local/lib/python3.8/site-packages/torchcule/atari/rom.py", line 11, in <module>
    from torchcule_atari import AtariRom
ImportError: /home/coder/.local/lib/python3.8/site-packages/torchcule_atari.cpython-38-x86_64-linux-gnu.so: undefined symbol: \_ZN8AtariEnv16frame_state_sizeEv

That has to do with display issues, as the rom files contain the read-only-memory for each game.

I learned a lot from this project and class.  All the library versions that need to be ensured, permissions required for installs.  The Reinforcement Learning algorithms are fascinating, and it is quite interesting to see them applied to these classic video games on GPU architecture with CUDA.

One thing I noticed in seeing a trained model play SpaceInvaders, is that the AI (not surprisingly) has near-perfect reaction time, and near-perfect aim.  The model(s) can do quite well, better than humans, after sufficient training. As a human playing these games, and not having perfect timing or aim, it's quite common to shoot the aliens in columns on one side of the group, so that there is a lower probability of the armada reaching a side of the screen, which causes them to drop down 1 level, closer to annihilating the player.  The AI model(s) that were trained never learned this strategy, as it would require higher level concepts that are unavailable in the pixel-only inputs.
