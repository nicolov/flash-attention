// Copyright (c) 2024, Jay Shah, Ganesh Bikshandi, Ying Zhang, Vijay Thakkar, Pradeep Ramani, Tri Dao.
// Splitting the different head dimensions to different files to speed up compilation.

#include "flash_fwd_launch_template.h"

template<>
void run_mha_fwd_gqa_<cutlass::half_t, 64, 4>(Flash_fwd_params &params, cudaStream_t stream) {
    run_mha_fwd_hdim64_gqa<cutlass::half_t, 4>(params, stream);
}
