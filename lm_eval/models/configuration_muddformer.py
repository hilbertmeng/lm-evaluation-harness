from transformers.configuration_utils import PretrainedConfig
from transformers.utils import logging
from typing import Optional,Tuple,List


def find_multiple(n: int, k: int) -> int:
    if n % k == 0:
        return n
    return n + k - (n % k)

class MUDDFormerConfig(PretrainedConfig):
    model_type = "muddformer"

    '''
    MUDDFormerConfig is a config class for MUDDFormer, which is adpated from https://github.com/pytorch-labs/gpt-fast/blob/main/model.py#L21
    '''
    def __init__(
        self,
        block_size: int = 2048,
        vocab_size: int = 32000,
        n_layer: int = 32,
        n_head: int = 32,
        dim: int = 2560,
        intermediate_size: int = None,
        n_local_heads: int = -1,
        head_dim: int = 64,
        rope_base: float = 10000,
        norm_eps: float = 1e-5,
        use_gradient_checkpointing: bool = False,
        is_training: bool = False,
        q_chunk_size: int = 128,
        use_qk_norm: bool = False ,
        window_size: Optional[int] = 256,
        window_type: Optional[str] = None,
        pad_token_id: Optional[int]= None,
        bos_token_id: int =1,
        eos_token_id: int =2,
        tie_word_embeddings: bool =False,
        use_layer_cache: bool = True,
        stack_hidden: bool = False,
        dense: bool = True,
        dynamic_dense: bool = True,
        sepln: bool = True,
        dense_type: str = 'qkvm',
        **kwargs,
    ):
        self.block_size=block_size
        self.vocab_size=vocab_size
        self.n_layer=n_layer
        self.n_head=n_head
        self.dim=dim
        self.intermediate_size=intermediate_size
        self.n_local_heads=n_local_heads
        self.head_dim=head_dim
        self.rope_base=rope_base
        self.norm_eps=norm_eps
        self.use_gradient_checkpointing=use_gradient_checkpointing
        self.is_training=is_training
        self.q_chunk_size=q_chunk_size
        self.use_qk_norm=use_qk_norm
        self.window_size=window_size
        self.window_type=window_type

        self.use_layer_cache= use_layer_cache
        self.stack_hidden= stack_hidden
        self.dense= dense
        self.dynamic_dense= dynamic_dense
        self.sepln= sepln
        self.dense_type=dense_type
        # post init
        if self.n_local_heads == -1:
            self.n_local_heads = self.n_head
        if self.intermediate_size is None:
            hidden_dim = 4 * self.dim
            n_hidden = int(2 * hidden_dim / 3)
            self.intermediate_size = find_multiple(n_hidden, 256)
        self.head_dim = self.dim // self.n_head

        super().__init__(
            pad_token_id=pad_token_id,
            bos_token_id=bos_token_id,
            eos_token_id=eos_token_id,
            tie_word_embeddings=tie_word_embeddings,
            **kwargs,
        )
