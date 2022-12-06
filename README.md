Final project. I've built and run the cuda atari port.

Various obstacles during build process, documented in cule_attempt.out.
Successful build: cule_success.out

Current runtime error:
cd examples
python3 a2c/a2c_main.py
File "/home/coder/.local/lib/python3.8/site-packages/torchcule/atari/rom.py", line 11, in <module>
    from torchcule_atari import AtariRom
ImportError: /home/coder/.local/lib/python3.8/site-packages/torchcule_atari.cpython-38-x86_64-linux-gnu.so: undefined symbol: \_ZN8AtariEnv16frame_state_sizeEv

That has to do with seeing the games played with the trained model.

