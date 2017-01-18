import numpy as np

wav_header_dtype = np.dtype([
    ('chunk_id', (bytes, 4)),
    ('chunk_size', '<u4'),
    ('format', 'S4'),
    ('fmt_id', "S4"),
    ('fmt_size', "<u4"),
    ('audio_fmt', '<u2'),
    ('num_channels', '<u2'),
    ('sample_rate', '<u4'),
    ('byte_rate', '<u4'),
    ('block_align', '<u2'),
    ('bits_per_sample', '<u2'),
    ('data_id', ('S1', (2, 2))),
    ('data_size', 'u4'),
    ])
