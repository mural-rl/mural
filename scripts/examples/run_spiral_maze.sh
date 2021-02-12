softlearning run_example_local examples.spiral_maze \
        --exp-name=spiral-maze `# This is the name your experiment will be saved under ~/ray_results` \
        --algorithm=VICE `# Algorithm of choice (ex: SAC, VICE, etc.)` \
        --num-samples=1 `# Number of seeds PER choice of hyperparameters (will be multiplied by # of param combinations if you tune over a bunch)` \
        --trial-gpus=1 `# Number of GPUs that will be utilized PER seed` \
        --trial-cpus=1 `# Number of CPUs that will be utilized PER seed (doesn't really affect much)` \
        --universe=gym `# Environment universe (usually gym)` \
        --domain=Point2D  `# Environment domain, your environment name should be something like <Domain><Task> concatenated together` \
        --task=Maze-v0  `# Training environment task` \
        --task-evaluation=Maze-v0  `# Evaluation environment task` \
        --video-save-frequency=50 `# Evaluation video save frequency (every _ iterations)` \
        --checkpoint-frequency=20 `# Checkpoint frequency (every _ iterations)` \
        --save-training-video-frequency=0 `# Training video save frequency (every _ rollouts); 0 = disabled` \
        --checkpoint-replay-pool=True `# Whether or not to save the replay pool on checkpointing` \
        --vision=False `# Running from state vs. vision` \
        --n-epochs=1000 `# Num of epochs to run for` \
        --n-goal-examples=150  `# Number of goal examples to collect for VICE` \
        --preprocessor-type="None" `# Usually used for running from pixels (what type of preprocessor do you want to use, ConvnetPreprocessor, VAEPreprocessor, etc.)` \
