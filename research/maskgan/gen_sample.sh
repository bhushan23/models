python generate_samples.py \
               --data_dir='/home/bsonawane/models/data/ptb/' \
               --data_set=ptb \
               --batch_size=256 \
               --sequence_length=20 \
               --base_directory = './imdbsamples/' \
               --hparams="gen_rnn_size=650,dis_rnn_size=650,gen_num_layers=2,dis_num_layers=2,gen_learning_rate=0.000038877,gen_learning_rate_decay=1.0,gen_full_learning_rate_steps=2000000,gen_vd_keep_prob=0.33971,rl_discount_rate=0.89072,dis_learning_rate=5e-4,baseline_decay=0.99,dis_train_iterations=2,dis_pretrain_learning_rate=0.005,critic_learning_rate=5.1761e-7,dis_vd_keep_prob=0.71940" \
               --generator_model=seq2seq_vd \
               --discriminator_model=seq2seq_vd \
               --is_present_rate=0.0 \
               --maskgan_ckpt='train_2_gan' \
               --seq2seq_share_embedding=True \
               --dis_share_embedding=True \
               --attention_option=luong \
               --mask_strategy=contiguous \
               --baseline_method=critic \
               --number_epochs=4
#               --hparams="gen_rnn_size=650,dis_rnn_size=650,gen_num_layers=2,gen_vd_keep_prob=0.33971" \

