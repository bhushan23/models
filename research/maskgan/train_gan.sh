python train_mask_gan.py \
               --data_dir='/home/bsonawane/models/data/ptb/' \
               --batch_size=128 \
               --sequence_length=20 \
               --base_directory='./train_2_gan/' \
               --maskgan_ckpt='./train_gan/' \
               --mask_strategy=contiguous \
               --hparams="gen_rnn_size=650,dis_rnn_size=650,gen_num_layers=2,dis_num_layers=2,gen_learning_rate=0.000038877,gen_learning_rate_decay=1.0,gen_full_learning_rate_steps=2000000,gen_vd_keep_prob=0.33971,rl_discount_rate=0.89072,dis_learning_rate=5e-4,baseline_decay=0.99,dis_train_iterations=2,dis_pretrain_learning_rate=0.005,critic_learning_rate=5.1761e-7,dis_vd_keep_prob=0.71940" \
               --mode='TRAIN' \
               --max_steps=100000 \
               --generator_model='seq2seq_vd' \
               --discriminator_model='seq2seq_vd' \
               --is_present_rate=0.5 \
               --summaries_every=250 \
               --print_every=250 \
               --max_num_to_print=3 \
               --gen_training_strategy='reinforce' \
               --seq2seq_share_embedding=true \
               --baseline_method=critic \
               --attention_option=luong
               # --maskgan_ckpt='./train_2_gan' \

